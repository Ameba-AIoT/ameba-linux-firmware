/*
 *******************************************************************************
 * Copyright(c) 2021, Realtek Semiconductor Corporation. All rights reserved.
 *******************************************************************************
 */

#include "osif.h"
#include "hci/hci_if_rtk.h"
#include "hci/hci_process.h"
#include "hci/hci_transport.h"
#include "hci_uart.h"
#include "hci_platform.h"
#include "bt_debug.h"
#include "dlist.h"

#define H4_HDR_LEN          (1)

#define SECURE_CONTEXT_SIZE (128)

#if defined(CONFIG_AYNSC_HCI_INTF) && CONFIG_AYNSC_HCI_INTF
#define HCI_IF_TASK_SIZE    (2*1024)
#define HCI_IF_TASK_PRIO    (5)

#define FLAG_BUF_FROM_STACK (1<<0)
#define FLAG_HCI_TASK_EXIT (1<<1)

struct tx_packet_t {
	struct list_head list;
	uint8_t *buf;
	uint32_t len;
	uint8_t flag;
};
#endif

static struct {
	uint8_t status;
	HCI_IF_CALLBACK cb;
#if defined(CONFIG_AYNSC_HCI_INTF) && CONFIG_AYNSC_HCI_INTF
	bool task_running;
	uint32_t task_msg_num;
	struct list_head tx_list;
	void *tx_ind_sem;
	void *tx_list_mtx;
	void *task_hdl;
#endif
} hci_if_rtk = {
	.status = 0,
	.cb = 0,
#if defined(CONFIG_AYNSC_HCI_INTF) && CONFIG_AYNSC_HCI_INTF
	.task_running = false,
	.task_msg_num = 0,
	.tx_list = {NULL, NULL},
	.tx_ind_sem = 0,
	.tx_list_mtx = 0,
	.task_hdl = 0,
#endif
};

static uint8_t _rx_offset(uint8_t type)
{
	uint8_t offset = H4_HDR_LEN;

	if (type == H4_ACL || type == H4_ISO) {
		offset += HCI_H4_RX_ACL_PKT_BUF_OFFSET;
	} else if (type == H4_SCO) {
		offset += HCI_H4_RX_SCO_PKT_BUF_OFFSET;
	}

	return offset;
}

static bool rtk_stack_get_buf(hci_rx_t *info, uint32_t timeout)
{
	(void)timeout;
	uint8_t *buf = NULL;
	uint8_t offset = _rx_offset(info->type);

	buf = (uint8_t *)osif_mem_aligned_alloc(RAM_TYPE_DATA_ON, info->len + offset, 4);
	memset(buf, 0, info->len + offset);

	info->data = buf + offset;
	info->arg = buf;
	return true;
}

static void rtk_stack_free_buf(hci_rx_t *info)
{
	hci_if_confirm((uint8_t *)info->arg);
}

static uint8_t rtk_stack_recv(hci_rx_t *info)
{
	uint8_t offset = _rx_offset(info->type);
	uint8_t *buf = (uint8_t *)info->arg;

	buf[0] = info->type;

	if (hci_if_rtk.cb) {
		if (!hci_if_rtk.cb(HCI_IF_EVT_DATA_IND, true, buf, info->len + offset)) {
			hci_if_confirm(buf);    /* when indicate fail, free memory here. */
		}
	}

	return HCI_SUCCESS;
}

static void _hci_if_open_indicate(void)
{
	if (hci_is_mp_mode()) {    //If in MP mode, do not start upper stack
		BT_LOGA("Not start upper stack for MP test\r\n");
	} else {                                         //If in normal mode, start upper stack
		if (hci_if_rtk.cb) {
			hci_if_rtk.cb(HCI_IF_EVT_OPENED, true, NULL, 0);
		}
		BT_LOGA("Start upper stack\r\n");
	}
}

static bool _hci_if_open(void)
{
	/* BT Board Init */
	if (HCI_FAIL == hci_platform_init()) {
		BT_LOGE("hci_platform_init fail!\r\n");
		return false;
	}

	/* HCI Transport */
	if (HCI_FAIL == hci_transport_open()) {
		BT_LOGE("hci_transport_open fail!\r\n");
		return false;
	}

	/* HCI Transport Bridge to StandAlone */
	hci_transport_set_buf_ops(hci_sa_recv_get_buf, NULL);
	hci_transport_set_recv(hci_sa_recv);

	/* HCI UART Bridge to Transport */
	hci_uart_set_rx_ind(hci_transport_recv_ind);

	if (HCI_FAIL == hci_process()) {
		BT_LOGE("hci_process fail!\r\n");
		return false;
	}

	/* HCI Transport Bridge to RTK Stack
	 * (Stop and Start rx_ind for this Moment)
	 */
	hci_uart_set_rx_ind(NULL);
	hci_transport_set_buf_ops(rtk_stack_get_buf, rtk_stack_free_buf);
	hci_transport_set_recv(rtk_stack_recv);
	hci_uart_set_rx_ind(hci_transport_recv_ind);

	hci_if_rtk.status = 1;
	_hci_if_open_indicate();
	rtk_bt_post_enable();

	return true;
}

static void _hci_if_send(uint8_t *buf, uint32_t len, bool from_stack)
{
	uint16_t offset = H4_HDR_LEN;
	if (H4_ACL == buf[0] || H4_ISO == buf[0]) {
		offset += HCI_H4_TX_ACL_PKT_BUF_OFFSET;
	}

	hci_transport_send(buf[0], buf + offset, len - offset, 1);
	if (from_stack) {
		if (hci_if_rtk.cb) {
			hci_if_rtk.cb(HCI_IF_EVT_DATA_XMIT, true, buf, len);
		}
	}
}

#if defined(CONFIG_AYNSC_HCI_INTF) && CONFIG_AYNSC_HCI_INTF
static bool _tx_list_add(uint8_t *buf, uint32_t len, uint8_t flag)
{
	bool ret = false;
	uint32_t flags;
	struct tx_packet_t *pkt = NULL;

	flags = osif_lock();
	hci_if_rtk.task_msg_num++;
	osif_unlock(flags);

	if (!hci_if_rtk.task_running && flag != FLAG_HCI_TASK_EXIT) {
		goto end;
	}

	if (flag) {
		pkt = osif_mem_alloc(RAM_TYPE_DATA_ON, sizeof(struct tx_packet_t));
	} else {
		pkt = osif_mem_alloc(RAM_TYPE_DATA_ON, sizeof(struct tx_packet_t) + len);
	}

	if (!pkt) {
		if (flag & FLAG_BUF_FROM_STACK) {
			if (hci_if_rtk.cb) {
				hci_if_rtk.cb(HCI_IF_EVT_DATA_XMIT, false, buf, len);
			}
		}
		BT_LOGE("pkt alloc fail!\r\n");
		goto end;
	}

	pkt->buf = buf;
	pkt->len = len;
	pkt->flag = flag;

	if (!flag) { /* internal hci tx */
		pkt->buf = (uint8_t *)pkt + sizeof(struct tx_packet_t);
		memcpy(pkt->buf, buf, len);
	}

	osif_mutex_take(hci_if_rtk.tx_list_mtx, BT_TIMEOUT_FOREVER);
	list_add_tail(&pkt->list, &hci_if_rtk.tx_list);
	osif_mutex_give(hci_if_rtk.tx_list_mtx);

	osif_sem_give(hci_if_rtk.tx_ind_sem);
	ret = true;

end:
	flags = osif_lock();
	hci_if_rtk.task_msg_num--;
	osif_unlock(flags);
	return ret;
}

static void hci_if_task(void *context)
{
	(void)context;

#if defined(CONFIG_BUILD_NONSECURE) && CONFIG_BUILD_NONSECURE
	osif_create_secure_context(SECURE_CONTEXT_SIZE);
#endif

	if (!_hci_if_open()) {
		goto out;
	}

	while (true) {
		osif_sem_take(hci_if_rtk.tx_ind_sem, BT_TIMEOUT_FOREVER);
		while (true) {
			struct tx_packet_t *pkt = NULL;

			osif_mutex_take(hci_if_rtk.tx_list_mtx, BT_TIMEOUT_FOREVER);
			if (!list_empty(&hci_if_rtk.tx_list)) {
				pkt = (struct tx_packet_t *)hci_if_rtk.tx_list.next;
				list_del(&pkt->list);
			}
			osif_mutex_give(hci_if_rtk.tx_list_mtx);

			if (!pkt) {
				break;
			}

			if (pkt->flag & FLAG_HCI_TASK_EXIT) {
				osif_mem_free(pkt);
				goto out;
			}

			_hci_if_send(pkt->buf, pkt->len, pkt->flag & FLAG_BUF_FROM_STACK);
			osif_mem_free(pkt);
		}
	}

out:
	/* Platform Deinit First */
	hci_platform_deinit();

	/* HCI Transport Close */
	hci_transport_close();

	if (hci_if_rtk.cb) {
		hci_if_rtk.cb(HCI_IF_EVT_CLOSED, true, NULL, 0);
	}
	hci_if_rtk.status = 0;
	osif_task_delete(NULL);
}
#endif

bool hci_if_open(HCI_IF_CALLBACK callback)
{
	hci_if_rtk.cb = callback;

	if (hci_if_rtk.status) {
		BT_LOGD("Hci Driver Already Open!\r\n");
		_hci_if_open_indicate();
		return true;
	}

#if defined(CONFIG_AYNSC_HCI_INTF) && CONFIG_AYNSC_HCI_INTF
	INIT_LIST_HEAD(&hci_if_rtk.tx_list);
	osif_sem_create(&hci_if_rtk.tx_ind_sem, 0, 1);
	osif_mutex_create(&hci_if_rtk.tx_list_mtx);
	osif_task_create(&hci_if_rtk.task_hdl, "hci_if_task", hci_if_task,
					 0, HCI_IF_TASK_SIZE, HCI_IF_TASK_PRIO);
	hci_if_rtk.task_running = true;
	return true;
#else
	return _hci_if_open();
#endif
}

bool hci_if_close(void)
{
	if (!hci_if_rtk.status) {
		return true;
	}

#if defined(CONFIG_AYNSC_HCI_INTF) && CONFIG_AYNSC_HCI_INTF
	hci_if_rtk.task_running = false;

	/* Waiting hci_if_write_raw() on other tasks interrupted by deinit task to complete */
	while (hci_if_rtk.task_msg_num) {
		osif_delay(5);
	}

	_tx_list_add(NULL, 0, FLAG_HCI_TASK_EXIT);

	while (hci_if_rtk.status) {
		osif_delay(5);
	}

	osif_sem_delete(hci_if_rtk.tx_ind_sem);
	osif_mutex_delete(hci_if_rtk.tx_list_mtx);
#else

	if (HCI_FAIL == hci_platform_deinit() || /* Platform Deinit First */
		HCI_FAIL == hci_transport_close()) { /* HCI Transport Close */
		return false;
	}

	if (hci_if_rtk.cb) {
		hci_if_rtk.cb(HCI_IF_EVT_CLOSED, true, NULL, 0);
	}
	hci_if_rtk.status = 0;
#endif
	return true;
}

void hci_if_del_task(void)
{
	hci_if_close();
}

void hci_if_deinit(void)
{
	memset(&hci_if_rtk, 0, sizeof(hci_if_rtk));

	if (HCI_FAIL == hci_uart_free() ||       /* UART Free */
		HCI_FAIL == hci_transport_free()) {  /* HCI Transport Free */
		BT_LOGE("hci_if_deinit fail!\r\n");
	}
}

bool hci_if_write_raw(uint8_t *buf, uint32_t len, bool from_stack)
{
#if defined(CONFIG_AYNSC_HCI_INTF) && CONFIG_AYNSC_HCI_INTF
	return _tx_list_add(buf, len, from_stack ? FLAG_BUF_FROM_STACK : 0);
#else
	_hci_if_send(buf, len, from_stack);
	return true;
#endif
}

bool hci_if_write_internal(uint8_t *buf, uint32_t len)
{
	// Internal tx use, do not indicate to stack when tx done
	return hci_if_write_raw(buf, len, 0);
}

bool hci_if_write(uint8_t *buf, uint32_t len)
{
	// Stack tx use, indicate to stack when tx done
	return hci_if_write_raw(buf, len, 1);
}

bool hci_if_confirm(uint8_t *buf)
{
	osif_mem_aligned_free(buf);
	return true;
}

void hci_if_wait_patch_download(void)
{
	while (!hci_if_rtk.status) {
		osif_delay(1);
	}
	BT_LOGA("Patch download End!\r\n");
}


/*
 * EAP peer: Method registration
 * Copyright (c) 2004-2007, Jouni Malinen <j@w1.fi>
 *
 * This software may be distributed under the terms of the BSD license.
 * See README for more details.
 */

#ifndef EAP_METHODS_H
#define EAP_METHODS_H
//#if 0
//#include "../api/wifi/wps/wps_eap_defs.h"
#include "eap_common/eap_defs.h"

const struct eap_method *eap_peer_get_eap_method(int vendor, enum EapType method);
const struct eap_method *eap_peer_get_methods(size_t *count);

struct eap_method *eap_peer_method_alloc(int version, int vendor,
		enum EapType method, const char *name);
void eap_peer_method_free(struct eap_method *method);
int eap_peer_method_register(struct eap_method *method);


//#if defined(IEEE8021X_EAPOL)

enum EapType eap_peer_get_type(const char *name, int *vendor);
const char *eap_get_name(int vendor, enum EapType type);
size_t eap_get_names(char *buf, size_t buflen);
char **eap_get_names_as_string_array(size_t *num);
void eap_peer_unregister_methods(void);

//#else /* IEEE8021X_EAPOL */
#if 0
static inline enum EapType eap_peer_get_type(const char *name, int *vendor)
{
	*vendor = EAP_VENDOR_IETF;
	return EAP_TYPE_NONE;
}

static inline const char *eap_get_name(int vendor, enum EapType type)
{
	return NULL;
}

static inline size_t eap_get_names(char *buf, size_t buflen)
{
	return 0;
}

static inline int eap_peer_register_methods(void)
{
	return 0;
}

static inline void eap_peer_unregister_methods(void)
{
}

static inline char **eap_get_names_as_string_array(size_t *num)
{
	return NULL;
}
#endif
//#endif /* IEEE8021X_EAPOL */


#ifdef CONFIG_DYNAMIC_EAP_METHODS

int eap_peer_method_load(const char *so);
int eap_peer_method_unload(struct eap_method *method);

#else /* CONFIG_DYNAMIC_EAP_METHODS */

static inline int eap_peer_method_load(const char *so)
{

	/* To avoid gcc warnings */
	(void) so;

	return 0;
}

static inline int eap_peer_method_unload(struct eap_method *method)
{

	/* To avoid gcc warnings */
	(void) method;

	return 0;
}

#endif /* CONFIG_DYNAMIC_EAP_METHODS */

/* EAP peer method registration calls for statically linked in methods */
int eap_peer_md5_register(void);
int eap_peer_tls_register(void);
int eap_peer_unauth_tls_register(void);
int eap_peer_mschapv2_register(void);
int eap_peer_peap_register(void);
int eap_peer_ttls_register(void);
int eap_peer_gtc_register(void);
int eap_peer_otp_register(void);
int eap_peer_sim_register(void);
int eap_peer_leap_register(void);
int eap_peer_psk_register(void);
int eap_peer_aka_register(void);
int eap_peer_aka_prime_register(void);
int eap_peer_fast_register(void);
int eap_peer_pax_register(void);
int eap_peer_sake_register(void);
int eap_peer_gpsk_register(void);
int eap_peer_wsc_register(void);
int eap_peer_ikev2_register(void);
int eap_peer_vendor_test_register(void);
int eap_peer_tnc_register(void);
int eap_peer_pwd_register(void);
//#endif
#endif /* EAP_METHODS_H */

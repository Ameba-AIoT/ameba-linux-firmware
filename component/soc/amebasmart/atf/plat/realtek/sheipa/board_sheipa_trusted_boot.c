/*
 * Copyright (c) 2015-2019, Realtek Semiconductor Corp. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <assert.h>
#include <stdint.h>
#include <string.h>

#include <plat/common/platform.h>
#include <tools_share/tbbr_oid.h>

/* Weak definition may be overridden in specific platform */
#pragma weak plat_match_rotpk
#pragma weak plat_get_nv_ctr
#pragma weak plat_set_nv_ctr

/* SHA256 algorithm */
#define SHA256_BYTES			32

/* ROTPK locations */
#define ARM_ROTPK_REGS_ID		1
#define ARM_ROTPK_DEVEL_RSA_ID		2

#if !ARM_ROTPK_LOCATION_ID
  #error "ARM_ROTPK_LOCATION_ID not defined"
#endif

/* Please change ROTPK if you want to use TBB */
static const unsigned char rotpk_hash_hdr[] =		\
		"\x30\x31\x30\x0D\x06\x09\x60\x86\x48"	\
		"\x01\x65\x03\x04\x02\x01\x05\x00\x04\x20";
static const unsigned int rotpk_hash_hdr_len = sizeof(rotpk_hash_hdr) - 1;
static unsigned char rotpk_hash_der[sizeof(rotpk_hash_hdr) - 1 + SHA256_BYTES];

#if (ARM_ROTPK_LOCATION_ID == ARM_ROTPK_DEVEL_RSA_ID)
static const unsigned char arm_devel_rotpk_hash[] =	\
		"\xB0\xF3\x82\x09\x12\x97\xD8\x3A"	\
		"\x37\x7A\x72\x47\x1B\xEC\x32\x73"	\
		"\xE9\x92\x32\xE2\x49\x59\xF6\x5E"	\
		"\x8B\x4A\x4A\x46\xD8\x22\x9A\xDA";
#endif

/*
 * Return the ROTPK hash in the following ASN.1 structure in DER format:
 *
 * AlgorithmIdentifier  ::=  SEQUENCE  {
 *     algorithm         OBJECT IDENTIFIER,
 *     parameters        ANY DEFINED BY algorithm OPTIONAL
 * }
 *
 * DigestInfo ::= SEQUENCE {
 *     digestAlgorithm   AlgorithmIdentifier,
 *     digest            OCTET STRING
 * }
 */
int plat_get_rotpk_info(void *cookie, void **key_ptr, unsigned int *key_len,
			unsigned int *flags)
{
	uint8_t *dst;

	assert(key_ptr != NULL);
	assert(key_len != NULL);
	assert(flags != NULL);

	/* Copy the DER header */
	memcpy(rotpk_hash_der, rotpk_hash_hdr, rotpk_hash_hdr_len);
	dst = (uint8_t *)&rotpk_hash_der[rotpk_hash_hdr_len];

#if (ARM_ROTPK_LOCATION_ID == ARM_ROTPK_DEVEL_RSA_ID)
	memcpy(dst, arm_devel_rotpk_hash, SHA256_BYTES);
#elif (ARM_ROTPK_LOCATION_ID == ARM_ROTPK_REGS_ID)
	uint32_t *src, tmp;
	unsigned int words, i;

	/*
	 * Append the hash from Trusted Root-Key Storage registers. The hash has
	 * not been written linearly into the registers, so we have to do a bit
	 * of byte swapping:
	 *
	 *     0x00    0x04    0x08    0x0C    0x10    0x14    0x18    0x1C
	 * +---------------------------------------------------------------+
	 * | Reg0  | Reg1  | Reg2  | Reg3  | Reg4  | Reg5  | Reg6  | Reg7  |
	 * +---------------------------------------------------------------+
	 *  | ...                    ... |   | ...                   ...  |
	 *  |       +--------------------+   |                    +-------+
	 *  |       |                        |                    |
	 *  +----------------------------+   +----------------------------+
	 *          |                    |                        |       |
	 *  +-------+                    |   +--------------------+       |
	 *  |                            |   |                            |
	 *  v                            v   v                            v
	 * +---------------------------------------------------------------+
	 * |                               |                               |
	 * +---------------------------------------------------------------+
	 *  0                           15  16                           31
	 *
	 * Additionally, we have to access the registers in 32-bit words
	 */
	words = SHA256_BYTES >> 3;

	/* Swap bytes 0-15 (first four registers) */
	src = (uint32_t *)TZ_PUB_KEY_HASH_BASE;
	for (i = 0 ; i < words ; i++) {
		tmp = src[words - 1 - i];
		/* Words are read in little endian */
		*dst++ = (uint8_t)((tmp >> 24) & 0xFF);
		*dst++ = (uint8_t)((tmp >> 16) & 0xFF);
		*dst++ = (uint8_t)((tmp >> 8) & 0xFF);
		*dst++ = (uint8_t)(tmp & 0xFF);
	}

	/* Swap bytes 16-31 (last four registers) */
	src = (uint32_t *)(TZ_PUB_KEY_HASH_BASE + SHA256_BYTES / 2);
	for (i = 0 ; i < words ; i++) {
		tmp = src[words - 1 - i];
		*dst++ = (uint8_t)((tmp >> 24) & 0xFF);
		*dst++ = (uint8_t)((tmp >> 16) & 0xFF);
		*dst++ = (uint8_t)((tmp >> 8) & 0xFF);
		*dst++ = (uint8_t)(tmp & 0xFF);
	}
#endif /* (ARM_ROTPK_LOCATION_ID == ARM_ROTPK_DEVEL_RSA_ID) */

	*key_ptr = (void *)rotpk_hash_der;
	*key_len = (unsigned int)sizeof(rotpk_hash_der);
	*flags = ROTPK_IS_HASH;
	return 0;
}

/*
 * Return the non-volatile counter value stored in the platform. The cookie
 * will contain the OID of the counter in the certificate.
 *
 * Return: 0 = success, Otherwise = error
 */
int plat_get_nv_ctr(void *cookie, unsigned int *nv_ctr)
{
#if TRUSTED_NVCTR_BASE
	const char *oid;
	uint32_t *nv_ctr_addr;

	assert(cookie != NULL);
	assert(nv_ctr != NULL);

	oid = (const char *)cookie;
	if (strcmp(oid, TRUSTED_FW_NVCOUNTER_OID) == 0) {
		nv_ctr_addr = (uint32_t *)TFW_NVCTR_BASE;
	} else if (strcmp(oid, NON_TRUSTED_FW_NVCOUNTER_OID) == 0) {
		nv_ctr_addr = (uint32_t *)NTFW_CTR_BASE;
	} else {
		return 1;
	}

	*nv_ctr = (unsigned int)(*nv_ctr_addr);
#else
	/* Let platform non-volatile counter equal to certificatei non-volatile
	 * counter if you don't implement non-volatile counter in your HW.
	 */
	const char *oid;

	assert(cookie != NULL);
	assert(nv_ctr != NULL);

	oid = (const char *)cookie;
	if (strcmp(oid, TRUSTED_FW_NVCOUNTER_OID) == 0) {
		*nv_ctr = 31;
	} else if (strcmp(oid, NON_TRUSTED_FW_NVCOUNTER_OID) == 0) {
		*nv_ctr = 223;
	} else {
		return 1;
	}
#endif
	return 0;
}

/*
 * Store a new non-volatile counter value. By default on ARM development
 * platforms, the non-volatile counters are RO and cannot be modified. We expect
 * the values in the certificates to always match the RO values so that this
 * function is never called.
 *
 * Return: 0 = success, Otherwise = error
 */
int plat_set_nv_ctr(void *cookie, unsigned int nv_ctr)
{
	return 1;
}

int plat_get_mbedtls_heap(void **heap_addr, size_t *heap_size)
{
	return get_mbedtls_heap_helper(heap_addr, heap_size);
}

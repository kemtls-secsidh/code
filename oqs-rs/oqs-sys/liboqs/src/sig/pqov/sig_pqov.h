// SPDX-License-Identifier: MIT

#ifndef OQS_SIG_PQOV_H
#define OQS_SIG_PQOV_H

#include <oqs/oqs.h>

#ifdef OQS_ENABLE_SIG_pqov_16_160_64_classic
#define OQS_SIG_pqov_16_160_64_classic_length_public_key 412160
#define OQS_SIG_pqov_16_160_64_classic_length_secret_key 348720
#define OQS_SIG_pqov_16_160_64_classic_length_signature 96

OQS_SIG *OQS_SIG_pqov_16_160_64_classic_new(void);
OQS_API OQS_STATUS OQS_SIG_pqov_16_160_64_classic_keypair(uint8_t *public_key, uint8_t *secret_key);
OQS_API OQS_STATUS OQS_SIG_pqov_16_160_64_classic_sign(uint8_t *signature, size_t *signature_len, const uint8_t *message, size_t message_len, const uint8_t *secret_key);
OQS_API OQS_STATUS OQS_SIG_pqov_16_160_64_classic_verify(const uint8_t *message, size_t message_len, const uint8_t *signature, size_t signature_len, const uint8_t *public_key);
#endif

#ifdef OQS_ENABLE_SIG_pqov_256_112_44_classic
#define OQS_SIG_pqov_256_112_44_classic_length_public_key 278432
#define OQS_SIG_pqov_256_112_44_classic_length_secret_key 237912
#define OQS_SIG_pqov_256_112_44_classic_length_signature 128

OQS_SIG *OQS_SIG_pqov_256_112_44_classic_new(void);
OQS_API OQS_STATUS OQS_SIG_pqov_256_112_44_classic_keypair(uint8_t *public_key, uint8_t *secret_key);
OQS_API OQS_STATUS OQS_SIG_pqov_256_112_44_classic_sign(uint8_t *signature, size_t *signature_len, const uint8_t *message, size_t message_len, const uint8_t *secret_key);
OQS_API OQS_STATUS OQS_SIG_pqov_256_112_44_classic_verify(const uint8_t *message, size_t message_len, const uint8_t *signature, size_t signature_len, const uint8_t *public_key);
#endif

#ifdef OQS_ENABLE_SIG_pqov_256_184_72_classic
#define OQS_SIG_pqov_256_184_72_classic_length_public_key 1225440
#define OQS_SIG_pqov_256_184_72_classic_length_secret_key 1044336
#define OQS_SIG_pqov_256_184_72_classic_length_signature 200

OQS_SIG *OQS_SIG_pqov_256_184_72_classic_new(void);
OQS_API OQS_STATUS OQS_SIG_pqov_256_184_72_classic_keypair(uint8_t *public_key, uint8_t *secret_key);
OQS_API OQS_STATUS OQS_SIG_pqov_256_184_72_classic_sign(uint8_t *signature, size_t *signature_len, const uint8_t *message, size_t message_len, const uint8_t *secret_key);
OQS_API OQS_STATUS OQS_SIG_pqov_256_184_72_classic_verify(const uint8_t *message, size_t message_len, const uint8_t *signature, size_t signature_len, const uint8_t *public_key);
#endif

#ifdef OQS_ENABLE_SIG_pqov_256_244_96_classic
#define OQS_SIG_pqov_256_244_96_classic_length_public_key 2869440
#define OQS_SIG_pqov_256_244_96_classic_length_secret_key 2436720
#define OQS_SIG_pqov_256_244_96_classic_length_signature 260

OQS_SIG *OQS_SIG_pqov_256_244_96_classic_new(void);
OQS_API OQS_STATUS OQS_SIG_pqov_256_244_96_classic_keypair(uint8_t *public_key, uint8_t *secret_key);
OQS_API OQS_STATUS OQS_SIG_pqov_256_244_96_classic_sign(uint8_t *signature, size_t *signature_len, const uint8_t *message, size_t message_len, const uint8_t *secret_key);
OQS_API OQS_STATUS OQS_SIG_pqov_256_244_96_classic_verify(const uint8_t *message, size_t message_len, const uint8_t *signature, size_t signature_len, const uint8_t *public_key);
#endif

#endif

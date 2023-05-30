#ifndef PQCLEAN_PQOV25618472CLASSIC_HACKED_API_H
#define PQCLEAN_PQOV25618472CLASSIC_HACKED_API_H


#include <stdint.h>
#include <stddef.h>

#define PQCLEAN_PQOV25618472CLASSIC_HACKED_CRYPTO_ALGNAME "OV(256,184,72)-classic"
#define PQCLEAN_PQOV25618472CLASSIC_HACKED_CRYPTO_PUBLICKEYBYTES 1225440
#define PQCLEAN_PQOV25618472CLASSIC_HACKED_CRYPTO_SECRETKEYBYTES 1044336
#define PQCLEAN_PQOV25618472CLASSIC_HACKED_CRYPTO_BYTES 200


int PQCLEAN_PQOV25618472CLASSIC_HACKED_crypto_sign_keypair(unsigned char *pk, unsigned char *sk);
int PQCLEAN_PQOV25618472CLASSIC_HACKED_crypto_sign(unsigned char *sm, size_t *smlen, const unsigned char *m, size_t mlen, const unsigned char *sk);
int PQCLEAN_PQOV25618472CLASSIC_HACKED_crypto_sign_open(unsigned char *m, size_t *mlen, const unsigned char *sm, size_t smlen, const unsigned char *pk);
int PQCLEAN_PQOV25618472CLASSIC_HACKED_crypto_sign_signature(uint8_t *sig, size_t *siglen, const uint8_t *m, size_t mlen, const uint8_t *sk);
int PQCLEAN_PQOV25618472CLASSIC_HACKED_crypto_sign_verify(const uint8_t *sig, size_t siglen, const uint8_t *m, size_t mlen, const uint8_t *pk);

#endif

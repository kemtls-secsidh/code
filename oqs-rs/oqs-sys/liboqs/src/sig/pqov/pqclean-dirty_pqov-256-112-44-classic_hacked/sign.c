///  @file  sign.c
///  @brief the implementations for functions in api.h
///
///
#include <stdlib.h>
#include <string.h>

#include "params.h"
#include "ov_keypair.h"
#include "ov.h"

#include "api.h"

#include "utils_prng.h"

#if defined(_UTILS_SUPERCOP_)
#include "PQCLEAN_PQOV25611244CLASSIC_HACKED_crypto_sign.h"
#endif


int
PQCLEAN_PQOV25611244CLASSIC_HACKED_crypto_sign_keypair(unsigned char *pk, unsigned char *sk)
{
    unsigned char sk_seed[LEN_SKSEED];
    unsigned char pk_seed[LEN_PKSEED];
    randombytes( sk_seed , LEN_SKSEED );
    randombytes( pk_seed , LEN_PKSEED );

#if defined _OV_CLASSIC
    int r = PQCLEAN_PQOV25611244CLASSIC_HACKED_generate_keypair( (pk_t*) pk , (sk_t*) sk , pk_seed , sk_seed );
#elif defined _OV_PKC
    int r = PQCLEAN_PQOV25611244CLASSIC_HACKED_generate_keypair_pkc( (cpk_t*) pk , (sk_t*) sk , pk_seed , sk_seed );
#elif defined _OV_PKC_SKC
    int r = PQCLEAN_PQOV25611244CLASSIC_HACKED_generate_keypair_pkc_skc( (cpk_t*) pk , (csk_t*) sk , pk_seed , sk_seed );
#else
error here
#endif
    return r;
}





int
#if defined(PQM4)
PQCLEAN_PQOV25611244CLASSIC_HACKED_crypto_sign(unsigned char *sm, size_t *smlen, const unsigned char *m, size_t mlen, const unsigned char *sk)
#else
PQCLEAN_PQOV25611244CLASSIC_HACKED_crypto_sign(unsigned char *sm, size_t *smlen, const unsigned char *m, size_t mlen, const unsigned char *sk)
#endif
{
	int r = -1;
#if defined _OV_CLASSIC

	r = PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_sign( sm + mlen , (const sk_t*)sk , m , mlen );

#elif defined _OV_PKC

	r = PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_sign( sm + mlen , (const sk_t*)sk , m , mlen );

#elif defined _OV_PKC_SKC

	r = ov_expand_and_sign( sm + mlen , (const csk_t*)sk , m , mlen );

#else
error here
#endif
	memcpy( sm , m , mlen );
	smlen[0] = mlen + OV_SIGNATUREBYTES;

	return r;
}


int PQCLEAN_PQOV25611244CLASSIC_HACKED_crypto_sign_signature(
        uint8_t *sig, size_t *siglen,
        const uint8_t *m, size_t mlen,
        const uint8_t *sk) {
    int r = -1;

#if defined _OV_CLASSIC

	r = PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_sign(sig , (const sk_t*)sk , m , mlen );

#elif defined _OV_PKC

	r = PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_sign(sig, (const sk_t*)sk , m , mlen );

#elif defined _OV_PKC_SKC

	r = ov_expand_and_sign(sig, (const csk_t*)sk , m , mlen );

#else
error here
#endif

    *siglen = OV_SIGNATUREBYTES;

    return r;
}


int PQCLEAN_PQOV25611244CLASSIC_HACKED_crypto_sign_verify(
        const uint8_t *sig, size_t siglen,
        const uint8_t *m, size_t mlen,
        const uint8_t *pk) {

    if (siglen < OV_SIGNATUREBYTES) {
        return -1;
    }

    int r = -1;

#if defined _OV_CLASSIC

	r = PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_verify( m ,  mlen, sig, (const pk_t *)pk );

#elif defined _OV_PKC

	r = ov_expand_and_verify( m , mlen , sig, (const cpk_t *)pk );

#elif defined _OV_PKC_SKC

	r = ov_expand_and_verify( m , mlen , sig, (const cpk_t *)pk );

#else
error here
#endif

    return r;


}



int
#if defined(PQM4)
PQCLEAN_PQOV25611244CLASSIC_HACKED_crypto_sign_open(unsigned char *m, size_t *mlen,const unsigned char *sm, size_t smlen,const unsigned char *pk)
#else
PQCLEAN_PQOV25611244CLASSIC_HACKED_crypto_sign_open(unsigned char *m, size_t *mlen,const unsigned char *sm, size_t smlen,const unsigned char *pk)
#endif
{
	if( OV_SIGNATUREBYTES > smlen ) return -1;
	unsigned long mesg_len = smlen-OV_SIGNATUREBYTES;
	int r = -1;

#if defined _OV_CLASSIC

	r = PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_verify( sm , mesg_len , sm + mesg_len , (const pk_t *)pk );

#elif defined _OV_PKC

	r = ov_expand_and_verify( sm , mesg_len , sm + mesg_len , (const cpk_t *)pk );

#elif defined _OV_PKC_SKC

	r = ov_expand_and_verify( sm , mesg_len , sm + mesg_len , (const cpk_t *)pk );

#else
error here
#endif

	memcpy( m , sm , mesg_len );
	mlen[0] = mesg_len;

	return r;
}


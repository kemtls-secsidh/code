/// @file ov_keypair.c
/// @brief implementations of functions in ov_keypair.h
///
#include "ov_keypair.h"
#include "ov.h"
#include "ov_keypair_computation.h"

#include "blas_comm.h"
#include "blas.h"
#include "ov_blas.h"

#include <stdlib.h>
#include <stdint.h>
#include <string.h>


#include "utils_prng.h"
#include "utils_hash.h"
#include "utils_malloc.h"

#if 96 < _V
#define _MALLOC_
#endif



///////////////////  Classic ov  //////////////////////////////////
void PQCLEAN_PQOV25611244CLASSIC_HACKED_generate_secretkey( sk_t* sk, const unsigned char *pk_seed, const unsigned char *sk_seed )
{
    PQCLEAN_PQOV25611244CLASSIC_HACKED_expand_sk( sk, pk_seed , sk_seed );
}


int PQCLEAN_PQOV25611244CLASSIC_HACKED_sk_to_pk( pk_t * rpk , const sk_t* sk )
{
    prng_publicinputs_t prng1;
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_set_publicinputs(&prng1 , sk->pk_seed );

    // P1
    memcpy( rpk->pk , sk->P1 , sizeof(sk->P1) );
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_skip_publicinputs(&prng1, sizeof(sk->P1));

    // P2
    unsigned char * rpk_P2 = rpk->pk + sizeof(sk->P1);
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_gen_publicinputs(&prng1, rpk_P2 , sizeof(sk->L) );

    // P3
    unsigned char * rpk_P3 = rpk_P2 + sizeof(sk->L);
    PQCLEAN_PQOV25611244CLASSIC_HACKED_calculate_P3( rpk_P3 , sk->P1 , rpk_P2 , sk->t1 );

    return 0;
}


int PQCLEAN_PQOV25611244CLASSIC_HACKED_generate_keypair( pk_t * rpk, sk_t* sk, const unsigned char *pk_seed, const unsigned char *sk_seed )
{
    memcpy( sk->sk_seed , sk_seed , LEN_SKSEED );
    memcpy( sk->pk_seed , pk_seed , LEN_PKSEED );

    // prng for sk
    hash_ctx hctx;
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_init(&hctx);
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_update(&hctx, sk_seed , LEN_SKSEED );
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_final_digest( sk->t1 , sizeof(sk->t1) , &hctx );

    // prng for pk
    prng_publicinputs_t prng1;
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_set_publicinputs(&prng1 , pk_seed );
    // P1 and P2
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_gen_publicinputs(&prng1, rpk->pk , sizeof(sk->P1)+sizeof(sk->L) );
    memcpy( sk->P1 , rpk->pk , sizeof(sk->P1) );

    // L and P3
    unsigned char * rpk_P2 = rpk->pk + sizeof(sk->P1);
    unsigned char * rpk_P3 = rpk->pk + sizeof(sk->P1) + sizeof(sk->L);
    PQCLEAN_PQOV25611244CLASSIC_HACKED_calculate_F2_P3( sk->L , rpk_P3 , sk->P1 , rpk_P2 , sk->t1 );
    return 0;
}


int PQCLEAN_PQOV25611244CLASSIC_HACKED_expand_pk( pk_t * rpk, const cpk_t * cpk )
{
    prng_publicinputs_t prng0;
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_set_publicinputs(&prng0 , cpk->pk_seed);
    // P1 and P2
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_gen_publicinputs(&prng0, rpk->pk , _PK_P1_BYTE + _PK_P2_BYTE );
    // P3
    memcpy( rpk->pk + _PK_P1_BYTE + _PK_P2_BYTE, cpk->P3 , sizeof(cpk->P3) );

    return 0;
}

int PQCLEAN_PQOV25611244CLASSIC_HACKED_expand_pk_predicate( pk_t * rpk , const cpk_t * cpk , const unsigned char *predicate)
{
    prng_publicinputs_t prng0;
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_set_publicinputs(&prng0 , cpk->pk_seed);

    // P1
    uint8_t * p1p2 = rpk->pk;
    for(unsigned i=0;i<_V;i++) {
        unsigned long len_i = _O_BYTE*(_V-i);
        if( 0 == predicate[i] ) { PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_skip_publicinputs(&prng0 , len_i ); }
        else                    { PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_gen_publicinputs(&prng0 , p1p2 , len_i ); }
        p1p2 += len_i;
    }
    // P2
    for(unsigned i=0;i<_V;i++) {
        unsigned long len_i = _O_BYTE*_O;
        if( 0 == predicate[i] ) { PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_skip_publicinputs(&prng0 , len_i ); }
        else                    { PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_gen_publicinputs(&prng0 , p1p2 , len_i ); }
        p1p2 += len_i;
    }
    // P3
    memcpy( rpk->pk + _PK_P1_BYTE + _PK_P2_BYTE, cpk->P3 , sizeof(cpk->P3) );
    return 0;
}


int PQCLEAN_PQOV25611244CLASSIC_HACKED_expand_sk( sk_t* sk, const unsigned char *pk_seed , const unsigned char *sk_seed )
{
    memcpy( sk->sk_seed , sk_seed , LEN_SKSEED );
    memcpy( sk->pk_seed , pk_seed , LEN_PKSEED );

    // prng for sk
    hash_ctx hctx;
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_init(&hctx);
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_update(&hctx, sk_seed , LEN_SKSEED );
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_final_digest( sk->t1 , sizeof(sk->t1) , &hctx );

    // prng for pk
    prng_publicinputs_t prng1;
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_set_publicinputs(&prng1 , pk_seed );
    // P1
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_gen_publicinputs(&prng1, sk->P1 , sizeof(sk->P1) );
    // P2
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_gen_publicinputs(&prng1, sk->L , sizeof(sk->L) );

    // calcuate the parts of sk according to pk.
#if defined(_BLAS_M4F_)
    PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_pkc_calculate_F_from_Q( sk );
#else
    PQCLEAN_PQOV25611244CLASSIC_HACKED_calculate_F2( sk->L , sk->P1 , sk->L , sk->t1 );
#endif
    return 0;
}



////////////////////////////////////////////////////////////////////////////////////




int PQCLEAN_PQOV25611244CLASSIC_HACKED_generate_keypair_pkc( cpk_t * pk, sk_t* sk, const unsigned char *pk_seed , const unsigned char *sk_seed )
{
    memcpy( pk->pk_seed , pk_seed , LEN_PKSEED );
    memcpy( sk->sk_seed , sk_seed , LEN_SKSEED );
    memcpy( sk->pk_seed , pk_seed , LEN_PKSEED );

    // prng for sk
    hash_ctx hctx;
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_init(&hctx);
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_update(&hctx, sk_seed , LEN_SKSEED );
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_final_digest( sk->t1 , sizeof(sk->t1) , &hctx );

    // prng for pk
    prng_publicinputs_t prng1;
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_set_publicinputs( &prng1 , pk_seed );
    // P1
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_gen_publicinputs(&prng1, sk->P1 , sizeof(sk->P1) );
    // P2
    PQCLEAN_PQOV25611244CLASSIC_HACKED_prng_gen_publicinputs(&prng1, sk->L , sizeof(sk->L) );

#if defined(_BLAS_M4F_)
    PQCLEAN_PQOV25611244CLASSIC_HACKED_calculate_P3( pk->P3 , sk->P1 , sk->L , sk->t1 );
    PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_pkc_calculate_F_from_Q( sk );     // calcuate the rest parts of secret key from Qs and S,T
#else
    PQCLEAN_PQOV25611244CLASSIC_HACKED_calculate_F2_P3( sk->L , pk->P3 , sk->P1 , sk->L , sk->t1 );
#endif
    return 0;
}



int PQCLEAN_PQOV25611244CLASSIC_HACKED_generate_keypair_pkc_skc( cpk_t * pk, csk_t* rsk, const unsigned char *pk_seed , const unsigned char *sk_seed )
{
    memcpy( rsk->pk_seed , pk_seed , LEN_PKSEED );
    memcpy( rsk->sk_seed , sk_seed , LEN_SKSEED );

#if defined(_MALLOC_)
    sk_t * sk = malloc(sizeof(sk_t));
    if(NULL==sk) return -1;
#else
    sk_t _sk;
    sk_t * sk = &_sk;
#endif
    int r = PQCLEAN_PQOV25611244CLASSIC_HACKED_generate_keypair_pkc( pk , sk , pk_seed , sk_seed );

#if defined(_MALLOC_)
    free(sk);
#endif
    return r;
}



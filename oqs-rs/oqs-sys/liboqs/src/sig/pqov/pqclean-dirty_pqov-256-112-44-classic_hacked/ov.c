/// @file ov.c
/// @brief The standard implementations for functions in ov.h
///
#include "params.h"

#include "ov_keypair.h"

#include "ov.h"

#include "blas.h"

#include "ov_blas.h"

#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#include "utils_prng.h"
#include "utils_hash.h"
#include "utils_malloc.h"

#define _BACK_SUBSTITUTION_

#define MAX_ATTEMPT_VINEGAR  256

/////////////////////////////

int PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_sign( uint8_t * signature , const sk_t * sk , const uint8_t * message , unsigned mlen )
{
    // allocate temporary storage.
    uint8_t mat_l1[_O*_O_BYTE];
    uint8_t salt[_SALT_BYTE];
    randombytes( salt , _SALT_BYTE );
    uint8_t vinegar[_V_BYTE];
    uint8_t r_l1_F1[_O_BYTE] = {0};
    uint8_t y[_PUB_N_BYTE];
    uint8_t x_o1[_O_BYTE];

#if defined(_MUL_WITH_MULTAB_)
    uint8_t multabs[(_V)*32] __attribute__((aligned(32)));
#endif

#if defined(_LDU_DECOMPOSE_)&& (!defined(_BACK_SUBSTITUTION_))
    uint8_t submat_A[(_O/2)*(_O_BYTE/2)];
    uint8_t submat_B[(_O/2)*(_O_BYTE/2)];
    uint8_t submat_C[(_O/2)*(_O_BYTE/2)];
    uint8_t submat_D[(_O/2)*(_O_BYTE/2)];
#endif

    hash_ctx h_m_salt_secret;
    hash_ctx h_vinegar_copy;
    // The computation:  H(M||salt)  -->   y  --C-map-->   x   --T-->   w
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_init  (&h_m_salt_secret);
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_update(&h_m_salt_secret, message, mlen);
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_update(&h_m_salt_secret, salt, _SALT_BYTE);
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_ctx_copy(&h_vinegar_copy, &h_m_salt_secret);
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_final_digest( y , _PUB_M_BYTE , &h_m_salt_secret);  // H(M||salt)

    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_update(&h_vinegar_copy, sk->sk_seed, LEN_SKSEED );   // H(M||salt||sk_seed ...

    uint8_t ctr = 0;  // counter for generating vinegar
    unsigned n_attempt = 0;
    unsigned l1_succ = 0;
    while( MAX_ATTEMPT_VINEGAR > n_attempt++  ) {
        hash_ctx h_vinegar;
        PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_ctx_copy(&h_vinegar, &h_vinegar_copy);
        PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_update(&h_vinegar, &ctr, 1 );                  // H(M||salt||sk_seed||ctr ...
        PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_final_digest( vinegar, _V_BYTE , &h_vinegar);  // H(M||salt||sk_seed||ctr)
        ctr++;
#if defined(_BACK_SUBSTITUTION_)

// linear system:
#if defined(_MUL_WITH_MULTAB_)
        gfv_generate_multabs( multabs , vinegar , _V );
// matrix
        gfmat_prod_multab( mat_l1 , sk->L , _O*_O_BYTE , _V , multabs );
// constant
    // Given vinegars, evaluate P1 with the vinegars
        batch_quad_trimat_eval_multab( r_l1_F1, sk->P1, multabs, _V, _O_BYTE );
#else
// matrix
        gfmat_prod( mat_l1 , sk->L , _O*_O_BYTE , _V , vinegar );
// constant
    // Given vinegars, evaluate P1 with the vinegars
        batch_quad_trimat_eval( r_l1_F1, sk->P1, vinegar, _V, _O_BYTE );
#endif
        gf256v_add( r_l1_F1 , y , _O_BYTE );    // substract the contribution from vinegar variables

#if _GFSIZE == 256
        l1_succ = PQCLEAN_PQOV25611244CLASSIC_HACKED_gf256mat_gaussian_elim(mat_l1 , r_l1_F1, _O);
        if( !l1_succ ) continue;
        PQCLEAN_PQOV25611244CLASSIC_HACKED_gf256mat_back_substitute(r_l1_F1, mat_l1, _O);
        memcpy( x_o1 , r_l1_F1 , _O_BYTE );
#elif _GFSIZE == 16
        l1_succ = gf16mat_gaussian_elim(mat_l1 , r_l1_F1, _O);
        if( !l1_succ ) continue;
        gf16mat_back_substitute(r_l1_F1, mat_l1, _O);
        memcpy( x_o1 , r_l1_F1 , _O_BYTE );
#else
error -- _GFSIZE
#endif
        break;
    }
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_final_digest( NULL , 0 , &h_vinegar_copy); // free
    if( MAX_ATTEMPT_VINEGAR <= n_attempt ) return -1;

#else // defined(_BACK_SUBSTITUTION_)

#if defined(_MUL_WITH_MULTAB_)
        gfv_generate_multabs( multabs , vinegar , _V );
        gfmat_prod_multab( mat_l1 , sk->L , _O*_O_BYTE , _V , multabs );
#else
        gfmat_prod( mat_l1 , sk->L , _O*_O_BYTE , _V , vinegar );
#endif

#if defined(_LDU_DECOMPOSE_)
#if _GFSIZE == 256
        l1_succ = PQCLEAN_PQOV25611244CLASSIC_HACKED_gf256mat_LDUinv( submat_B , submat_A , submat_D , submat_C , mat_l1 , _O );  // check if the linear equation solvable
#elif _GFSIZE == 16
        l1_succ = gf16mat_LDUinv( submat_B , submat_A , submat_D , submat_C , mat_l1 , _O );  // check if the linear equation solvable
#else
error -- _GFSIZE
#endif
#else
        l1_succ = gfmat_inv( mat_l1 , mat_l1 , _O );         // check if the linear equation solvable
#endif
	if( l1_succ ) break;
    }
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_final_digest( NULL , 0 , &h_vinegar_copy); // free
    if( MAX_ATTEMPT_VINEGAR <= n_attempt ) return -1;

    // Given vinegars, evaluate P1 with the (secret?) vinegars
#if defined(_MUL_WITH_MULTAB_)
    batch_quad_trimat_eval_multab( r_l1_F1, sk->P1, multabs, _V, _O_BYTE );
#else
    batch_quad_trimat_eval( r_l1_F1, sk->P1, vinegar, _V, _O_BYTE );
#endif
    do {
        // The computation:  H(M||salt)  -->   y  --C-map-->   x   --T-->   w
        // Central Map:
        // calculate x_o1
        gf256v_add( y , r_l1_F1 , _O_BYTE );    // substract the contribution from vinegar variables
#if defined(_LDU_DECOMPOSE_)
#if _GFSIZE == 256
        PQCLEAN_PQOV25611244CLASSIC_HACKED_gf256mat_LDUinv_prod( x_o1 , submat_B , submat_A , submat_D , submat_C , y , _O_BYTE );
#elif _GFSIZE == 16
        gf16mat_LDUinv_prod( x_o1 , submat_B , submat_A , submat_D , submat_C , y , _O_BYTE );
#else
error -- _GFSIZE
#endif
#else
        gfmat_prod( x_o1 , mat_l1, _O_BYTE , _O , y );
#endif
    } while(0);

#endif // defined(_BACK_SUBSTITUTION_)

    //  w = T^-1 * x
    uint8_t * w = signature;   // [_PUB_N_BYTE];
    // identity part of T.
    memcpy( w , vinegar , _V_BYTE );
    memcpy( w + _V_BYTE , x_o1 , _O_BYTE );

    // Computing the t1 part.
    gfmat_prod(y, sk->t1, _V_BYTE , _O , x_o1 );
    gf256v_add(w, y, _V_BYTE );

    // return: signature <- w || salt.
    memcpy( signature + _PUB_N_BYTE , salt , _SALT_BYTE );

    return 0;
}


static
int _ov_verify( const uint8_t * message , unsigned mlen , const uint8_t * salt , const unsigned char * digest_ck )
{
    unsigned char correct[_PUB_M_BYTE];
    hash_ctx hctx;
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_init(&hctx);
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_update(&hctx, message, mlen);
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_update(&hctx, salt, _SALT_BYTE);
    PQCLEAN_PQOV25611244CLASSIC_HACKED_hash_final_digest(correct, _PUB_M_BYTE, &hctx);  // H( message || salt )

    // check consistency.
    unsigned char cc = 0;
    for(unsigned i=0;i<_PUB_M_BYTE;i++) {
        cc |= (digest_ck[i]^correct[i]);
    }
    return (0==cc)? 0: -1;
}


#if !(defined(_OV_PKC) || defined(_OV_PKC_SKC)) || !defined(_SAVE_MEMORY_)
int PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_verify( const uint8_t * message , unsigned mlen , const uint8_t * signature , const pk_t * pk )
{
    unsigned char digest_ck[_PUB_M_BYTE];
    PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_publicmap( digest_ck , pk->pk , signature );

    return _ov_verify( message , mlen , signature+_PUB_N_BYTE , digest_ck );
}
#endif

#if defined(_OV_PKC_SKC)
int ov_expand_and_sign( uint8_t * signature , const csk_t * csk , const uint8_t * message , unsigned mlen )
{
    sk_t _sk;
    sk_t * sk = &_sk;
    PQCLEAN_PQOV25611244CLASSIC_HACKED_expand_sk( sk, csk->pk_seed , csk->sk_seed );   // generating classic secret key.

    int r = PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_sign( signature , sk , message , mlen );
    return r;
}
#endif

#if defined(_OV_PKC) || defined(_OV_PKC_SKC)
int ov_expand_and_verify( const uint8_t * message , unsigned mlen , const uint8_t * signature , const cpk_t * cpk )
{

#ifdef _SAVE_MEMORY_
    unsigned char digest_ck[_PUB_M_BYTE];
    PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_publicmap_pkc( digest_ck , cpk , signature );
    return _ov_verify( message , mlen , signature+_PUB_N_BYTE , digest_ck );
#else
    pk_t _pk;
    pk_t * pk = &_pk;
    #if _GFSIZE == 16  && (defined(_BLAS_NEON_) || defined(_BLAS_M4F_))
        uint8_t xi[_PUB_N];
        for(int i=0;i<_PUB_N;i++) xi[i] = gfv_get_ele( signature , i );
        PQCLEAN_PQOV25611244CLASSIC_HACKED_expand_pk_predicate( pk , cpk , xi );
    #else
        PQCLEAN_PQOV25611244CLASSIC_HACKED_expand_pk( pk , cpk );
    #endif
    return PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_verify( message , mlen , signature , pk );
#endif
}
#endif



/// @file ov_keypair_computation.c
/// @brief Implementations for functions in ov_keypair_computation.h
///

#include "ov_keypair.h"
#include "ov_keypair_computation.h"

#include "blas_comm.h"
#include "blas.h"
#include "ov_blas.h"

#include <stdlib.h>
#include <stdint.h>
#include <string.h>

#include "utils_malloc.h"


////////////////////////////////////////////////////////////////////////////


void PQCLEAN_PQOV25611244CLASSIC_HACKED_calculate_F2( unsigned char * F2, const unsigned char * P1 , const unsigned char * P2 , const unsigned char * sk_t1 )
{
    if( F2 != P2 ) memcpy( F2 , P2 , _PK_P2_BYTE );

    // F_sk.l1_F1s[i] = Q_pk.l1_F1s[i]
    // F_sk.l1_F2s[i] = ( Q_pk.l1_F1s[i] + Q_pk.l1_F1s[i].transpose() ) * T_sk.t1 + Q_pk.l1_F2s[i]

#if defined(_MUL_WITH_MULTAB_)
    unsigned char multabs[(_V)*(_O)*32] __attribute__((aligned(32))); // size of t1
    gfv_generate_multabs( multabs , sk_t1 , (_V)*(_O));
    batch_2trimat_madd_multab( F2 , P1 , multabs , _V, _V_BYTE , _O, _O_BYTE );
#else
    batch_2trimat_madd( F2 , P1 , sk_t1 , _V, _V_BYTE , _O, _O_BYTE );
#endif
}


#if defined(_BLAS_M4F_) &&  (defined(_OV_PKC) || defined(_OV_PKC_SKC))
void PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_pkc_calculate_F_from_Q( sk_t * Fs)
{
    PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_pkc_calculate_F_from_Q_m4f( Fs );
}
#else
void PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_pkc_calculate_F_from_Q( sk_t * Fs)
{
    PQCLEAN_PQOV25611244CLASSIC_HACKED_calculate_F2( Fs->L , Fs->P1 , Fs->L , Fs->t1 );
}
#endif





/////////////////////////////////////////////////////////




void PQCLEAN_PQOV25611244CLASSIC_HACKED_calculate_F2_P3( unsigned char * F2, unsigned char * P3, const unsigned char * P1 , const unsigned char * P2 , const unsigned char * sk_t1 )
{
    //Q_pk.l1_Q2s[i] = (P1* T1 + P2) + F1tr * t1
    //Q_pk.l1_Q5s[i] = UT( T1tr* (F1 * T1 + F2) )

    if(F2!=P2) memcpy( F2 , P2 , _PK_P2_BYTE );
#if defined(_MUL_WITH_MULTAB_)
    unsigned char multabs[(_V)*(_O)*32] __attribute__((aligned(32))); // size of t1
    gfv_generate_multabs( multabs , sk_t1 , (_V)*(_O));

    batch_trimat_madd_multab( F2 , P1 , multabs , _V, _V_BYTE , _O, _O_BYTE );    // F1*T1 + F2
    batch_upper_matTr_x_mat_multab( P3 , multabs , _V, _V_BYTE, _O, F2 , _O, _O_BYTE );  // Q5 = UT . t1_tr*(F1*T1 + F2)
    batch_trimatTr_madd_multab( F2, P1 , multabs , _V, _V_BYTE , _O, _O_BYTE );    // Q2
#else
    batch_trimat_madd( F2 , P1 , sk_t1 , _V, _V_BYTE , _O, _O_BYTE );    // F1*T1 + F2
    batch_upper_matTr_x_mat( P3 , sk_t1 , _V, _V_BYTE, _O, F2, _O, _O_BYTE );  // Q5 = UT . t1_tr*(F1*T1 + F2)
    batch_trimatTr_madd( F2, P1 , sk_t1 , _V, _V_BYTE , _O, _O_BYTE );    // Q2
#endif
}


//////////////////////////////////////////////////////////////////////////////////////////////////





void PQCLEAN_PQOV25611244CLASSIC_HACKED_calculate_P3( unsigned char * P3, const unsigned char * P1 , const unsigned char * P2 , const unsigned char * sk_t1 )
{
//  Q_pk.l1_F5s[i] = UT( T1tr* (F1 * T1 + F2) )

#define _SIZE_BUFFER_F2 (_O_BYTE * _V * _O)
    unsigned char _ALIGN_(32) buffer_F2[_SIZE_BUFFER_F2];

#if defined(_MUL_WITH_MULTAB_)
    unsigned char multabs[(_V)*(_O)*32] __attribute__((aligned(32))); // size of t1
    gfv_generate_multabs( multabs , sk_t1 , (_V)*(_O));

    memcpy( buffer_F2 , P2 , _O_BYTE * _V * _O );
    batch_trimat_madd_multab( buffer_F2 , P1 , multabs , _V, _V_BYTE , _O, _O_BYTE );      // F1*T1 + F2
    batch_upper_matTr_x_mat_multab( P3 , multabs , _V, _V_BYTE, _O, buffer_F2, _O, _O_BYTE );  // UT . T1tr*(F1*T1 + F2) , release buffer_F2

#else
    memcpy( buffer_F2 , P2 , _O_BYTE * _V * _O );
    batch_trimat_madd( buffer_F2 , P1 , sk_t1 , _V, _V_BYTE , _O, _O_BYTE );      // F1*T1 + F2
    batch_upper_matTr_x_mat( P3 , sk_t1 , _V, _V_BYTE, _O, buffer_F2, _O, _O_BYTE );  // UT . T1tr*(F1*T1 + F2) , release buffer_F2
#endif
}



void PQCLEAN_PQOV25611244CLASSIC_HACKED_ov_pkc_calculate_Q_from_F( cpk_t * Qs, const sk_t * Fs , const sk_t * Ts )
{
  PQCLEAN_PQOV25611244CLASSIC_HACKED_calculate_P3( Qs->P3 , Fs->P1 , Fs->L , Ts->t1 );
}















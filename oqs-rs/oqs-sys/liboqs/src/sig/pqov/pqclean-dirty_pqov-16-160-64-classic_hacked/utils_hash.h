/// @file utils_hash.h
/// @brief the interface for adapting hash functions.
///
///
#ifndef _UTILS_HASH2_H_
#define _UTILS_HASH2_H_


#include "config.h"


#if defined(_UTILS_OPENSSL_)

#include <openssl/evp.h>

typedef struct hash_ctx {
EVP_MD_CTX *x;
} hash_ctx;

#elif defined(_UTILS_PQM4_)

#include "fips202.h"

#if defined(_HASH_SHAKE128_)
#define hash_ctx shake128incctx
#else
// default
#define hash_ctx shake256incctx
#endif

#else

#include "fips202.h"

#if defined(_HASH_SHAKE128_)
#define hash_ctx shake128incctx
#else
// default
#define hash_ctx shake256incctx
#endif




#endif



#ifdef  __cplusplus
extern  "C" {
#endif



int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_init( hash_ctx * ctx );

int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_update( hash_ctx * ctx , const unsigned char * mesg , unsigned mlen );

int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_ctx_copy( hash_ctx * nctx , const hash_ctx * octx );  // nctx needs no PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_init()

int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_final_digest( unsigned char *digest , unsigned dlen , hash_ctx * ctx );  // free ctx


#ifdef  __cplusplus
}
#endif



#endif // _UTILS_HASH_H_


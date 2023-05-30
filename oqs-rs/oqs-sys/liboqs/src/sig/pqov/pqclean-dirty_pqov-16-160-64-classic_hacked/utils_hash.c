/// @file utils_hash.c
/// @brief the adapter for hash functions.
///
///

#include "utils_hash.h"


#if defined(_UTILS_OPENSSL_)

#include <openssl/evp.h>


int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_init( hash_ctx * ctx )
{
  ctx->x = EVP_MD_CTX_create();
  if (!ctx->x) return -1;

#if defined(_HASH_SHAKE128_)
  int ok = EVP_DigestInit_ex(ctx->x,EVP_shake128(),NULL);
#else
  int ok = EVP_DigestInit_ex(ctx->x,EVP_shake256(),NULL);
#endif
  return (ok)? 0 : -1;
}

int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_update( hash_ctx * ctx , const unsigned char * mesg , unsigned mlen )
{
  int ok = EVP_DigestUpdate(ctx->x,mesg,mlen);
  return (ok)? 0 : -1;
}

int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_ctx_copy( hash_ctx * nctx , const hash_ctx * octx )
{
  nctx->x = EVP_MD_CTX_create();
  if (!nctx->x) return -1;

  int ok = EVP_MD_CTX_copy(nctx->x, octx->x);
  return (ok)? 0 : -1;
}

int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_final_digest( unsigned char *out , unsigned outlen , hash_ctx * ctx )
{
  int ok = EVP_DigestFinalXOF(ctx->x,out,outlen);
  EVP_MD_CTX_destroy(ctx->x);
  return (ok)? 0 : -1;
}

#elif defined(_UTILS_PQM4_)

int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_init( hash_ctx * ctx )
{
#if defined(_HASH_SHAKE128_)
  shake128_inc_init( ctx );
#else
  shake256_inc_init( ctx );
#endif
  return 0;
}

int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_update( hash_ctx * ctx , const unsigned char * mesg , unsigned mlen )
{
#if defined(_HASH_SHAKE128_)
  shake128_inc_absorb( ctx, mesg, mlen );
#else
  shake256_inc_absorb( ctx, mesg, mlen );
#endif
  return 0;
}

int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_ctx_copy( hash_ctx * nctx , const hash_ctx * octx )
{
#if defined(_HASH_SHAKE128_)
  shake128_inc_ctx_clone(nctx, octx);
#else
  shake256_inc_ctx_clone(nctx, octx);
#endif
  return 0;
}

int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_final_digest( unsigned char *out , unsigned outlen , hash_ctx * ctx )
{
#if defined(_HASH_SHAKE128_)
  shake128_inc_finalize(ctx);
  shake128_inc_squeeze(out, outlen, ctx);
  shake128_inc_ctx_release(ctx);
#else
  shake256_inc_finalize(ctx);
  shake256_inc_squeeze(out, outlen, ctx);
  shake256_inc_ctx_release(ctx);
#endif
  return 0;
}


#else

// default implementation

#include "fips202.h"


int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_init( hash_ctx * ctx )
{
#if defined(_HASH_SHAKE128_)
  shake128_inc_init( ctx );
#else
  shake256_inc_init( ctx );
#endif
  return 0;
}

int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_update( hash_ctx * ctx , const unsigned char * mesg , unsigned mlen )
{
#if defined(_HASH_SHAKE128_)
  shake128_inc_absorb( ctx, mesg, mlen );
#else
  shake256_inc_absorb( ctx, mesg, mlen );
#endif
  return 0;
}

#include "string.h"

int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_ctx_copy( hash_ctx * nctx , const hash_ctx * octx )
{
  memcpy( nctx , octx , sizeof(hash_ctx) );
  return 0;
}

int PQCLEAN_PQOV1616064CLASSIC_HACKED_hash_final_digest( unsigned char *out , unsigned outlen , hash_ctx * ctx )
{
#if defined(_HASH_SHAKE128_)
  shake128_inc_finalize( ctx );
  shake128_inc_squeeze(out, outlen, ctx);
#else
  shake256_inc_finalize( ctx );
  shake256_inc_squeeze(out, outlen, ctx);
#endif

  return 0;
}

#endif


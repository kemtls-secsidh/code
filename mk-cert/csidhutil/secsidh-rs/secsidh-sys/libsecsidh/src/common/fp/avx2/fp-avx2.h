#ifndef _FP_AVX2_H_
#define _FP_AVX2_H_

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <immintrin.h>

#include <assert.h>
#include <inttypes.h>
#include <stddef.h>

#include "../../rng.h" // Random Number Generator
#include "../../primes.h"
#include "../../namespace.h"
#include "../fp-counters.h"

#define RADIX 26

#if defined P2047k221

    #define NUMBER_OF_LIMBS 80
    #define NUMBER_OF_VECTORS 10

#elif defined P4095k256

#elif defined P5119k234

    #define NUMBER_OF_LIMBS 256
    #define NUMBER_OF_VECTORS 32

#elif defined P6143k256

#elif defined P8191k332

#elif defined P9215k384

#endif

typedef int32_t fp[NUMBER_OF_LIMBS] __attribute__((aligned(32)));


#define p COMMON(p)
extern const fp p; // field characteristic
#define fp_1 COMMON(fp_1)
extern const fp fp_1; // 1 in the Montgomery domain
#define fp_0 COMMON(fp_0)
extern const fp fp_0; // 0 in the Montgomery domain
#define fp_2 COMMON(fp_2)
extern const fp fp_2; // 2 in the Montgomery domain

#define redc_alpha COMMON(redc_alpha)
extern const fp redc_alpha;

#define two_to_e_minus_p COMMON(two_to_e_minus_p)
extern const fp two_to_e_minus_p;

#define two_to_e COMMON(two_to_e)
extern const fp two_to_e;


#define p_minus_1_halves COMMON(p_minus_1_halves)
extern const fp p_minus_1_halves; // (p - 1)/2 used for find a random fp element 2 <= u <= (p-1)/2
#define p_minus_3_quarters COMMON(p_minus_3_quarters)
extern const fp p_minus_3_quarters; // (p - 3)/4 used in fp2_issquare()

#define fp_four_sqrt_p COMMON(fp_four_sqrt_p)
extern const fp fp_four_sqrt_p; 


//------------------------------------------

/*
AVX2 STUFF ##########################
*/

#define add_redc COMMON(add_redc)
void add_redc(int32_t * v_c, const fp v_a, const fp v_b);

#define add_avx2 COMMON(add_avx2)
void add_avx2(int32_t * v_c, const fp v_a, const fp v_b);

#define sub_avx2 COMMON(sub_avx2)
void sub_avx2(fp v_c, const fp v_a, const fp v_b);

// #define sub_avx2 COMMON(sub_avx2)
// void sub_avx2(fp v_c, const fp v_a, const fp v_b);

#define add_2x_avx2_32_32 COMMON(add_2x_avx2_32_32)
void add_2x_avx2_32_32(int32_t *c, const int32_t *a, const int32_t *b);

#define add_2x_avx2_32_16 COMMON(add_2x_avx2_32_16)
void add_2x_avx2_32_16(int32_t *c, const int32_t *a, const int32_t *b);

#define add_2x_avx2_32_8 COMMON(add_2x_avx2_32_8)
void add_2x_avx2_32_8(int32_t *c, const int32_t *a, const int32_t *b);

#define add_2x_avx2_32_4 COMMON(add_2x_avx2_32_4)
void add_2x_avx2_32_4(int32_t *c, const int32_t *a, const int32_t *b);

#define add_2x_avx2_32_2 COMMON(add_2x_avx2_32_2)
void add_2x_avx2_32_2(int32_t *c, const int32_t *a, const int32_t *b);

#define add_2x_avx2_32_1 COMMON(add_2x_avx2_32_1)
void add_2x_avx2_32_1(int32_t *c, const int32_t *a, const int32_t *b);

#define interleave COMMON(interleave)
void interleave(int32_t *r, const int32_t *a, const int32_t *b, const int32_t *c, const int32_t *d);

#define mult_interl COMMON(mult_interl)
void mult_interl(int64_t *r, int32_t *a, int32_t *b);

#define carryVertical64_avx2 COMMON(carryVertical64_avx2)
void carryVertical64_avx2(int64_t *r, const int len, const int base);

#define deinterleave COMMON(deinterleave)
void deinterleave(int64_t *r, int32_t *a, int32_t *b, int32_t *c, int32_t *d);

#define carry32_avx2 COMMON(carry32_avx2)
void carry32_avx2(int32_t *r, const int len);

#define sub_avx2_32_2 COMMON(sub_avx2_32_2)
void sub_avx2_32_2(int32_t *v_r, int32_t *v_a, int32_t *v_b);

#define sub_avx2_32_4 COMMON(sub_avx2_32_4)
void sub_avx2_32_4(int32_t *v_r, int32_t *v_a, int32_t *v_b);

#define sub_avx2_32_8 COMMON(sub_avx2_32_8)
void sub_avx2_32_8(int32_t *v_r, int32_t *v_a, int32_t *v_b);

#define sub_avx2_32_16 COMMON(sub_avx2_32_16)
void sub_avx2_32_16(int32_t *v_r, int32_t *v_a, int32_t *v_b);

#define sub_avx2_32_32 COMMON(sub_avx2_32_32)
void sub_avx2_32_32(int32_t *v_r, int32_t *v_a, int32_t *v_b);

#define add_avx2_32_2 COMMON(add_avx2_32_2)
void add_avx2_32_2(int32_t *v_r, int32_t *v_a, int32_t *v_b);

#define add_avx2_32_4 COMMON(add_avx2_32_4)
void add_avx2_32_4(int32_t *v_r, int32_t *v_a, int32_t *v_b);

#define add_avx2_32_8 COMMON(add_avx2_32_8)
void add_avx2_32_8(int32_t *v_r, int32_t *v_a, int32_t *v_b);

#define add_avx2_32_16 COMMON(add_avx2_32_16)
void add_avx2_32_16(int32_t *v_r, int32_t *v_a, int32_t *v_b);

#define add_avx2_32_32 COMMON(add_avx2_32_32)
void add_avx2_32_32(int32_t *v_r, int32_t *v_a, int32_t *v_b);

#define squaring_interl COMMON(squaring_interl)
void squaring_interl(int64_t *v_r, int32_t *v_a, int32_t *v_b);

#define p_times_w COMMON(p_times_w)
void p_times_w(int64_t *dest, const int32_t *p, int64_t w);

#define a_plus_u_i COMMON(a_plus_u_i)
void a_plus_u_i(int32_t *dest, int32_t *ui);

#define OneTimeCarry COMMON(OneTimeCarry)
void OneTimeCarry(int32_t *dest, int64_t *ui);

// #define p_times_w COMMON(p_times_w)
// void p_times_w(uint64_t *dest, const uint64_t *p, uint64_t w);

// #define a_plus_u_i COMMON(a_plus_u_i)
// void a_plus_u_i(uint64_t *dest, uint64_t *ui);


// Radix convertion from given base to 32 bit (where base < 32 bit)
static inline void convBaseto32(uint32_t *r, const uint32_t *a, int rlen, int base)
{
    int i, j, bits_in_word, bits_to_shift;
    uint32_t word;

    i = j = 0;
    bits_in_word = bits_to_shift = 0;
    word = 0;
    while ((i < rlen))
    {
        word |= (a[j] << bits_in_word);
        bits_to_shift = (32 - bits_in_word);
        bits_in_word += base;
        if (bits_in_word >= 32)
        {
            r[i++] = word;
            word = ((bits_to_shift > 0) ? (a[j] >> bits_to_shift) : 0);
            bits_in_word = ((bits_to_shift > 0) ? (base - bits_to_shift) : 0);
        }
        j++;
    }
    if (i < rlen)
        r[i++] = word;
    for (; i < rlen; i++)
        r[i] = 0;
}

static inline void convBaseto64(uint64_t *r, const uint32_t *a, int rlen, int base)
{
    uint32_t r_in[2 * rlen];
    convBaseto32(r_in, a, 2*rlen, base);
    for(int i=0; i < rlen; i++)
        r[i] = ((long long) r_in[2*i+1] << 32) | r_in[2*i];
}

static inline void bits2go(int32_t *result, int32_t *r, int len)
{
    int res = 32;
    for (int j = 0; j < len; j++)
    {
        if(res >= __builtin_clz(r[j]))
        {
            res = __builtin_clz(r[j]);
            result[0] = j;
        }

    }
    result[1] = res;
}

static inline void convTo64(const fp v_a, uint64_t *a, int v_alen, int alen, int numLimbs, int base)
{
    (void) a;
    (void) alen;
    uint32_t aBase[numLimbs];
    memset(aBase, 0, sizeof(aBase));
    int index = 0, carry = 0;
    for (int j = 0; j < v_alen; j++)
    {
        aBase[index] = v_a[j] + carry;
        carry = (aBase[index] >> base);
        aBase[index] = (aBase[index] & ((1 << base) - 1));
    }
    // convBaseto64(a, aBase, alen, numLimbs, base);
}

static inline void conv32toBase(uint32_t *r, const uint32_t *a, int rlen, int alen, int base)
{
    int i, j, shr_pos, shl_pos;
    uint32_t word, temp;
    uint32_t mask = (1 << base) - 1;
    i = j = 0;
    shr_pos = 32;
    shl_pos = 0;
    temp = 0;
    (void) rlen;
    // while ((i < rlen) && (j < alen))
    while ((j < alen))    
    {
        word = ((temp >> shr_pos) | (a[j] << shl_pos));
        r[i] = (word & mask);
        shr_pos -= (32 - base);
        shl_pos += (32 - base);
        if ((shr_pos > 0) && (shl_pos < 32))
            temp = a[j++];
        if (shr_pos <= 0)
            shr_pos += 32;
        if (shl_pos >= 32)
            shl_pos -= 32;
        // Any shift past 31 is undefined!
        if (shr_pos == 32)
            temp = 0;
        i++;
    }
    if (i < rlen)
    {
        r[i++] = ((temp >> shr_pos) & mask);
    }
    if (r[i - 1] != temp)
        r[i++] = (temp >> shr_pos) >> base;

    for (; i < rlen; i++)
        r[i] = 0;
}

static inline void conv64toBase(uint32_t *r, const uint64_t *a, int alen, int rlen, int base)
{

    uint32_t a_out[rlen * 2];
    memcpy(a_out, a, sizeof(a_out));
    conv32toBase(r, a_out, alen, 2 * rlen, base);
}

static inline void convTomm256(int32_t *v_a, const uint64_t *a, int v_alen, int alen, int numLimbs, int base)
{
    uint32_t aBase[numLimbs];
    (void) alen;
    (void)v_alen;
    // uint64_t test[alen];
    conv64toBase(aBase, a, alen, numLimbs, base);
    int index = 0;

    for (int j = 0; j < numLimbs; j = j + 10)
    {
        for(int k = 2*j; k < (2*j)+8; k++)
        {        
            v_a[k] = aBase[index];
            index++;
        }
        v_a[2*j+7] = aBase[index];
        index++;
        v_a[2*j+8] = aBase[index];
        index++;
    }

}




static inline void carryHorizontal(int32_t *result, int64_t *r, const int r_len, const int base, int32_t *carryOver)
{

    int64_t current[r_len];
    int32_t carry = 0;
    for (int j = 0; j < r_len; j++)
    {
        current[j] = r[j] + carry;
        carry = (current[j] >> base);
        result[j] = (current[j] & ((1 << base) - 1));

    }
    // if(carry!=0)
    //     printf(" ");    
    *carryOver = carry;

}


static inline void carry32(int32_t *r, const int r_len, const int base, int32_t *carryOver)
{

    int32_t current;
    int32_t carry = 0;
    for (int j = 0; j < r_len-1; j++)
    {
        current = r[j] + carry;
        carry = (current >> base);
        r[j] = (current & ((1 << base) - 1));

    }
    r[r_len-1] = r[r_len-1] + carry;
    // if(carry!=0)
    //     printf(" ");
    *carryOver = carry;

}



// static void copy_80x80_avx2_C(__m256i *v_c, const __m256i *v_a)
// {
//     for(int i=0; i < 32; i++)
//     {
//         v_c[i] = v_a[i];
//     }
// }

/*
AVX2 STUFF ##########################
*/

// (64 x NUMBER_OF_WORDS)-bits integer number in Montgomery domain
// #define NUMBER_OF_WORDS 64
// typedef uint64_t fp[NUMBER_OF_WORDS];
// typedef __attribute__ ((aligned (32))) __m256i fp[NUMBER_OF_VECTORS];



// -------------------------------------
// big unsigned add and  sub implementation
#define uintbig_1 COMMON(uintbig_1)
extern const fp uintbig_1;

#define r_squared_mod_p COMMON(r_squared_mod_p)
extern const fp r_squared_mod_p;
#define p_minus_2 COMMON(p_minus_2)
extern const fp p_minus_2;
#define inv_min_p_mod_r COMMON(inv_min_p_mod_r)
extern const fp inv_min_p_mod_r;

#define uintbig_bit COMMON(uintbig_bit)
// bool uintbig_bit(fp const x, uint64_t k);
#define uintbig_add COMMON(uintbig_add)
bool uintbig_add(fp x, fp const y, fp const z); /* returns carry */
#define uintbig_sub COMMON(uintbig_sub)
bool uintbig_sub(fp x, fp const y, fp const z); /* returns borrow */

// -------------------------------------
#define p COMMON(p)
extern const fp p; // field characteristic

#define p64 COMMON(p64)
extern const uint64_t p64[NUMBER_OF_WORDS]; // field characteristic

// extern const fp inv_min_p_mod_r;
// extern const fp r_squared_mod_p;
#define fp_1 COMMON(fp_1)
extern const fp fp_1;
#define fp_0 COMMON(fp_0)
extern const fp fp_0;

// #define fp_enc COMMON(fp_enc)
// void fp_enc(fp a, fp const b); // from fp into Montgomery domain

// #define fp_dec COMMON(fp_dec)
// void fp_dec(fp a, fp const b); // from Montgomery domain into fp

// #define fp_pow COMMON(fp_pow)
// void fp_pow(fp b, const fp e, const fp a);

#define fp_add COMMON(fp_add)
void fp_add(fp c, const fp a, const fp b); // a + a

#define fp_sub COMMON(fp_sub)
void fp_sub(fp c, const fp a, const fp b);

#define fp_mul COMMON(fp_mul)
void fp_mul(fp c, const fp a, const fp b);

#define fp_mul_wo_redc COMMON(fp_mul_wo_redc)
void fp_mul_wo_redc(int32_t *c, const fp a, const fp b);

#define fp_sqr COMMON(fp_sqr)
void fp_sqr(fp c, const fp a);

#define fp_issquare COMMON(fp_issquare)
bool fp_issquare(fp a);

#define fp_copy COMMON(fp_copy)
void fp_copy(fp b, const fp a);

#define fp_cswap COMMON(fp_cswap)
void fp_cswap(fp x, fp y, uint8_t c);

#define fp_random COMMON(fp_random)
void fp_random(fp a);

#define fp_inv COMMON(fp_inv)
void fp_inv(fp a);
#ifdef MONTGOMERY
#define fp_mont_redc COMMON(fp_mont_redc)
void fp_mont_redc(uint64_t a[NUMBER_OF_WORDS], const uint64_t b[2 * NUMBER_OF_WORDS]);
#endif

#ifdef KARATSUBA
#if defined(P9215k384)
#define fp_mult_144x144 COMMON(fp_mult_144x144)
void fp_mult_144x144(uint64_t *c, const uint64_t *a, const uint64_t *b);
#endif

#if defined(P8191k332)
#define fp_mult_128x128 COMMON(fp_mult_128x128)
void fp_mult_128x128(uint64_t *c, const uint64_t *a, const uint64_t *b);
#endif

#if defined(P6143k256)
#define fp_mult_96x96 COMMON(fp_mult_96x96)
void fp_mult_96x96(uint64_t *c, const uint64_t *a, const uint64_t *b);
#endif

#if defined(P5119k234)
#define fp_mult_80x80 COMMON(fp_mult_80x80)
void fp_mult_80x80(uint64_t *c, const uint64_t *a, const uint64_t *b);
#endif

#if defined(P4095k256)
#define fp_mult_64x64 COMMON(fp_mult_64x64)
void fp_mult_64x64(uint64_t *c, const uint64_t *a, const uint64_t *b);
#endif

#if defined(P2047k221)
#define fp_mult_32x32 COMMON(fp_mult_32x32)
void fp_mult_32x32(uint64_t *c, const uint64_t *a, const uint64_t *b);
#endif

#endif
// repeated squaring
static inline void fp_sq1_rep(fp x, long long n)
{
    while (n > 0)
    {
        --n;
        fp_sqr(x, x);
    }
}


static inline void fp_enc(fp a, fp const b)
{

    fp_mul(a, b, r_squared_mod_p);
    CNT_FP_MUL_DEC();
    // fp_copy(a, b);
}

static inline void fp_dec(fp a, fp const b)
{
    fp_mul(a, b, uintbig_1);
    CNT_FP_MUL_DEC();
    // fp_copy(a, b);
}


// set to zero
// static inline void fp_check4neg(fp const a)
// {
//     for (int i = 0; i < NUMBER_OF_VECTORS; i++)
//     {

//         if ((_mm256_extract_epi32(a[i], 0) < 0) || (_mm256_extract_epi32(a[i], 1) < 0) || (_mm256_extract_epi32(a[i], 2) < 0) || (_mm256_extract_epi32(a[i], 3) < 0) || (_mm256_extract_epi32(a[i], 4) < 0) || (_mm256_extract_epi32(a[i], 5) < 0) || (_mm256_extract_epi32(a[i], 6) < 0) || (_mm256_extract_epi32(a[i], 7) < 0))
//             printf("here");
//     };
// }

// static inline void fp_2oct(uint8_t *buf, const fp* a, const uint8_t len)
// {
//     uint64_t tmp[len * NUMBER_OF_WORDS];
//     for(int i=0; i<len; i++)
//     {
//         convTo64(a[i], &tmp[i], NUMBER_OF_VECTORS, NUMBER_OF_WORDS, 80, 26);
//     }
//     memcpy(buf, tmp, sizeof(tmp));

// }

// static inline void oct2_fp(fp* a, const uint8_t *buf, const uint8_t len)
// {
//     uint64_t tmp[len * NUMBER_OF_WORDS];
//     memcpy(tmp, buf, sizeof(tmp));
//     for(int i=0; i<len; i++)
//     {
//         convTomm256(a[i], &tmp[i], NUMBER_OF_VECTORS, NUMBER_OF_WORDS, 80, 26);
//     }

// }


// set to zero
static inline void fp_set0(fp a)
{
    fp_copy(a, fp_0);
}

// set to value
static inline void fp_set(fp a, int32_t value)
{
    fp_set0(a);
    a[0] = value;
}

// set to one
// static inline void uintbig_set1(fp a)
// {
//     fp_copy(a, uintbig_1);
// }

// set to one in mongotmery domnain
static inline void fp_set1(fp a)
{
    fp_copy(a, fp_1);
}

// constant-time check of a < b
static inline uint64_t fp_issmaller(fp const a, fp const b)
{
    int i;
    // totally not constant-time
    for (i = NUMBER_OF_LIMBS - 1; i >= 0; i--)
    {
        if(a[i]<b[i])
            return 1;
        if(a[i]>b[i])
            return 0;
    }
    return 0;
}

static inline uint64_t fp64_issmaller(const uint64_t * a, uint64_t * b)
{
    int i;
    int64_t r = 0, ab, c;

    for (i = 0; i < NUMBER_OF_WORDS; i++)
    {

        ab = a[i] ^ b[i];
        c = a[i] - b[i];
        c ^= ab & (c ^ a[i]);
        c = (c >> 63);
        r |= c;
    };

    return 1 - (uint64_t)(r + 1);
}

static inline void fp_2oct(uint8_t *buf, const fp *a)
{
    uint64_t tmp[NUMBER_OF_WORDS];
    // int carryover = 0;
    // carryHorizontal32(a, NUMBER_OF_LIMBS, RADIX, &carryover);
    convBaseto64(tmp, (const uint32_t*) a, NUMBER_OF_WORDS, RADIX);

    for (int i = 0; i < NUMBER_OF_WORDS; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            buf[i * 8 + j] = tmp[i] >> j * 8;
        }
    }
}

static inline void oct2_fp(fp *a, const uint8_t *buf)
{
    // fp test = {0};
    // memcpy(test, buf, sizeof(fp));
    uint64_t tmp64[NUMBER_OF_WORDS] = {0}, tmp = 0;
    
    for (int i = 0; i < NUMBER_OF_WORDS; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            tmp = buf[i * 8 + j];
            tmp64[i] += tmp << j * 8;
        }
    }
    conv64toBase((uint32_t *)a, tmp64, NUMBER_OF_LIMBS, NUMBER_OF_WORDS, RADIX);
    // assert(memcmp(test, a, sizeof(test))==0);
}

// constant-time check of a == b
static inline uint64_t fp_isequal(fp const a, fp const b)
{
    int i;
    uint32_t r = 0, t;

    for (i = 0; i < NUMBER_OF_LIMBS; i++)
    {
        t = 0;
        unsigned char *ta = (unsigned char *)&a[i];
        unsigned char *tb = (unsigned char *)&b[i];
        t = (ta[0] ^ tb[0]) | (ta[1] ^ tb[1]) | (ta[2] ^ tb[2]) | (ta[3] ^ tb[3]);

        t = (-t);
        t = t >> 31;
        r |= t;
    };

    return (uint64_t)(1 - r);
}

// constant-time check of a == 0
static inline int fp_iszero(fp const a)
{
    int i;
    uint32_t c = 0;
    for (i = NUMBER_OF_LIMBS - 1; i >= 0; i--)
        c |= a[i];
    return (c == 0);  

    // int i;
    // uint32_t c = 0;
    // for (i = 0; i >= NUMBER_OF_LIMBS; i++)
    //     c = c && _mm256_testz_si256(a[i], a[i]);
    // return (c == 1);  


}

// constant-time check of a == R mod p (one in Montogmery domain)
static inline uint64_t fp_isone(fp const a)
{
    return fp_isequal(a, fp_1);
}

#if defined P2047k221
#define UBITS 2048
#elif defined P4095k256
#define UBITS 4096
#elif defined P5119k234
#define UBITS 5120
#elif defined P6143k256
#define UBITS 6144
#elif defined P8191k332
#define UBITS 8192
#elif defined P9215k384
#define UBITS 9216
#endif

#define UINTBIG_LIMBS ((UBITS + 63) / 64)

typedef struct uintbig
{
    uint64_t c[UINTBIG_LIMBS];
} uintbig;

long long uintbig_bit(uintbig const *x, uint64_t k);

#define uintbig_p COMMON(uintbig_p)
extern const uintbig uintbig_p;

// #define uintbig_1 COMMON(uintbig_1)
// extern const uintbig uintbig_1;

#define uintbig_four_sqrt_p COMMON(uintbig_four_sqrt_p)
extern const fp uintbig_four_sqrt_p;

#define uintbig_set COMMON(uintbig_set)
void uintbig_set(uintbig *x, uint64_t y);

#define uintbig_mul3_64 COMMON(uintbig_mul3_64)
void uintbig_mul3_64(fp *x, fp const *y, uint64_t z);

// static inline long long uintbig_uint64_iszero(uint64_t t)
// {
//     // is t nonzero?
//     t |= t >> 32;
//     // are bottom 32 bits of t nonzero?
//     t &= 0xffffffff;
//     // is t nonzero? between 0 and 0xffffffff
//     t = -t;
//     // is t nonzero? 0, or between 2^64-0xffffffff and 2^64-1
//     t >>= 63;
//     return 1 - (long long)t;
// }

// static inline long long uintbig_iszero(const uintbig *x)
// {
//     uint64_t t = 0;
//     for (long long i = 0; i < UINTBIG_LIMBS; ++i)
//         t |= x->c[i];
//     return uintbig_uint64_iszero(t);
// }

// static inline long long uintbig_isequal(const uintbig *x, const uintbig *y)
// {
//     uint64_t t = 0;
//     for (long long i = 0; i < UINTBIG_LIMBS; ++i)
//         t |= (x->c[i]) ^ (y->c[i]);
//     return uintbig_uint64_iszero(t);
// }

#define fp_2 COMMON(fp_2)
extern const fp fp_2; // 2 in the Montgomery domain

#define uintbig_1_ctidh COMMON(uintbig_1_ctidh)
extern const uintbig uintbig_1_ctidh;

#define fp_cmov COMMON(fp_cmov)
void fp_cmov(fp *a, const fp *b, uint8_t c);

// static inline long long fp_iszero_ctidh(fp *x) {
// return fp_iszero(*x);
// }

static inline void fp_cswap_ctidh(fp *x, fp *y, long long c)
{
    fp_cswap(*x, *y, c);
}

static inline void fp_mul3(fp *c, fp const *a, fp const *b)
{
    fp_mul(*c, *a, *b);
}

static inline void fp_mul2(fp *c, fp const *a)
{
    fp_mul(*c, *c, *a);
}

static inline void fp_add3(fp *c, fp const *a, fp const *b)
{
    fp_add(*c, *a, *b);
}

static inline void fp_add2(fp *c, fp const *a)
{
    fp_add(*c, *c, *a);
}

static inline void fp_sub2(fp *c, fp const *a)
{
    fp_sub(*c, *c, *a);
}

// static inline void fp_sub3_test(fp *c, fp *a, fp const *b) {
//     fp_sub(*c, *a, *b);
// }

static inline void fp_cmov_ctidh(fp *a, const fp *b, uint8_t c)
{
    fp_cmov(a, b, c);
}

static inline void fp_sub3(fp *c, fp const *a, fp const *b)
{
    fp_sub(*c, *a, *b);
}

static inline void fp_neg1(fp *x)
{
    fp_sub(*x, fp_0, *x);
}

static inline void fp_neg2(fp *x, fp const *y)
{
    fp_sub(*x, fp_0, *y);
}

static inline void fp_sq1(fp *x)
{
    fp_sqr(*x, *x);
}

static inline void fp_sq2(fp *x, fp const *y)
{
    fp_sqr(*x, *y);
}

static inline void fp_double1(fp *x)
{
    fp_add2(x, (const fp *)x);
}

static inline void fp_double2(fp *x, fp const *y)
{
    fp_add(*x, *y, *y);
}

static inline void fp_quadruple1(fp *x)
{
    fp_double1(x);
    fp_double1(x);
}

static inline void fp_quadruple2(fp *x, fp const *y)
{
    fp_double2(x, y);
    fp_double1(x);
}

static inline long long fp_sqrt(fp *x)
{
    return fp_issquare(*x);
}


#endif

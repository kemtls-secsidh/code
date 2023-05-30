#include "fp-avx2.h"
#include "../fp-counters.h"
#include "../../primes.h"

#include <gmp.h>
#include <immintrin.h>

uint64_t count_add = 0;
uint64_t count_add_old = 0;
uint64_t count_add_max = 0;

//#define USE_GMP_SEC_FUNCTIONS
#define INTMONT

const uint64_t p64[NUMBER_OF_WORDS] = {
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,
0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0xB1A73428FFFFFFFF,0x3C7EA8E3C554965A,
0x40803AF2FC159EF2,0xCCFB305C48D4D505,0x6B8EF3BD24FA010D,0x2674B4838FAD59EB,
0x5C175CC1BE876A7,0xC5D744BAF4074152,0x92C4B7DD1100ADFA,0x274E59F92BD34D4D,
0x3CF8373B1A6D448D,0x41DF8B0B4F3E178B,0x4EBFB033649A8012,0xA4FC04DEB27F0F97,
0x531B77E3E1EB32A2,0x91707210201D3A74,0x79DABE4D2F2A1E0F,0x7837DAA51F59CDFA,
0x91CBFF70AC345B5A,0x25223E09B7BF27C4,0x1D384E247A3FA6BD,0x9A2FFACBA15A6110,
0x92D9ECF65F9B3FD4,0x6C0E75F1235909CE,0xE3945BA3564DD650,0x79A5B88C7FE6D95F,
0xC83174128DC676F,0x792C81C648CAB8CB,0x12EBE4E03BCBD891,0x251ACCA5A5EB867E,
0x260DE537CDB28252,0xF6F73F7357DD8F6E,0x80480988522C5703,0x1D8333732C8142B5,
0x305E539F114AD8ED,0xBB6D10EB0C6C11E5,0x4C32EAB208C6E5CE,0x4B52CCE89E8E10AA};


#define pbits 6143
#define itch_size 386


/*
AVX2 STUFF ##########################
*/

// static inline void add_80x80_avx2_C(fp v_c, const fp v_a, const fp v_b)
// {
//     for (int i = 0; i < 16; i++)
//     {
//         v_c[i] = _mm256_add_epi32(v_a[i], v_b[i]);
//     }
// }

// static inline void sub_80x80_avx2_C(__m256i *v_c, const __m256i *v_a, const __m256i *v_b)
// {
//     for (int i = 0; i < 16; i++)
//     {
//         v_c[i] = _mm256_sub_epi32(v_a[i], v_b[i]);
//     }
// }

// static inline void convert4Karatsuba(int32_t *result, const int32_t *input, uint16_t length)
// {
//     int j = 0;
//     for (int i = 0; i < length; i++)
//     {
//         result[i] = input[j];
//         if ((i > 0) & ((i + 1) % 8 == 0))
//             i = i + 1;
//         j++;
//     }
// }

// static inline void convertFromKarastuba(int32_t *result, const int32_t *input, uint16_t length)
// {
//     int j = 0;
//     for (int i = 0; i < length; i++)
//     {
//         result[j] = input[i];
//         if ((i > 0) & ((i + 1) % 8 == 0))
//             i = i + 1;
//         j++;
//     }
// }

static inline void carryVertical64_avx2_s(int64_t *mmrAxB, int length, int base)
{
    int64_t current[4] = {0}, carry[4] = {0};
    int k = 0;
    for(; k < length; k=k+4)
    {

        current[0] = mmrAxB[k] + carry[0];
        carry[0]  = current[0] >> base;
        mmrAxB[k] = current[0] & 0x3ffffff;

        current[1] = mmrAxB[k+1] + carry[1];
        carry[1]  = current[1] >> base;
        mmrAxB[k+1] = current[1] & 0x3ffffff;

        current[2] = mmrAxB[k+2] + carry[2];
        carry[2]  = current[2] >> base;
        mmrAxB[k+2] = current[2] & 0x3ffffff;

        current[3] = mmrAxB[k+3] + carry[3];
        carry[3]  = current[3] >> base;
        mmrAxB[k+3] = current[3] & 0x3ffffff;
                                                   

        // current =  _mm256_add_epi64(current, carry);
        // x = current[0] >> base;
        // carry[0] = x;
        // x = current[1] >> base;
        // carry[1] = x;
        // x = current[2] >> base;
        // carry[2] = x;
        // x = current[3] >> base;
        // carry[3] = x;
        // current = _mm256_and_si256(current, mask);
        // mmrAxB[k*4] = current[0];
        // mmrAxB[k*4+1] = current[1];
        // mmrAxB[k*4+2] = current[2];
        // mmrAxB[k*4+3] = current[3];

    }
    mmrAxB[k] += carry[0];
    mmrAxB[k+1] += carry[1];
    mmrAxB[k+2] += carry[2];
    mmrAxB[k+3] += carry[3];

    // for(k=0; k < 128; k=k+4)
    // {
    //     if((mmrAxB[k] >> 30 > 0) || (mmrAxB[k] >> 31 > 0))
    //         printf("dfsfsd");
    // }
}


static inline void sqr_64x64_avx2_C(int32_t *v_c, const int32_t *v_a, const int32_t *v_b)
{

    int32_t v_aux[8 * 8] __attribute__((aligned(32))) = {0};
    int32_t v_aux1[8 * 8] __attribute__((aligned(32))) = {0};
    int32_t mmrA[8 * 8] __attribute__((aligned(32))) = {0};
    int32_t mmrB[8 * 8] __attribute__((aligned(32))) = {0};
    int64_t mmrAxB[16 * 8] __attribute__((aligned(32))) = {0};

    int32_t A_v_aux[4 * 8] __attribute__((aligned(32))) = {0};
    int32_t A_v_aux1[4 * 8] __attribute__((aligned(32))) = {0};
    int32_t A_A_v_aux[2 * 8] __attribute__((aligned(32))) = {0};
    int32_t A_A_v_aux1[2 * 8] __attribute__((aligned(32))) = {0};

    int32_t B_v_aux[4 * 8] __attribute__((aligned(32))) = {0};
    int32_t B_v_aux1[4 * 8] __attribute__((aligned(32))) = {0};

    int32_t B_B_v_aux[2 * 8] __attribute__((aligned(32))) = {0};
    int32_t B_B_v_aux1[2 * 8] __attribute__((aligned(32))) = {0};

    int32_t C_v_aux[4 * 8] __attribute__((aligned(32))) = {0};
    int32_t C_v_aux1[4 * 8] __attribute__((aligned(32))) = {0};

    add_2x_avx2_32_4(v_aux, v_a, v_b);

    add_2x_avx2_32_2(A_v_aux, v_a, v_b);

    add_2x_avx2_32_1(A_A_v_aux, v_a, v_b);
    interleave(mmrA, v_a, &A_A_v_aux[1 * 8], &v_a[1 * 8], &v_a[1 * 8]);
    interleave(mmrB, v_b, A_A_v_aux, &v_b[1 * 8], &v_b[1 * 8]);
    // memset(mmrAxB, 0, sizeof(mmrAxB));
    squaring_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2(mmrAxB, 16, RADIX);
    deinterleave(mmrAxB, v_c, A_A_v_aux1, &v_c[2 * 8], B_B_v_aux);
    sub_avx2_32_2(A_A_v_aux1, v_c, &v_c[2 * 8]);
    add_avx2_32_2(&v_c[1 * 8], &v_c[1 * 8], A_A_v_aux1);

    add_2x_avx2_32_2(B_v_aux, &v_aux[4 * 8], v_aux);

    add_2x_avx2_32_1(A_A_v_aux, &A_v_aux[2 * 8], A_v_aux);
    interleave(mmrA, &A_v_aux[2 * 8], &A_A_v_aux[1 * 8], &A_v_aux[3 * 8], &B_v_aux[3 * 8]);
    interleave(mmrB, A_v_aux, A_A_v_aux, &A_v_aux[1 * 8], &B_v_aux[1 * 8]);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    squaring_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2(mmrAxB, 16, RADIX);
    deinterleave(mmrAxB, A_v_aux1, A_A_v_aux1, &A_v_aux1[2 * 8], &B_v_aux1[2 * 8]);
    sub_avx2_32_2(A_A_v_aux1, A_v_aux1, &A_v_aux1[2 * 8]);
    add_avx2_32_2(&A_v_aux1[1 * 8], &A_v_aux1[1 * 8], A_A_v_aux1);

    add_2x_avx2_32_1(B_B_v_aux, &B_v_aux[2 * 8], B_v_aux);

    add_2x_avx2_32_1(A_A_v_aux, &v_a[2 * 8], &v_b[2 * 8]);
    interleave(mmrA, &v_a[2 * 8], &A_A_v_aux[1 * 8], &v_a[3 * 8], &B_B_v_aux[1 * 8]);
    interleave(mmrB, &v_b[2 * 8], A_A_v_aux, &v_b[3 * 8], B_B_v_aux);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    squaring_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2(mmrAxB, 16, RADIX);
    deinterleave(mmrAxB, &v_c[4 * 8], A_A_v_aux1, &v_c[6 * 8], B_B_v_aux1);
    sub_avx2_32_2(A_A_v_aux1, &v_c[4 * 8], &v_c[6 * 8]);
    add_avx2_32_2(&v_c[5 * 8], &v_c[5 * 8], A_A_v_aux1);

    sub_avx2_32_4(A_v_aux1, v_c, &v_c[4 * 8]);

    add_avx2_32_4(&v_c[2 * 8], &v_c[2 * 8], A_v_aux1);

    add_2x_avx2_32_1(A_A_v_aux, &v_aux[4 * 8], v_aux);

    interleave(mmrA, &v_aux[4 * 8], &A_A_v_aux[1 * 8], &v_aux[5 * 8], &B_v_aux[2 * 8]);
    interleave(mmrB, v_aux, A_A_v_aux, &v_aux[1 * 8], B_v_aux);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    squaring_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2(mmrAxB, 16, RADIX);
    deinterleave(mmrAxB, v_aux1, A_A_v_aux1, &v_aux1[2 * 8], B_v_aux1);
    sub_avx2_32_2(A_A_v_aux1, v_aux1, &v_aux1[2 * 8]);
    add_avx2_32_2(&v_aux1[1 * 8], &v_aux1[1 * 8], A_A_v_aux1);

    sub_avx2_32_2(B_B_v_aux1, B_v_aux1, &B_v_aux1[2 * 8]);

    add_avx2_32_2(&B_v_aux1[1 * 8], &B_v_aux1[1 * 8], B_B_v_aux1);

    add_2x_avx2_32_1(B_B_v_aux, &v_a[6 * 8], &v_b[6 * 8]);

    add_2x_avx2_32_1(A_A_v_aux, &v_aux[6 * 8], &v_aux[2 * 8]);
    interleave(mmrA, &v_aux[6 * 8], &A_A_v_aux[1 * 8], &v_aux[7 * 8], &B_B_v_aux[1 * 8]);
    interleave(mmrB, &v_aux[2 * 8], A_A_v_aux, &v_aux[3 * 8], B_B_v_aux);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    squaring_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2(mmrAxB, 16, RADIX);
    deinterleave(mmrAxB, &v_aux1[4 * 8], A_A_v_aux1, &v_aux1[6 * 8], B_B_v_aux1);
    sub_avx2_32_2(A_A_v_aux1, &v_aux1[4 * 8], &v_aux1[6 * 8]);
    add_avx2_32_2(&v_aux1[5 * 8], &v_aux1[5 * 8], A_A_v_aux1);

    sub_avx2_32_4(B_v_aux1, v_aux1, &v_aux1[4 * 8]);

    add_avx2_32_4(&v_aux1[2 * 8], &v_aux1[2 * 8], B_v_aux1);

    add_2x_avx2_32_2(C_v_aux, &v_a[4 * 8], &v_b[4 * 8]);

    add_2x_avx2_32_1(A_A_v_aux, &v_a[4 * 8], &v_b[4 * 8]);
    interleave(mmrA, &v_a[4 * 8], &A_A_v_aux[1 * 8], &v_a[5 * 8], &v_a[6 * 8]);
    interleave(mmrB, &v_b[4 * 8], A_A_v_aux, &v_b[5 * 8], &v_b[6 * 8]);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    squaring_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2(mmrAxB, 16, RADIX);
    deinterleave(mmrAxB, &v_c[8 * 8], A_A_v_aux1, &v_c[10 * 8], &v_c[12 * 8]);
    sub_avx2_32_2(A_A_v_aux1, &v_c[8 * 8], &v_c[10 * 8]);
    add_avx2_32_2(&v_c[9 * 8], &v_c[9 * 8], A_A_v_aux1);

    add_2x_avx2_32_1(A_A_v_aux, &C_v_aux[2 * 8], C_v_aux);
    interleave(mmrA, &C_v_aux[2 * 8], &A_A_v_aux[1 * 8], &C_v_aux[3 * 8], &v_a[7 * 8]);
    interleave(mmrB, C_v_aux, A_A_v_aux, &C_v_aux[1 * 8], &v_b[7 * 8]);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    squaring_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2(mmrAxB, 16, RADIX);
    deinterleave(mmrAxB, C_v_aux1, A_A_v_aux1, &C_v_aux1[2 * 8], &v_c[14 * 8]);
    sub_avx2_32_2(A_A_v_aux1, C_v_aux1, &C_v_aux1[2 * 8]);
    add_avx2_32_2(&C_v_aux1[1 * 8], &C_v_aux1[1 * 8], A_A_v_aux1);

    // add_2x_2x2_avx2(C_C_v_aux, &v_a[12*8], &v_b[12*8], 2);

    sub_avx2_32_2(B_B_v_aux1, &v_c[12 * 8], &v_c[14 * 8]);
    add_avx2_32_2(&v_c[13 * 8], &v_c[13 * 8], B_B_v_aux1);

    sub_avx2_32_4(C_v_aux1, &v_c[8 * 8], &v_c[12 * 8]);

    add_avx2_32_4(&v_c[10 * 8], &v_c[10 * 8], C_v_aux1);
    // +++++++++++++++++++++++++++++++++
    sub_avx2_32_8(v_aux1, v_c, &v_c[8 * 8]);

    add_avx2_32_8(&v_c[4 * 8], &v_c[4 * 8], v_aux1);
}


static inline void mult_64x64_avx2_C_neg(int32_t *v_c, const int32_t *v_a, const int32_t *v_b)
{

    int32_t v_aux[8 * 8] __attribute__((aligned(32))) = {0};
    int32_t v_aux1[8 * 8] __attribute__((aligned(32))) = {0};
    int32_t mmrA[8 * 8] __attribute__((aligned(32))) = {0};
    int32_t mmrB[8 * 8] __attribute__((aligned(32))) = {0};
    int64_t mmrAxB[16 * 8] __attribute__((aligned(32))) = {0};

    int32_t A_v_aux[4 * 8] __attribute__((aligned(32))) = {0};
    int32_t A_v_aux1[4 * 8] __attribute__((aligned(32))) = {0};
    int32_t A_A_v_aux[2 * 8] __attribute__((aligned(32))) = {0};
    int32_t A_A_v_aux1[2 * 8] __attribute__((aligned(32))) = {0};

    int32_t B_v_aux[4 * 8] __attribute__((aligned(32))) = {0};
    int32_t B_v_aux1[4 * 8] __attribute__((aligned(32))) = {0};

    int32_t B_B_v_aux[2 * 8] __attribute__((aligned(32))) = {0};
    int32_t B_B_v_aux1[2 * 8] __attribute__((aligned(32))) = {0};

    int32_t C_v_aux[4 * 8] __attribute__((aligned(32))) = {0};
    int32_t C_v_aux1[4 * 8] __attribute__((aligned(32))) = {0};

    add_2x_avx2_32_4(v_aux, v_a, v_b);

    add_2x_avx2_32_2(A_v_aux, v_a, v_b);

    add_2x_avx2_32_1(A_A_v_aux, v_a, v_b);
    interleave(mmrA, v_a, &A_A_v_aux[1 * 8], &v_a[1 * 8], &v_a[1 * 8]);
    interleave(mmrB, v_b, A_A_v_aux, &v_b[1 * 8], &v_b[1 * 8]);
    // memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2_s(mmrAxB, 60, RADIX);
    deinterleave(mmrAxB, v_c, A_A_v_aux1, &v_c[2 * 8], B_B_v_aux);
    sub_avx2_32_2(A_A_v_aux1, v_c, &v_c[2 * 8]);
    add_avx2_32_2(&v_c[1 * 8], &v_c[1 * 8], A_A_v_aux1);

    add_2x_avx2_32_2(B_v_aux, &v_aux[4 * 8], v_aux);

    add_2x_avx2_32_1(A_A_v_aux, &A_v_aux[2 * 8], A_v_aux);



    interleave(mmrA, &A_v_aux[2 * 8], &A_A_v_aux[1 * 8], &A_v_aux[3 * 8], &B_v_aux[3 * 8]);
    interleave(mmrB, A_v_aux, A_A_v_aux, &A_v_aux[1 * 8], &B_v_aux[1 * 8]);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);

    // int64_t mmrAxB_test[128] = {0};
    // memcpy(mmrAxB_test, mmrAxB, sizeof(mmrAxB_test));

    carryVertical64_avx2_s(mmrAxB, 60, RADIX);

    
    // carryVertical64_avx2_s(mmrAxB, 00, RADIX);
    deinterleave(mmrAxB, A_v_aux1, A_A_v_aux1, &A_v_aux1[2 * 8], &B_v_aux1[2 * 8]);
    sub_avx2_32_2(A_A_v_aux1, A_v_aux1, &A_v_aux1[2 * 8]);
    add_avx2_32_2(&A_v_aux1[1 * 8], &A_v_aux1[1 * 8], A_A_v_aux1);

    add_2x_avx2_32_1(B_B_v_aux, &B_v_aux[2 * 8], B_v_aux);

    add_2x_avx2_32_1(A_A_v_aux, &v_a[2 * 8], &v_b[2 * 8]);
    interleave(mmrA, &v_a[2 * 8], &A_A_v_aux[1 * 8], &v_a[3 * 8], &B_B_v_aux[1 * 8]);
    interleave(mmrB, &v_b[2 * 8], A_A_v_aux, &v_b[3 * 8], B_B_v_aux);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2_s(mmrAxB, 60, RADIX);
    // carryVertical64_avx2_s_s(mmrAxB 060, RADIX);    
    deinterleave(mmrAxB, &v_c[4 * 8], A_A_v_aux1, &v_c[6 * 8], B_B_v_aux1);
    sub_avx2_32_2(A_A_v_aux1, &v_c[4 * 8], &v_c[6 * 8]);
    add_avx2_32_2(&v_c[5 * 8], &v_c[5 * 8], A_A_v_aux1);

    sub_avx2_32_4(A_v_aux1, v_c, &v_c[4 * 8]);

    add_avx2_32_4(&v_c[2 * 8], &v_c[2 * 8], A_v_aux1);

    add_2x_avx2_32_1(A_A_v_aux, &v_aux[4 * 8], v_aux);

    interleave(mmrA, &v_aux[4 * 8], &A_A_v_aux[1 * 8], &v_aux[5 * 8], &B_v_aux[2 * 8]);
    interleave(mmrB, v_aux, A_A_v_aux, &v_aux[1 * 8], B_v_aux);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2_s(mmrAxB, 60, RADIX);
    deinterleave(mmrAxB, v_aux1, A_A_v_aux1, &v_aux1[2 * 8], B_v_aux1);
    sub_avx2_32_2(A_A_v_aux1, v_aux1, &v_aux1[2 * 8]);
    add_avx2_32_2(&v_aux1[1 * 8], &v_aux1[1 * 8], A_A_v_aux1);

    sub_avx2_32_2(B_B_v_aux1, B_v_aux1, &B_v_aux1[2 * 8]);

    add_avx2_32_2(&B_v_aux1[1 * 8], &B_v_aux1[1 * 8], B_B_v_aux1);

    add_2x_avx2_32_1(B_B_v_aux, &v_a[6 * 8], &v_b[6 * 8]);

    add_2x_avx2_32_1(A_A_v_aux, &v_aux[6 * 8], &v_aux[2 * 8]);
    interleave(mmrA, &v_aux[6 * 8], &A_A_v_aux[1 * 8], &v_aux[7 * 8], &B_B_v_aux[1 * 8]);
    interleave(mmrB, &v_aux[2 * 8], A_A_v_aux, &v_aux[3 * 8], B_B_v_aux);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2_s(mmrAxB, 60, RADIX);
    deinterleave(mmrAxB, &v_aux1[4 * 8], A_A_v_aux1, &v_aux1[6 * 8], B_B_v_aux1);
    sub_avx2_32_2(A_A_v_aux1, &v_aux1[4 * 8], &v_aux1[6 * 8]);
    add_avx2_32_2(&v_aux1[5 * 8], &v_aux1[5 * 8], A_A_v_aux1);

    sub_avx2_32_4(B_v_aux1, v_aux1, &v_aux1[4 * 8]);

    add_avx2_32_4(&v_aux1[2 * 8], &v_aux1[2 * 8], B_v_aux1);

    add_2x_avx2_32_2(C_v_aux, &v_a[4 * 8], &v_b[4 * 8]);

    add_2x_avx2_32_1(A_A_v_aux, &v_a[4 * 8], &v_b[4 * 8]);
    interleave(mmrA, &v_a[4 * 8], &A_A_v_aux[1 * 8], &v_a[5 * 8], &v_a[6 * 8]);
    interleave(mmrB, &v_b[4 * 8], A_A_v_aux, &v_b[5 * 8], &v_b[6 * 8]);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2_s(mmrAxB, 60, RADIX);
    deinterleave(mmrAxB, &v_c[8 * 8], A_A_v_aux1, &v_c[10 * 8], &v_c[12 * 8]);
    sub_avx2_32_2(A_A_v_aux1, &v_c[8 * 8], &v_c[10 * 8]);
    add_avx2_32_2(&v_c[9 * 8], &v_c[9 * 8], A_A_v_aux1);

    add_2x_avx2_32_1(A_A_v_aux, &C_v_aux[2 * 8], C_v_aux);
    interleave(mmrA, &C_v_aux[2 * 8], &A_A_v_aux[1 * 8], &C_v_aux[3 * 8], &v_a[7 * 8]);
    interleave(mmrB, C_v_aux, A_A_v_aux, &C_v_aux[1 * 8], &v_b[7 * 8]);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2_s(mmrAxB, 60, RADIX);
    deinterleave(mmrAxB, C_v_aux1, A_A_v_aux1, &C_v_aux1[2 * 8], &v_c[14 * 8]);
    sub_avx2_32_2(A_A_v_aux1, C_v_aux1, &C_v_aux1[2 * 8]);
    add_avx2_32_2(&C_v_aux1[1 * 8], &C_v_aux1[1 * 8], A_A_v_aux1);

    // add_2x_2x2_avx2(C_C_v_aux, &v_a[12*8], &v_b[12*8], 2);

    sub_avx2_32_2(B_B_v_aux1, &v_c[12 * 8], &v_c[14 * 8]);
    add_avx2_32_2(&v_c[13 * 8], &v_c[13 * 8], B_B_v_aux1);

    sub_avx2_32_4(C_v_aux1, &v_c[8 * 8], &v_c[12 * 8]);

    add_avx2_32_4(&v_c[10 * 8], &v_c[10 * 8], C_v_aux1);
    // +++++++++++++++++++++++++++++++++
    sub_avx2_32_8(v_aux1, v_c, &v_c[8 * 8]);

    add_avx2_32_8(&v_c[4 * 8], &v_c[4 * 8], v_aux1);
}


static inline void mult_64x64_avx2_C(int32_t *v_c, const int32_t *v_a, const int32_t *v_b)
{

    int32_t v_aux[8 * 8] __attribute__((aligned(32))) = {0};
    int32_t v_aux1[8 * 8] __attribute__((aligned(32))) = {0};
    int32_t mmrA[8 * 8] __attribute__((aligned(32))) = {0};
    int32_t mmrB[8 * 8] __attribute__((aligned(32))) = {0};
    int64_t mmrAxB[16 * 8] __attribute__((aligned(32))) = {0};

    int32_t A_v_aux[4 * 8] __attribute__((aligned(32))) = {0};
    int32_t A_v_aux1[4 * 8] __attribute__((aligned(32))) = {0};
    int32_t A_A_v_aux[2 * 8] __attribute__((aligned(32))) = {0};
    int32_t A_A_v_aux1[2 * 8] __attribute__((aligned(32))) = {0};

    int32_t B_v_aux[4 * 8] __attribute__((aligned(32))) = {0};
    int32_t B_v_aux1[4 * 8] __attribute__((aligned(32))) = {0};

    int32_t B_B_v_aux[2 * 8] __attribute__((aligned(32))) = {0};
    int32_t B_B_v_aux1[2 * 8] __attribute__((aligned(32))) = {0};

    int32_t C_v_aux[4 * 8] __attribute__((aligned(32))) = {0};
    int32_t C_v_aux1[4 * 8] __attribute__((aligned(32))) = {0};

    add_2x_avx2_32_4(v_aux, v_a, v_b);

    add_2x_avx2_32_2(A_v_aux, v_a, v_b);

    add_2x_avx2_32_1(A_A_v_aux, v_a, v_b);
    interleave(mmrA, v_a, &A_A_v_aux[1 * 8], &v_a[1 * 8], &v_a[1 * 8]);
    interleave(mmrB, v_b, A_A_v_aux, &v_b[1 * 8], &v_b[1 * 8]);
    // memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2(mmrAxB, 16, RADIX);
    deinterleave(mmrAxB, v_c, A_A_v_aux1, &v_c[2 * 8], B_B_v_aux);
    sub_avx2_32_2(A_A_v_aux1, v_c, &v_c[2 * 8]);
    add_avx2_32_2(&v_c[1 * 8], &v_c[1 * 8], A_A_v_aux1);

    add_2x_avx2_32_2(B_v_aux, &v_aux[4 * 8], v_aux);

    add_2x_avx2_32_1(A_A_v_aux, &A_v_aux[2 * 8], A_v_aux);



    interleave(mmrA, &A_v_aux[2 * 8], &A_A_v_aux[1 * 8], &A_v_aux[3 * 8], &B_v_aux[3 * 8]);
    interleave(mmrB, A_v_aux, A_A_v_aux, &A_v_aux[1 * 8], &B_v_aux[1 * 8]);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);

    // int64_t mmrAxB_test[128] = {0};
    // memcpy(mmrAxB_test, mmrAxB, sizeof(mmrAxB_test));

    carryVertical64_avx2(mmrAxB, 16, RADIX);

    
    // carryVertical64_avx2(mmrAxB, 60, RADIX);
    deinterleave(mmrAxB, A_v_aux1, A_A_v_aux1, &A_v_aux1[2 * 8], &B_v_aux1[2 * 8]);
    sub_avx2_32_2(A_A_v_aux1, A_v_aux1, &A_v_aux1[2 * 8]);
    add_avx2_32_2(&A_v_aux1[1 * 8], &A_v_aux1[1 * 8], A_A_v_aux1);

    add_2x_avx2_32_1(B_B_v_aux, &B_v_aux[2 * 8], B_v_aux);

    add_2x_avx2_32_1(A_A_v_aux, &v_a[2 * 8], &v_b[2 * 8]);
    interleave(mmrA, &v_a[2 * 8], &A_A_v_aux[1 * 8], &v_a[3 * 8], &B_B_v_aux[1 * 8]);
    interleave(mmrB, &v_b[2 * 8], A_A_v_aux, &v_b[3 * 8], B_B_v_aux);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2(mmrAxB, 16, RADIX);
    // carryVertical64_avx2_s(mmrAxB, 60, RADIX);    
    deinterleave(mmrAxB, &v_c[4 * 8], A_A_v_aux1, &v_c[6 * 8], B_B_v_aux1);
    sub_avx2_32_2(A_A_v_aux1, &v_c[4 * 8], &v_c[6 * 8]);
    add_avx2_32_2(&v_c[5 * 8], &v_c[5 * 8], A_A_v_aux1);

    sub_avx2_32_4(A_v_aux1, v_c, &v_c[4 * 8]);

    add_avx2_32_4(&v_c[2 * 8], &v_c[2 * 8], A_v_aux1);

    add_2x_avx2_32_1(A_A_v_aux, &v_aux[4 * 8], v_aux);

    interleave(mmrA, &v_aux[4 * 8], &A_A_v_aux[1 * 8], &v_aux[5 * 8], &B_v_aux[2 * 8]);
    interleave(mmrB, v_aux, A_A_v_aux, &v_aux[1 * 8], B_v_aux);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2(mmrAxB, 16, RADIX);
    deinterleave(mmrAxB, v_aux1, A_A_v_aux1, &v_aux1[2 * 8], B_v_aux1);
    sub_avx2_32_2(A_A_v_aux1, v_aux1, &v_aux1[2 * 8]);
    add_avx2_32_2(&v_aux1[1 * 8], &v_aux1[1 * 8], A_A_v_aux1);

    sub_avx2_32_2(B_B_v_aux1, B_v_aux1, &B_v_aux1[2 * 8]);

    add_avx2_32_2(&B_v_aux1[1 * 8], &B_v_aux1[1 * 8], B_B_v_aux1);

    add_2x_avx2_32_1(B_B_v_aux, &v_a[6 * 8], &v_b[6 * 8]);

    add_2x_avx2_32_1(A_A_v_aux, &v_aux[6 * 8], &v_aux[2 * 8]);
    interleave(mmrA, &v_aux[6 * 8], &A_A_v_aux[1 * 8], &v_aux[7 * 8], &B_B_v_aux[1 * 8]);
    interleave(mmrB, &v_aux[2 * 8], A_A_v_aux, &v_aux[3 * 8], B_B_v_aux);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2(mmrAxB, 16, RADIX);
    deinterleave(mmrAxB, &v_aux1[4 * 8], A_A_v_aux1, &v_aux1[6 * 8], B_B_v_aux1);
    sub_avx2_32_2(A_A_v_aux1, &v_aux1[4 * 8], &v_aux1[6 * 8]);
    add_avx2_32_2(&v_aux1[5 * 8], &v_aux1[5 * 8], A_A_v_aux1);

    sub_avx2_32_4(B_v_aux1, v_aux1, &v_aux1[4 * 8]);

    add_avx2_32_4(&v_aux1[2 * 8], &v_aux1[2 * 8], B_v_aux1);

    add_2x_avx2_32_2(C_v_aux, &v_a[4 * 8], &v_b[4 * 8]);

    add_2x_avx2_32_1(A_A_v_aux, &v_a[4 * 8], &v_b[4 * 8]);
    interleave(mmrA, &v_a[4 * 8], &A_A_v_aux[1 * 8], &v_a[5 * 8], &v_a[6 * 8]);
    interleave(mmrB, &v_b[4 * 8], A_A_v_aux, &v_b[5 * 8], &v_b[6 * 8]);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2(mmrAxB, 16, RADIX);
    deinterleave(mmrAxB, &v_c[8 * 8], A_A_v_aux1, &v_c[10 * 8], &v_c[12 * 8]);
    sub_avx2_32_2(A_A_v_aux1, &v_c[8 * 8], &v_c[10 * 8]);
    add_avx2_32_2(&v_c[9 * 8], &v_c[9 * 8], A_A_v_aux1);

    add_2x_avx2_32_1(A_A_v_aux, &C_v_aux[2 * 8], C_v_aux);
    interleave(mmrA, &C_v_aux[2 * 8], &A_A_v_aux[1 * 8], &C_v_aux[3 * 8], &v_a[7 * 8]);
    interleave(mmrB, C_v_aux, A_A_v_aux, &C_v_aux[1 * 8], &v_b[7 * 8]);
    memset(mmrAxB, 0, sizeof(mmrAxB));
    mult_interl(mmrAxB, mmrA, mmrB);
    carryVertical64_avx2(mmrAxB, 16, RADIX);
    deinterleave(mmrAxB, C_v_aux1, A_A_v_aux1, &C_v_aux1[2 * 8], &v_c[14 * 8]);
    sub_avx2_32_2(A_A_v_aux1, C_v_aux1, &C_v_aux1[2 * 8]);
    add_avx2_32_2(&C_v_aux1[1 * 8], &C_v_aux1[1 * 8], A_A_v_aux1);

    // add_2x_2x2_avx2(C_C_v_aux, &v_a[12*8], &v_b[12*8], 2);

    sub_avx2_32_2(B_B_v_aux1, &v_c[12 * 8], &v_c[14 * 8]);
    add_avx2_32_2(&v_c[13 * 8], &v_c[13 * 8], B_B_v_aux1);

    sub_avx2_32_4(C_v_aux1, &v_c[8 * 8], &v_c[12 * 8]);

    add_avx2_32_4(&v_c[10 * 8], &v_c[10 * 8], C_v_aux1);
    // +++++++++++++++++++++++++++++++++
    sub_avx2_32_8(v_aux1, v_c, &v_c[8 * 8]);

    add_avx2_32_8(&v_c[4 * 8], &v_c[4 * 8], v_aux1);
}

static inline void mult_128x128_avx2_C_neg(int32_t *v_c, const int32_t *v_a, const int32_t *v_b)
{
    int32_t v_aux[16 * 8] __attribute__((aligned(32))) = {0}, v_aux1[16 * 8] __attribute__((aligned(32))) = {0};

    add_2x_avx2_32_8(v_aux, v_a, v_b);

    mult_64x64_avx2_C_neg(v_c, v_a, v_b);
    mult_64x64_avx2_C_neg(v_aux1, &v_aux[8 * 8], v_aux);
    mult_64x64_avx2_C_neg(&v_c[16 * 8], &v_a[8 * 8], &v_b[8 * 8]);
    sub_avx2_32_16(v_aux1, v_c, &v_c[16 * 8]);
    add_avx2_32_16(&v_c[8 * 8], &v_c[8 * 8], v_aux1);
}

static inline void mult_128x128_avx2_C(int32_t *v_c, const int32_t *v_a, const int32_t *v_b)
{
    int32_t v_aux[16 * 8] __attribute__((aligned(32))) = {0}, v_aux1[16 * 8] __attribute__((aligned(32))) = {0};

    add_2x_avx2_32_8(v_aux, v_a, v_b);

    mult_64x64_avx2_C(v_c, v_a, v_b);
    mult_64x64_avx2_C(v_aux1, &v_aux[8 * 8], v_aux);
    mult_64x64_avx2_C(&v_c[16 * 8], &v_a[8 * 8], &v_b[8 * 8]);
    sub_avx2_32_16(v_aux1, v_c, &v_c[16 * 8]);
    add_avx2_32_16(&v_c[8 * 8], &v_c[8 * 8], v_aux1);
}

static inline void mult_256x256_avx2_C(int32_t *v_c, const fp v_a, const fp v_b)
{
    int32_t v_aux[32 * 8] __attribute__((aligned(32))) = {0}, v_aux1[32 * 8] __attribute__((aligned(32))) = {0};

    // int32_t v_a[256] __attribute__((aligned(32))) = {0}, v_b[256] __attribute__((aligned(32))) = {0};
    // int32_t v_c[512] __attribute__((aligned(32))) = {0};

    // convert4Karatsuba(v_a, a, 256);
    // convert4Karatsuba(v_b, b, 256);

    add_2x_avx2_32_16(v_aux, v_a, v_b);

    mult_128x128_avx2_C(v_c, v_a, v_b);
    mult_128x128_avx2_C(v_aux1, &v_aux[16 * 8], v_aux);
    mult_128x128_avx2_C(&v_c[32 * 8], &v_a[16 * 8], &v_b[16 * 8]);
    sub_avx2_32_32(v_aux1, v_c, &v_c[32 * 8]);    // 32
    add_avx2(&v_c[16 * 8], &v_c[16 * 8], v_aux1); // 32

    // convertFromKarastuba(v_result, v_c, 512);
}


static inline void mult_256x256_avx2_C_neg(int32_t *v_c, const fp v_a, const fp v_b)
{
    int32_t v_aux[32 * 8] __attribute__((aligned(32))) = {0}, v_aux1[32 * 8] __attribute__((aligned(32))) = {0};

    // int32_t v_a[256] __attribute__((aligned(32))) = {0}, v_b[256] __attribute__((aligned(32))) = {0};
    // int32_t v_c[512] __attribute__((aligned(32))) = {0};

    // convert4Karatsuba(v_a, a, 256);
    // convert4Karatsuba(v_b, b, 256);

    add_2x_avx2_32_16(v_aux, v_a, v_b);

    mult_128x128_avx2_C_neg(v_c, v_a, v_b);
    mult_128x128_avx2_C_neg(v_aux1, &v_aux[16 * 8], v_aux);
    mult_128x128_avx2_C_neg(&v_c[32 * 8], &v_a[16 * 8], &v_b[16 * 8]);
    sub_avx2_32_32(v_aux1, v_c, &v_c[32 * 8]);    // 32
    add_avx2(&v_c[16 * 8], &v_c[16 * 8], v_aux1); // 32

    // convertFromKarastuba(v_result, v_c, 512);
}



static inline void sqr_128x128_avx2_C(int32_t *v_c, const int32_t *v_a, const int32_t *v_b)
{
    int32_t v_aux[16 * 8] __attribute__((aligned(32))) = {0}, v_aux1[16 * 8] __attribute__((aligned(32))) = {0};

    add_2x_avx2_32_8(v_aux, v_a, v_b);

    sqr_64x64_avx2_C(v_c, v_a, v_b);
    sqr_64x64_avx2_C(v_aux1, &v_aux[8 * 8], v_aux);
    sqr_64x64_avx2_C(&v_c[16 * 8], &v_a[8 * 8], &v_b[8 * 8]);
    sub_avx2_32_16(v_aux1, v_c, &v_c[16 * 8]);
    add_avx2_32_16(&v_c[8 * 8], &v_c[8 * 8], v_aux1);
}

static inline void sqr_256x256_avx2_C(int32_t *v_c, const fp v_a, const fp v_b)
{
    int32_t v_aux[32 * 8] __attribute__((aligned(32))) = {0}, v_aux1[32 * 8] __attribute__((aligned(32))) = {0};

    // int32_t v_a[256] __attribute__((aligned(32))) = {0}, v_b[256] __attribute__((aligned(32))) = {0};
    // int32_t v_c[512] __attribute__((aligned(32))) = {0};

    // convert4Karatsuba(v_a, a, 256);
    // convert4Karatsuba(v_b, b, 256);

    add_2x_avx2_32_16(v_aux, v_a, v_b);

    sqr_128x128_avx2_C(v_c, v_a, v_b);
    sqr_128x128_avx2_C(v_aux1, &v_aux[16 * 8], v_aux);
    sqr_128x128_avx2_C(&v_c[32 * 8], &v_a[16 * 8], &v_b[16 * 8]);
    sub_avx2_32_32(v_aux1, v_c, &v_c[32 * 8]);    // 32
    add_avx2(&v_c[16 * 8], &v_c[16 * 8], v_aux1); // 32

    // convertFromKarastuba(v_result, v_c, 512);
}


void fp_cswap(fp x, fp y, uint8_t c)
{
    uint32_t tmp, c32;
    c32 = (uint32_t)-c;

    for (int i = 0; i < NUMBER_OF_LIMBS; i++)
    {
        tmp = (y[i] ^ x[i]) & c32;
        x[i] ^= tmp;
        y[i] ^= tmp;
    }
}

void fp_add(fp c, const fp a, const fp b)
{

    // fp test;
    // printf("add\n");
    // fflush(stdout);
    add_avx2(c, a, b);

    // if(count_add%2==0)
    if (fp_issmaller(p, c))
        fp_sub(c, c, p);

    // int32_t carryover = 0;
    // if(count_add%2==0)
    //     carry32_avx2(c, 32);
        // carry32(c, NUMBER_OF_LIMBS, RADIX, &carryover);

    carry32_avx2(c, 32);

    CNT_FP_ADD_INC();
    count_add++;
}

void fp_sub(fp c, const fp a, const fp b)
{

    // printf("sub\n");
    // fflush(stdout);
    sub_avx2(c, a, b);


    // carry32_avx2(c, 32);
    if (fp_issmaller(c, fp_0))
        fp_add(c, c, p);
    // int32_t carryover = 0;
    // carry32(c, NUMBER_OF_LIMBS, RADIX, &carryover);

    carry32_avx2(c, 32);
    CNT_FP_ADD_INC();
}

void fp_mul_wo_redc(int32_t *c, const fp a, const fp b)
{
    mult_256x256_avx2_C_neg(c, a, b);
}

void fp_mul(fp c, const fp a, const fp b)
{
    // printf("mul\n");
    // fflush(stdout);
    // if ((count_add - count_add_old) > count_add_max)
    // {
    //     count_add_max = count_add - count_add_old;
    //     // printf("%" PRIu64 "\n", count_add_max);
    // }

    // count_add_old = count_add;

    // int32_t carryover = 0;

    int32_t result[2 * NUMBER_OF_LIMBS] __attribute__((aligned(32)));
    int carryover = 0;

    mult_256x256_avx2_C(result, a, b);

#ifdef INTMONT
        /*
            see Algorithm 6 "Intermediate Montgomery reductio"
            https://eprint.iacr.org/2020/665
        */

        carry32(result, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);

        int32_t r0[2 * NUMBER_OF_LIMBS] __attribute__((aligned(32))) = {0};
        int32_t r1[2 * NUMBER_OF_LIMBS] __attribute__((aligned(32))) = {0};
        int32_t q0[128] __attribute__((aligned(32))) = {0};
        int32_t q1[128] __attribute__((aligned(32))) = {0};

        // q0
        // 112 = 2912/26
        memcpy(q0, result, 112 * sizeof(int32_t));

        // fp_copy(r1, redc_alpha);

        // r0 = q0 x alpha, where q0 = result mod 2^e
        mult_128x128_avx2_C(r0, q0, redc_alpha);

        // (a − q0)/2^e2 ~ upper bits of a
        // memcpy(tmp, result+112, sizeof(tmp));

        // carry32(r0, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);

        // r0 = (a− q0)/2^e2 + q0 × alpha
        add_redc(r0, &result[112], r0);

        carry32(r0, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);
        // carry32_avx2(r0, 64);

        // q0
        memcpy(q1, r0, 112 * sizeof(int32_t));

        mult_128x128_avx2_C(r1, q1, redc_alpha);

        carry32(r1, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);
        // carry32_avx2(r1, 64);

        add_redc(result, &r0[112], r1);

        // carry32(result, NUMBER_OF_LIMBS, RADIX, &carryover);
        carry32_avx2(result, 32);

        memcpy(c, result, NUMBER_OF_LIMBS * sizeof(int32_t));

        // fp_add(r1, r1, two_to_e_minus_p);

        // if (fp_issmaller(two_to_e, r1))
        // {
        //     printf("smalller!!!!");
        // }
#else

        /*
            see Algorithm 14.36 "Montgomery multiplication"
            https://cacr.uwaterloo.ca/hac/about/chap14.pdf
        */

        int64_t tmp64[NUMBER_OF_LIMBS + 1] __attribute__((aligned(32))) = {0x0};
        int32_t tmp32[2 * NUMBER_OF_LIMBS] __attribute__((aligned(4))) = {0};

        for (int i = 0; i < NUMBER_OF_LIMBS; i++)
        {
            // int32_t tmp = result[i];
            p_times_w(tmp64, p, result[0]);

            carryHorizontal(tmp32, tmp64, NUMBER_OF_LIMBS + 1, RADIX, &carryover);

            a_plus_u_i(result, tmp32);

            carry32(result, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);

            memcpy(result, result + 1, sizeof(result) - sizeof(int32_t));
        }

        memcpy(c, result, sizeof(fp));

        fp c_tmp;
        fp_sub(c_tmp, c, p);

        fp_cmov((fp *)c, (const fp *)c_tmp, fp_issmaller(c, p) == 0);
#endif

    CNT_FP_MUL_INC();
}

void fp_sqr(fp c, const fp a)
{
//    printf("sqr\n");
//     fflush(stdout);
    // if ((count_add - count_add_old) > count_add_max)
    // {
    //     count_add_max = count_add - count_add_old;
    //     // printf("%" PRIu64 "\n", count_add_max);
    // }

    // count_add_old = count_add;

    // int32_t carryover = 0;

    int32_t result[2 * NUMBER_OF_LIMBS] __attribute__((aligned(32))) = {0};
    int carryover = 0;

    sqr_256x256_avx2_C(result, a, a);

#ifdef INTMONT

        carry32(result, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);

        int32_t r0[2 * NUMBER_OF_LIMBS] __attribute__((aligned(32))) = {0};
        int32_t r1[2 * NUMBER_OF_LIMBS] __attribute__((aligned(32))) = {0};
        int32_t q0[128] __attribute__((aligned(32))) = {0};
        int32_t q1[128] __attribute__((aligned(32))) = {0};

        // q0
        memcpy(q0, result, 112 * sizeof(int32_t));

        // fp_copy(r1, redc_alpha);

        // r0 = q0 x alpha, where q0 = result mod 2^e
        mult_128x128_avx2_C(r0, q0, redc_alpha);

        // (a − q0)/2^e2 ~ upper bits of a
        // memcpy(tmp, result+112, sizeof(tmp));

        // carry32(r0, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);
        carry32_avx2(r0, 64);

        // r0 = (a− q0)/2^e2 + q0 × alpha
        add_redc(r0, &result[112], r0);

        // carry32(r0, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);
        carry32_avx2(r0, 64);

        // q0
        memcpy(q1, r0, 112 * sizeof(int32_t));

        mult_128x128_avx2_C(r1, q1, redc_alpha);

        carry32(r1, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);

        add_redc(result, &r0[112], r1);

        // carry32(result, NUMBER_OF_LIMBS, RADIX, &carryover);
        carry32_avx2(result, 32);

        memcpy(c, result, NUMBER_OF_LIMBS * sizeof(int32_t));

        // fp_add(r1, r1, two_to_e_minus_p);

        // if (fp_issmaller(two_to_e, r1))
        // {
        //     printf("smalller!!!!");
        // }
#else

        /*
            see Algorithm 14.36 "Montgomery multiplication"
            https://cacr.uwaterloo.ca/hac/about/chap14.pdf
        */

        int64_t tmp64[NUMBER_OF_LIMBS + 1] __attribute__((aligned(32))) = {0x0};
        int32_t tmp32[2 * NUMBER_OF_LIMBS] __attribute__((aligned(4))) = {0};

        for (int i = 0; i < NUMBER_OF_LIMBS; i++)
        {

            // int32_t tmp = result[i];
            p_times_w(tmp64, p, result[0]);

            carryHorizontal(tmp32, tmp64, NUMBER_OF_LIMBS + 1, RADIX, &carryover);

            a_plus_u_i(result, tmp32);

            carry32(result, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);

            memcpy(result, result + 1, sizeof(result) - sizeof(int32_t));
        }

        memcpy(c, result, sizeof(fp));

        // fp c_tmp;
        // fp_sub(c_tmp, c, p);

        // fp_cmov((fp *)c, (const fp *)c_tmp, fp_issmaller(c, p) == 0);
#endif

    CNT_FP_MUL_INC();
}

// void fp_copy(fp a, fp const b)
// {

//     for (int i = 0; i < NUMBER_OF_LIMBS; i++)
//     {
//         a[i] = b[i];
//     }

// }

void fp_random(fp x)
{
    // uint64_t x64[NUMBER_OF_WORDS] = {
    // 0xf084e45a62a402e1,0x5a6742ea249c5833,0x6a23f24aa2142339,0x297c255864ec1320,
    // 0x14148d253a4ce527,0xcbbb21d1b9380fe6,0x8669637113ef076b,0x83af439a5baaa5b7,
    // 0x82cd9f82936524,0x849bc296d8c2b819,0x555c2f750be49e4,0x3705b1f8aedacce2,
    // 0xb5d8acce19e4df02,0x7acc8160bca68daf,0xcede063a2a2afd35,0x6404facc6f0cae21,
    // 0xf403b630f9e3d753,0x6900d672336d0841,0x9e6779f0acdc2174,0x4eef267ff164ce4a,
    // 0xed3177d326bf33a0,0xf5b5375a82d89afa,0x6ba84ca9c6585882,0x4d4091ee5a721880,
    // 0xc00a747fdb0f4acf,0xdf1cc8d6f5a38200,0x74a5b9b7586a058a,0xef62a68e8ffd7737,
    // 0x607a5e419ecf5742,0x6d206881260e14a1,0x1d49dbc1737e80b0,0x3b8236f31ad322e3
    // };

    // convTomm256(x, x64, 16, 32, 80, 26);
    // fp_copy(x, fp_1);
    uint64_t x64[NUMBER_OF_WORDS] = {0};
    while (1)
    {
        randombytes(x64, sizeof(x64));
        uint64_t m = ((uint64_t)1 << pbits % 64) - 1;
        x64[16 - 1] &= m;

        for (size_t i = NUMBER_OF_WORDS - 1; i < NUMBER_OF_WORDS; --i)
            if (x64[i] < p64[i])
            {

                // for (int j = 0; j < NUMBER_OF_WORDS; j=j+4)
                // {
                //     printf(".quad 0x%" PRIx64 ",", x64[j]);
                //     printf("0x%" PRIx64 ",", x64[j + 1]);
                //     printf("0x%" PRIx64 ",", x64[j + 2]);
                //     printf("0x%" PRIx64 "\n", x64[j + 3]);
                // }
                // convTomm256(x, x64, 16, 32, 80, 26);
                // convTomm256(x, x64, 16, 32, 80, 26);
                conv64toBase((uint32_t *)x, x64, NUMBER_OF_LIMBS, NUMBER_OF_WORDS, RADIX);
                return;
            }
            else if (x64[i] > p64[i])
                break;
    }
}

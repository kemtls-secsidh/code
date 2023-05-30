#include <string.h>
#include <assert.h>

#include "../CTIDH/ctidh.h"
#include "primes.h"
#include "mont.h"

// For computing [(p + 1) / l_i]P, i:=0, ..., (N - 1)
void cofactor_multiples(proj P[], proj const A, size_t lower, size_t upper)
{
    assert(lower < upper);
    if (upper - lower == 1)
        return;

    int i;
    size_t mid = lower + (upper - lower + 1) / 2;

    // proj_copy(P[mid], (const fp*)P[lower]);
    fp_copy(P[mid].x, P[lower].x);
    fp_copy(P[mid].z, P[lower].z);

    for (i = lower; i < (int)mid; i++)
        xMUL_dac(&P[mid], &A, 1, &P[mid], primes_dac[i], primes_daclen[i], primes_daclen[i]);
    // xmul(P[mid], i, (const fp*)P[mid], A);

    for (i = (int)mid; i < (int)upper; i++)
        xMUL_dac(&P[lower], &A, 1, &P[lower], primes_dac[i], primes_daclen[i], primes_daclen[i]);
    // xmul(P[lower], i, (const fp*)P[lower], A);

    cofactor_multiples(P, A, lower, mid);
    cofactor_multiples(P, A, mid, upper);
}

// output: true if key is valid
// output: false if key is invalid
bool validate(public_key const *in)
{

    fp x;
#ifndef CTIDH
    int number_of_primes = N;  
    proj P[N] = {0};
#else
    int number_of_primes = primes_num;
    proj P[primes_num] = {0};
#endif

    proj A;
    // A = (a : 1)
    fp_copy(A.x, in->A);
    fp_set1(A.z);

    // Coding curve coefficients as (A' + 2C : 4C)
    fp_add(A.z, A.z, A.z); // 2C
    fp_add(A.x, A.x, A.z); // A' + 2C
    fp_add(A.z, A.z, A.z); // 4C

    int i;
    uint64_t bits;

    do
    {
        bits = 0;
        // P = (x : 1)
        fp_random(x);
        fp_copy(P[0].x, x);
        fp_set1(P[0].z);

        // Multiplying by the cofactor
#ifndef CTIDH
        xmul_cofactor(&P[0], &P[0], &A);
#else
        for (int64_t j = 0; j < two_cofactor; j++)
        {
            xDBL(&P[0], &P[0], &A, 1);
        }
#endif        

        // At this step, P[0] is expected to be a torsion-([p + 1]/[2^e]) point
        cofactor_multiples(P, A, 0, number_of_primes);
        for (i = number_of_primes - 1; i >= 0; i--)
        {
            // we only gain information if [(p+1)/l] P is non-zero
            if (fp_iszero(P[i].z) != 1)
            {
                // xmul(P[i], i, (const fp *)P[i], (const fp *)A);
                // printf("prime[i] = %lld\n", primes[i]);
                xMUL_dac(&P[i], &A, 1, &P[i], primes_dac[i], primes_daclen[i], primes_daclen[i]);

                // P does not have order dividing p + 1?
                if (fp_iszero(P[i].z) != 1)
                    return false;

                // If bits > UPPER_BOUND, hence definitely supersingular
                bits += primes_daclen[i];
                if (bits > UPPER_BOUND)
                    return true;
            };
        };

    } while (1);
}


// static int validate_rec(proj *P, proj const *A, long long lower, long long upper, uintbig *order)
// {
//     assert(lower < upper);

//     if (upper - lower == 1) {
//       // now P is [(p+1) / l_lower] times the original random point
//       if (fp_iszero(P->z))
//         return 0;

//       uintbig tmp;
//       uintbig_set(&tmp, primes[lower]);
//       xMUL_vartime(P, A, 1, P, &tmp);
//       if (!fp_iszero(P->z))
//         return -1;

//       uintbig_mul3_64(order, order, primes[lower]);

//       if (uintbig_sub3(&tmp, (const uintbig *)&uintbig_four_sqrt_p, order))
//         return 1;
//       return 0;
//     }

//     long long mid = lower + (upper - lower + 1) / 2;

//     uintbig cu = uintbig_1;
//     for (long long i = lower; i < mid; ++i)
//         uintbig_mul3_64(&cu, &cu, primes[i]);
//     proj Q;
//     xMUL_vartime(&Q, A, 1, P, &cu);
//     int result = validate_rec(&Q, A, mid, upper, order);
//     if (result) return result;

//     uintbig cl = uintbig_1;
//     for (long long i = mid; i < upper; ++i)
//         uintbig_mul3_64(&cl, &cl, primes[i]);
//     xMUL_vartime(P, A, 1, P, &cl);
//     return validate_rec(P, A, lower, mid, order);
// }

// int validate_cutofforder_v2(uintbig *order,const fp *P,const fp *A)
// {
// //   const proj Aproj = {*A,fp_1};
//     proj Aproj;
//     fp_copy(Aproj.x, *A);
//     fp_set1(Aproj.z);

//     // proj Pproj = {*P,fp_1};
//     proj Pproj;
//     fp_copy(Pproj.x, *P);
//     fp_set1(Pproj.z);    

//     proj A24;

//         xA24(&A24,&Aproj);

// #ifndef CTIDH
//     int number_of_primes = N;  

//     xmul_cofactor(&Pproj, &Pproj, &A24);
// #else

//     int number_of_primes = primes_num;  

//         for (int64_t j = 0; j < two_cofactor; j++)
//         {
//             xDBL(&Pproj, &Pproj, &A24, 1);
//         }
// #endif        

//   *order = uintbig_1;
//   return validate_rec(&Pproj,&Aproj,0,number_of_primes,order);
// }

// // output: true if key is valid
// // output: false if key is invalid
// bool validate2(public_key const *in)
// {
//   uintbig tmp;

//   if (!uintbig_sub3(&tmp,(const uintbig *)&in->A,(const uintbig *)&p))
//     return false; // A >= p, invalid

//   fp tmp2;
//   fp_set(tmp2,2);
//   if (!memcmp(&in->A,&tmp2,sizeof(fp)))
//     return false; // A = 2, invalid
//   fp_add2(&tmp2,&in->A);
//   if (fp_iszero(tmp2))
//     return false; // A = -2, invalid

//   for (;;) {
//     fp P;
//     fp_random(P);
//     switch(validate_cutofforder_v2(&tmp,(const fp *)&P,&in->A)) {
//       case 1: return true;
//       case -1: return false;
//     }
//     // case 0: P didn't have big enough order to prove supersingularity
//   }
// }   

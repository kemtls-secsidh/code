// DO NOT EDIT! generated by ./autogen

#if defined AVX2
    #include "avx2/fp-avx2.h"
#elif defined KARATSUBA
    #include "karatsuba/fp-karatsuba.h"
#else
    #include "mulx/fp.h"
#endif

// 758 mults, 5112 squarings
void fp_inv(fp x)
{
  fp r0;
  fp_copy(r0, x);
  fp r1;
  fp_sqr(r1,r0);
  fp r2;
  fp_mul(r2,r0,r1);
  fp r3;
  fp_mul(r3,r1,r2);
  fp_mul(r3,r3,r1);
  fp r4;
  fp_mul(r4,r1,r3);
  fp r5;
  fp_mul(r5,r1,r4);
  fp r6;
  fp_mul(r6,r1,r5);
  fp r7;
  fp_mul(r7,r1,r6);
  fp r8;
  fp_mul(r8,r1,r7);
  fp r9;
  fp_mul(r9,r1,r8);
  fp r10;
  fp_mul(r10,r1,r9);
  fp r11;
  fp_mul(r11,r1,r10);
  fp r12;
  fp_mul(r12,r1,r11);
  fp r13;
  fp_mul(r13,r1,r12);
  fp r14;
  fp_mul(r14,r1,r13);
  fp r15;
  fp_mul(r15,r1,r14);
  fp r16;
  fp_mul(r16,r1,r15);
  fp r17;
  fp_mul(r17,r1,r16);
  fp r18;
  fp_mul(r18,r1,r17);
  fp r19;
  fp_mul(r19,r1,r18);
  fp r20;
  fp_mul(r20,r1,r19);
  fp r21;
  fp_mul(r21,r1,r20);
  fp r22;
  fp_mul(r22,r1,r21);
  fp r23;
  fp_mul(r23,r1,r22);
  fp r24;
  fp_mul(r24,r1,r23);
  fp r25;
  fp_mul(r25,r1,r24);
  fp r26;
  fp_mul(r26,r1,r25);
  fp r27;
  fp_mul(r27,r1,r26);
  fp r28;
  fp_mul(r28,r1,r27);
  fp r29;
  fp_mul(r29,r1,r28);
  fp r30;
  fp_mul(r30,r1,r29);
  fp r31;
  fp_mul(r31,r1,r30);
  fp r32;
  fp_mul(r32,r1,r31);
  fp r33;
  fp_mul(r33,r1,r32);
  fp r34;
  fp_mul(r34,r1,r33);
  fp r35;
  fp_mul(r35,r1,r34);
  fp r36;
  fp_mul(r36,r1,r35);
  fp r37;
  fp_mul(r37,r1,r36);
  fp r38;
  fp_mul(r38,r1,r37);
  fp r39;
  fp_mul(r39,r1,r38);
  fp r40;
  fp_mul(r40,r1,r39);
  fp r41;
  fp_mul(r41,r1,r40);
  fp r42;
  fp_mul(r42,r1,r41);
  fp r43;
  fp_mul(r43,r1,r42);
  fp r44;
  fp_mul(r44,r1,r43);
  fp r45;
  fp_mul(r45,r1,r44);
  fp r46;
  fp_mul(r46,r1,r45);
  fp r47;
  fp_mul(r47,r1,r46);
  fp r48;
  fp_mul(r48,r1,r47);
  fp r49;
  fp_mul(r49,r1,r48);
  fp r50;
  fp_mul(r50,r1,r49);
  fp r51;
  fp_mul(r51,r1,r50);
  fp r52;
  fp_mul(r52,r1,r51);
  fp r53;
  fp_mul(r53,r1,r52);
  fp r54;
  fp_mul(r54,r1,r53);
  fp r55;
  fp_mul(r55,r1,r54);
  fp r56;
  fp_mul(r56,r1,r55);
  fp r57;
  fp_mul(r57,r1,r56);
  fp r58;
  fp_mul(r58,r1,r57);
  fp r59;
  fp_mul(r59,r1,r58);
  fp r60;
  fp_mul(r60,r1,r59);
  fp r61;
  fp_mul(r61,r1,r60);
  fp r62;
  fp_mul(r62,r1,r61);
  fp_mul(r1,r1,r62);
  fp r63;
  fp_mul(r63,r42,r1);
  fp_sq1_rep(r63,5);
  fp_mul(r63,r63,r43);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r44);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r58);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r58);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r49);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r60);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r44);
  fp_sq1_rep(r63,9);
  fp_mul(r63,r63,r32);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r36);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r12);
  fp_sq1_rep(r63,9);
  fp_mul(r63,r63,r36);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r44);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r31);
  fp_sq1_rep(r63,9);
  fp_mul(r63,r63,r45);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r19);
  fp_sq1_rep(r63,9);
  fp_mul(r63,r63,r61);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r17);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r4);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r27);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r9);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r4);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r8);
  fp_sq1_rep(r63,11);
  fp_mul(r63,r63,r6);
  fp_sq1_rep(r63,9);
  fp_mul(r63,r63,r14);
  fp_sq1_rep(r63,12);
  fp_mul(r63,r63,r40);
  fp_sq1_rep(r63,9);
  fp_mul(r63,r63,r57);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r30);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r15);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r33);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r19);
  fp_sq1_rep(r63,11);
  fp_mul(r63,r63,r28);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r41);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r39);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r31);
  fp_sq1_rep(r63,9);
  fp_mul(r63,r63,r59);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r61);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r56);
  fp_sq1_rep(r63,9);
  fp_mul(r63,r63,r23);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r18);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r54);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r29);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r28);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r5);
  fp_sq1_rep(r63,12);
  fp_mul(r63,r63,r60);
  fp_sq1_rep(r63,14);
  fp_mul(r63,r63,r15);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r60);
  fp_sq1_rep(r63,14);
  fp_mul(r63,r63,r27);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r42);
  fp_sq1_rep(r63,9);
  fp_mul(r63,r63,r32);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r45);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r51);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r10);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r8);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r45);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r11);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r15);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r54);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r20);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r29);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r13);
  fp_sq1_rep(r63,14);
  fp_mul(r63,r63,r27);
  fp_sq1_rep(r63,9);
  fp_mul(r63,r63,r35);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r1);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r31);
  fp_sq1_rep(r63,9);
  fp_mul(r63,r63,r61);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r37);
  fp_sq1_rep(r63,14);
  fp_mul(r63,r63,r25);
  fp_sq1_rep(r63,11);
  fp_mul(r63,r63,r59);
  fp_sq1_rep(r63,9);
  fp_mul(r63,r63,r50);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r57);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r1);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r24);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r55);
  fp_sq1_rep(r63,8);
  fp_mul(r63,r63,r28);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r51);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r23);
  fp_sq1_rep(r63,7);
  fp_mul(r63,r63,r7);
  fp_sq1_rep(r63,13);
  fp_mul(r55,r55,r63);
  fp_sq1_rep(r55,7);
  fp_mul(r55,r55,r49);
  fp_sq1_rep(r55,10);
  fp_mul(r55,r55,r58);
  fp_sq1_rep(r55,8);
  fp_mul(r55,r55,r27);
  fp_sq1_rep(r55,7);
  fp_mul(r55,r55,r27);
  fp_sq1_rep(r55,7);
  fp_mul(r55,r55,r33);
  fp_sq1_rep(r55,7);
  fp_mul(r55,r55,r38);
  fp_sq1_rep(r55,8);
  fp_mul(r55,r55,r53);
  fp_sq1_rep(r55,8);
  fp_mul(r55,r55,r61);
  fp_sq1_rep(r55,8);
  fp_mul(r55,r55,r12);
  fp_sq1_rep(r55,7);
  fp_mul(r55,r55,r5);
  fp_sq1_rep(r55,7);
  fp_mul(r25,r25,r55);
  fp_sq1_rep(r25,10);
  fp_mul(r25,r25,r23);
  fp_sq1_rep(r25,7);
  fp_mul(r25,r25,r41);
  fp_sq1_rep(r25,7);
  fp_mul(r25,r25,r56);
  fp_sq1_rep(r25,9);
  fp_mul(r25,r25,r32);
  fp_sq1_rep(r25,8);
  fp_mul(r25,r25,r42);
  fp_sq1_rep(r25,7);
  fp_mul(r25,r25,r44);
  fp_sq1_rep(r25,7);
  fp_mul(r25,r25,r57);
  fp_sq1_rep(r25,8);
  fp_mul(r25,r25,r41);
  fp_sq1_rep(r25,7);
  fp_mul(r25,r25,r12);
  fp_sq1_rep(r25,7);
  fp_mul(r25,r25,r16);
  fp_sq1_rep(r25,7);
  fp_mul(r8,r8,r25);
  fp_sq1_rep(r8,7);
  fp_mul(r8,r8,r41);
  fp_sq1_rep(r8,7);
  fp_mul(r8,r8,r33);
  fp_sq1_rep(r8,7);
  fp_mul(r8,r8,r26);
  fp_sq1_rep(r8,8);
  fp_mul(r8,r8,r29);
  fp_sq1_rep(r8,7);
  fp_mul(r8,r8,r30);
  fp_sq1_rep(r8,7);
  fp_mul(r8,r8,r42);
  fp_sq1_rep(r8,7);
  fp_mul(r8,r8,r22);
  fp_sq1_rep(r8,7);
  fp_mul(r8,r8,r31);
  fp_sq1_rep(r8,7);
  fp_mul(r8,r8,r2);
  fp_sq1_rep(r8,9);
  fp_mul(r8,r8,r33);
  fp_sq1_rep(r8,7);
  fp_mul(r8,r8,r37);
  fp_sq1_rep(r8,7);
  fp_mul(r8,r8,r10);
  fp_sq1_rep(r8,8);
  fp_mul(r8,r8,r13);
  fp_sq1_rep(r8,7);
  fp_mul(r8,r8,r12);
  fp_sq1_rep(r8,8);
  fp_mul(r8,r8,r6);
  fp_sq1_rep(r8,7);
  fp_mul(r8,r8,r45);
  fp_sq1_rep(r8,8);
  fp_mul(r7,r7,r8);
  fp_sq1_rep(r7,7);
  fp_mul(r7,r7,r5);
  fp_sq1_rep(r7,9);
  fp_mul(r7,r7,r9);
  fp_sq1_rep(r7,9);
  fp_mul(r7,r7,r26);
  fp_sq1_rep(r7,7);
  fp_mul(r7,r7,r26);
  fp_sq1_rep(r7,7);
  fp_mul(r7,r7,r18);
  fp_sq1_rep(r7,10);
  fp_mul(r7,r7,r2);
  fp_sq1_rep(r7,7);
  fp_mul(r7,r7,r30);
  fp_sq1_rep(r7,9);
  fp_mul(r7,r7,r4);
  fp_sq1_rep(r7,8);
  fp_mul(r7,r7,r6);
  fp_sq1_rep(r7,7);
  fp_mul(r7,r7,r60);
  fp_sq1_rep(r7,7);
  fp_mul(r7,r7,r59);
  fp_sq1_rep(r7,7);
  fp_mul(r3,r3,r7);
  fp_sq1_rep(r3,10);
  fp_mul(r3,r3,r35);
  fp_sq1_rep(r3,11);
  fp_mul(r3,r3,r27);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r11);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r40);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r42);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r45);
  fp_sq1_rep(r3,10);
  fp_mul(r3,r3,r41);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r11);
  fp_sq1_rep(r3,9);
  fp_mul(r3,r3,r22);
  fp_sq1_rep(r3,11);
  fp_mul(r3,r3,r34);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r33);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r48);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r52);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r36);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r17);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r56);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r22);
  fp_sq1_rep(r3,9);
  fp_mul(r3,r3,r27);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r39);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r41);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r47);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r9);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r20);
  fp_sq1_rep(r3,9);
  fp_mul(r3,r3,r30);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r26);
  fp_sq1_rep(r3,10);
  fp_mul(r3,r3,r24);
  fp_sq1_rep(r3,10);
  fp_mul(r3,r3,r41);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r10);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r26);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r43);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r42);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r27);
  fp_sq1_rep(r3,11);
  fp_mul(r3,r3,r48);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r31);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r47);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r53);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r56);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r11);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r0);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r59);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r14);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r62);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r46);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r36);
  fp_sq1_rep(r3,9);
  fp_mul(r3,r3,r39);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r54);
  fp_sq1_rep(r3,13);
  fp_mul(r3,r3,r51);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r49);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r50);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r21);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r13);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r57);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r35);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r62);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r6);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r56);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r40);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r38);
  fp_sq1_rep(r3,9);
  fp_mul(r3,r3,r15);
  fp_sq1_rep(r3,9);
  fp_mul(r3,r3,r5);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r32);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r47);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r26);
  fp_sq1_rep(r3,13);
  fp_mul(r3,r3,r35);
  fp_sq1_rep(r3,9);
  fp_mul(r3,r3,r27);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r4);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r13);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r14);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r35);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r19);
  fp_sq1_rep(r3,9);
  fp_mul(r3,r3,r51);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r19);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r21);
  fp_sq1_rep(r3,9);
  fp_mul(r3,r3,r56);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r28);
  fp_sq1_rep(r3,9);
  fp_mul(r3,r3,r21);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r48);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r39);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r44);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r39);
  fp_sq1_rep(r3,10);
  fp_mul(r3,r3,r37);
  fp_sq1_rep(r3,9);
  fp_mul(r3,r3,r21);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r12);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r43);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r29);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r0);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r48);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r14);
  fp_sq1_rep(r3,10);
  fp_mul(r3,r3,r12);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r10);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r0);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r33);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r59);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r13);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r33);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r19);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r23);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r36);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r52);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r28);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r4);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r4);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r0);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r52);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r48);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r59);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r20);
  fp_sq1_rep(r3,9);
  fp_mul(r3,r3,r43);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r60);
  fp_sq1_rep(r3,7);
  fp_mul(r3,r3,r62);
  fp_sq1_rep(r3,8);
  fp_mul(r3,r3,r39);
  fp_sq1_rep(r3,7);
  fp_mul(r0,r0,r3);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r23);
  fp_sq1_rep(r0,10);
  fp_mul(r0,r0,r13);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r23);
  fp_sq1_rep(r0,8);
  fp_mul(r0,r0,r58);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r28);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r62);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r56);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r33);
  fp_sq1_rep(r0,8);
  fp_mul(r0,r0,r58);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r44);
  fp_sq1_rep(r0,8);
  fp_mul(r0,r0,r19);
  fp_sq1_rep(r0,9);
  fp_mul(r0,r0,r38);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r35);
  fp_sq1_rep(r0,8);
  fp_mul(r0,r0,r11);
  fp_sq1_rep(r0,14);
  fp_mul(r0,r0,r43);
  fp_sq1_rep(r0,8);
  fp_mul(r0,r0,r31);
  fp_sq1_rep(r0,8);
  fp_mul(r0,r0,r58);
  fp_sq1_rep(r0,9);
  fp_mul(r0,r0,r60);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r2);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r51);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r41);
  fp_sq1_rep(r0,9);
  fp_mul(r0,r0,r16);
  fp_sq1_rep(r0,8);
  fp_mul(r0,r0,r62);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r12);
  fp_sq1_rep(r0,8);
  fp_mul(r0,r0,r29);
  fp_sq1_rep(r0,8);
  fp_mul(r0,r0,r41);
  fp_sq1_rep(r0,10);
  fp_mul(r0,r0,r19);
  fp_sq1_rep(r0,8);
  fp_mul(r0,r0,r35);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r41);
  fp_sq1_rep(r0,9);
  fp_mul(r0,r0,r52);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r36);
  fp_sq1_rep(r0,8);
  fp_mul(r0,r0,r38);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r23);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r1);
  fp_sq1_rep(r0,7);
  fp_mul(r0,r0,r62);
  fp_copy(x, r0);
}

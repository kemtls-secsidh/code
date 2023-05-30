.intel_syntax noprefix

.section .rodata

.set pbits,4095
.set pbytes,512
.set plimbs,64

.global secsidh_internal_4095k256_fp_2
secsidh_internal_4095k256_fp_2:
.quad 7, 0, 0, 0
.quad 0, 0, 0, 0
.quad 0, 0, 0, 0
.quad 0, 0, 0, 0
.quad 0, 0, 0, 0
.quad 0, 0, 0, 0
.quad 0, 0, 0x5fb21a289636f14d, 0x39442b4d361b8a21
.quad 0x1e8e5f8a4101acda, 0x1f5739a3c666fc58, 0x7addf8ef707ced77, 0xdf09d1d81b2bbda9
.quad 0x92d27dde8ebbabd7, 0x342fd729a38e6f98, 0xa2b602ec4001d933, 0x9fcf59b980f7fe65
.quad 0x3844e703eb584698, 0x62d5a006d844ef1d, 0xd8832853331fd9b9, 0xeebfa456569e2115
.quad 0xe869941ac57c2c83, 0xad8b9ec13de881d0, 0x0a17352daab7b6c6, 0x81d2746cdc149dae
.quad 0x03b84fe32cfc41c9, 0xe72a814e23881515, 0x2f221aaa4b668bda, 0x34973043932abd82
.quad 0x2ad9b683eaf1bd2a, 0x019244b4f29b4e89, 0xb2ac025679a736b8, 0x92d959d55d039342
.quad 0x7aa48fb2c204d50f, 0x4b541749300d98b3, 0x62c2a418a99f316d, 0x50ba008341e383a7
.quad 0xf3861eb559aabf02, 0x9118c11dc3eba8c2, 0xee53850ec5099a88, 0xb945957563aa6049
.quad 0x5c24903d874b4dee, 0x53eb54f163339ca4, 0x4ea2c108f0b6600b, 0x08e63c80ff11647e

.section .text


.macro add_32x32
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 31
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rdi + 32*8]
    adc rax, 0
    mov [rdi + 32*8], rax
.endm

.macro sub_d_66x64_woc
# push
    push rbx
    push rbp
    push rsi
    push r12
    push r13
    push r14
    push r15

# intro
    mov rax, [rdi + 0*8]
    mov rbx, [rdi + 1*8]
    mov rcx, [rdi + 2*8]
    mov r8, [rdi + 3*8]
    mov r9, [rdi + 4*8]
    mov r10, [rdi + 5*8]
    mov r11, [rdi + 6*8]
    mov r12, [rdi + 7*8]
    mov r13, [rdi + 8*8]
    mov r14, [rdi + 9*8]
    mov r15, [rdi + 10*8]
# loop
    sub rax, [rsi + 0*8]
    sbb rbx, 0
    sub rax, [rdx + 0*8]
    sbb rbx, [rsi + 1*8]
    sbb rcx, 0
    sub rbx, [rdx + 1*8]
    sbb rcx, [rsi + 2*8]
    sbb r8, 0
    sub rcx, [rdx + 2*8]
    sbb r8, [rsi + 3*8]
    sbb r9, 0
    sub r8, [rdx + 3*8]
    sbb r9, [rsi + 4*8]
    sbb r10, 0
    sub r9, [rdx + 4*8]
    sbb r10, [rsi + 5*8]
    sbb r11, 0
    sub r10, [rdx + 5*8]
    sbb r11, [rsi + 6*8]
    sbb r12, 0
    sub r11, [rdx + 6*8]
    sbb r12, [rsi + 7*8]
    sbb r13, 0
    sub r12, [rdx + 7*8]
    sbb r13, [rsi + 8*8]
    sbb r14, 0
    sub r13, [rdx + 8*8]
    sbb r14, [rsi + 9*8]
    sbb r15, 0
    sub r14, [rdx + 9*8]
# ------------------
    mov [rdi + 0*8], rax
    mov [rdi + 1*8], rbx
    mov [rdi + 2*8], rcx
    mov [rdi + 3*8], r8
    mov [rdi + 4*8], r9
    mov [rdi + 5*8], r10
    mov [rdi + 6*8], r11
    mov [rdi + 7*8], r12
    mov [rdi + 8*8], r13
    mov [rdi + 9*8], r14
    mov rax, [rdi + 11*8]
    mov rbx, [rdi + 12*8]
    mov rcx, [rdi + 13*8]
    mov r8, [rdi + 14*8]
    mov r9, [rdi + 15*8]
    mov r10, [rdi + 16*8]
    mov r11, [rdi + 17*8]
    mov r12, [rdi + 18*8]
    mov r13, [rdi + 19*8]
    mov r14, [rdi + 20*8]
    sbb r15, [rsi + 10*8]
    sbb rax, 0
    sub r15, [rdx + 10*8]
    sbb rax, [rsi + 11*8]
    sbb rbx, 0
    sub rax, [rdx + 11*8]
    sbb rbx, [rsi + 12*8]
    sbb rcx, 0
    sub rbx, [rdx + 12*8]
    sbb rcx, [rsi + 13*8]
    sbb r8, 0
    sub rcx, [rdx + 13*8]
    sbb r8, [rsi + 14*8]
    sbb r9, 0
    sub r8, [rdx + 14*8]
    sbb r9, [rsi + 15*8]
    sbb r10, 0
    sub r9, [rdx + 15*8]
    sbb r10, [rsi + 16*8]
    sbb r11, 0
    sub r10, [rdx + 16*8]
    sbb r11, [rsi + 17*8]
    sbb r12, 0
    sub r11, [rdx + 17*8]
    sbb r12, [rsi + 18*8]
    sbb r13, 0
    sub r12, [rdx + 18*8]
    sbb r13, [rsi + 19*8]
    sbb r14, 0
    sub r13, [rdx + 19*8]
# ------------------
    mov [rdi + 10*8], r15
    mov [rdi + 11*8], rax
    mov [rdi + 12*8], rbx
    mov [rdi + 13*8], rcx
    mov [rdi + 14*8], r8
    mov [rdi + 15*8], r9
    mov [rdi + 16*8], r10
    mov [rdi + 17*8], r11
    mov [rdi + 18*8], r12
    mov [rdi + 19*8], r13
    mov r15, [rdi + 21*8]
    mov rax, [rdi + 22*8]
    mov rbx, [rdi + 23*8]
    mov rcx, [rdi + 24*8]
    mov r8, [rdi + 25*8]
    mov r9, [rdi + 26*8]
    mov r10, [rdi + 27*8]
    mov r11, [rdi + 28*8]
    mov r12, [rdi + 29*8]
    mov r13, [rdi + 30*8]
    sbb r14, [rsi + 20*8]
    sbb r15, 0
    sub r14, [rdx + 20*8]
    sbb r15, [rsi + 21*8]
    sbb rax, 0
    sub r15, [rdx + 21*8]
    sbb rax, [rsi + 22*8]
    sbb rbx, 0
    sub rax, [rdx + 22*8]
    sbb rbx, [rsi + 23*8]
    sbb rcx, 0
    sub rbx, [rdx + 23*8]
    sbb rcx, [rsi + 24*8]
    sbb r8, 0
    sub rcx, [rdx + 24*8]
    sbb r8, [rsi + 25*8]
    sbb r9, 0
    sub r8, [rdx + 25*8]
    sbb r9, [rsi + 26*8]
    sbb r10, 0
    sub r9, [rdx + 26*8]
    sbb r10, [rsi + 27*8]
    sbb r11, 0
    sub r10, [rdx + 27*8]
    sbb r11, [rsi + 28*8]
    sbb r12, 0
    sub r11, [rdx + 28*8]
    sbb r12, [rsi + 29*8]
    sbb r13, 0
    sub r12, [rdx + 29*8]
# ------------------
    mov [rdi + 20*8], r14
    mov [rdi + 21*8], r15
    mov [rdi + 22*8], rax
    mov [rdi + 23*8], rbx
    mov [rdi + 24*8], rcx
    mov [rdi + 25*8], r8
    mov [rdi + 26*8], r9
    mov [rdi + 27*8], r10
    mov [rdi + 28*8], r11
    mov [rdi + 29*8], r12
    mov r14, [rdi + 31*8]
    mov r15, [rdi + 32*8]
    mov rax, [rdi + 33*8]
    mov rbx, [rdi + 34*8]
    mov rcx, [rdi + 35*8]
    mov r8, [rdi + 36*8]
    mov r9, [rdi + 37*8]
    mov r10, [rdi + 38*8]
    mov r11, [rdi + 39*8]
    mov r12, [rdi + 40*8]
    sbb r13, [rsi + 30*8]
    sbb r14, 0
    sub r13, [rdx + 30*8]
    sbb r14, [rsi + 31*8]
    sbb r15, 0
    sub r14, [rdx + 31*8]
    sbb r15, [rsi + 32*8]
    sbb rax, 0
    sub r15, [rdx + 32*8]
    sbb rax, [rsi + 33*8]
    sbb rbx, 0
    sub rax, [rdx + 33*8]
    sbb rbx, [rsi + 34*8]
    sbb rcx, 0
    sub rbx, [rdx + 34*8]
    sbb rcx, [rsi + 35*8]
    sbb r8, 0
    sub rcx, [rdx + 35*8]
    sbb r8, [rsi + 36*8]
    sbb r9, 0
    sub r8, [rdx + 36*8]
    sbb r9, [rsi + 37*8]
    sbb r10, 0
    sub r9, [rdx + 37*8]
    sbb r10, [rsi + 38*8]
    sbb r11, 0
    sub r10, [rdx + 38*8]
    sbb r11, [rsi + 39*8]
    sbb r12, 0
    sub r11, [rdx + 39*8]
# ------------------
    mov [rdi + 30*8], r13
    mov [rdi + 31*8], r14
    mov [rdi + 32*8], r15
    mov [rdi + 33*8], rax
    mov [rdi + 34*8], rbx
    mov [rdi + 35*8], rcx
    mov [rdi + 36*8], r8
    mov [rdi + 37*8], r9
    mov [rdi + 38*8], r10
    mov [rdi + 39*8], r11
    mov r13, [rdi + 41*8]
    mov r14, [rdi + 42*8]
    mov r15, [rdi + 43*8]
    mov rax, [rdi + 44*8]
    mov rbx, [rdi + 45*8]
    mov rcx, [rdi + 46*8]
    mov r8, [rdi + 47*8]
    mov r9, [rdi + 48*8]
    mov r10, [rdi + 49*8]
    mov r11, [rdi + 50*8]
    sbb r12, [rsi + 40*8]
    sbb r13, 0
    sub r12, [rdx + 40*8]
    sbb r13, [rsi + 41*8]
    sbb r14, 0
    sub r13, [rdx + 41*8]
    sbb r14, [rsi + 42*8]
    sbb r15, 0
    sub r14, [rdx + 42*8]
    sbb r15, [rsi + 43*8]
    sbb rax, 0
    sub r15, [rdx + 43*8]
    sbb rax, [rsi + 44*8]
    sbb rbx, 0
    sub rax, [rdx + 44*8]
    sbb rbx, [rsi + 45*8]
    sbb rcx, 0
    sub rbx, [rdx + 45*8]
    sbb rcx, [rsi + 46*8]
    sbb r8, 0
    sub rcx, [rdx + 46*8]
    sbb r8, [rsi + 47*8]
    sbb r9, 0
    sub r8, [rdx + 47*8]
    sbb r9, [rsi + 48*8]
    sbb r10, 0
    sub r9, [rdx + 48*8]
    sbb r10, [rsi + 49*8]
    sbb r11, 0
    sub r10, [rdx + 49*8]
# ------------------
    mov [rdi + 40*8], r12
    mov [rdi + 41*8], r13
    mov [rdi + 42*8], r14
    mov [rdi + 43*8], r15
    mov [rdi + 44*8], rax
    mov [rdi + 45*8], rbx
    mov [rdi + 46*8], rcx
    mov [rdi + 47*8], r8
    mov [rdi + 48*8], r9
    mov [rdi + 49*8], r10
    mov r12, [rdi + 51*8]
    mov r13, [rdi + 52*8]
    mov r14, [rdi + 53*8]
    mov r15, [rdi + 54*8]
    mov rax, [rdi + 55*8]
    mov rbx, [rdi + 56*8]
    mov rcx, [rdi + 57*8]
    mov r8, [rdi + 58*8]
    mov r9, [rdi + 59*8]
    mov r10, [rdi + 60*8]
    sbb r11, [rsi + 50*8]
    sbb r12, 0
    sub r11, [rdx + 50*8]
    sbb r12, [rsi + 51*8]
    sbb r13, 0
    sub r12, [rdx + 51*8]
    sbb r13, [rsi + 52*8]
    sbb r14, 0
    sub r13, [rdx + 52*8]
    sbb r14, [rsi + 53*8]
    sbb r15, 0
    sub r14, [rdx + 53*8]
    sbb r15, [rsi + 54*8]
    sbb rax, 0
    sub r15, [rdx + 54*8]
    sbb rax, [rsi + 55*8]
    sbb rbx, 0
    sub rax, [rdx + 55*8]
    sbb rbx, [rsi + 56*8]
    sbb rcx, 0
    sub rbx, [rdx + 56*8]
    sbb rcx, [rsi + 57*8]
    sbb r8, 0
    sub rcx, [rdx + 57*8]
    sbb r8, [rsi + 58*8]
    sbb r9, 0
    sub r8, [rdx + 58*8]
    sbb r9, [rsi + 59*8]
    sbb r10, 0
    sub r9, [rdx + 59*8]
# ------------------
    mov [rdi + 50*8], r11
    mov [rdi + 51*8], r12
    mov [rdi + 52*8], r13
    mov [rdi + 53*8], r14
    mov [rdi + 54*8], r15
    mov [rdi + 55*8], rax
    mov [rdi + 56*8], rbx
    mov [rdi + 57*8], rcx
    mov [rdi + 58*8], r8
    mov [rdi + 59*8], r9
    mov r11, [rdi + 61*8]
    mov r12, [rdi + 62*8]
    mov r13, [rdi + 63*8]
    mov r14, [rdi + 64*8]
    sbb r10, [rsi + 60*8]
    sbb r11, 0
    sub r10, [rdx + 60*8]
    sbb r11, [rsi + 61*8]
    sbb r12, 0
    sub r11, [rdx + 61*8]
    sbb r12, [rsi + 62*8]
    sbb r13, 0
    sub r12, [rdx + 62*8]
    sbb r13, [rsi + 63*8]
    sbb r14, 0
    sub r13, [rdx + 63*8]
# ------------------
    mov [rdi + 60*8], r10
    mov [rdi + 61*8], r11
    mov [rdi + 62*8], r12
    mov [rdi + 63*8], r13
# outro
    sbb r14, 0
    mov [rdi + 64*8], r14
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_66x65
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 64
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*65]
    adc rax, 0
    mov [rdi + 8*65], rax
.endm

.macro add_16x16
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 15
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rdi + 16*8]
    adc rax, 0
    mov [rdi + 16*8], rax
.endm

.macro sub_d_34x32_woc
# push
    push rbx
    push rbp
    push rsi
    push r12
    push r13
    push r14
    push r15

# intro
    mov rax, [rdi + 0*8]
    mov rbx, [rdi + 1*8]
    mov rcx, [rdi + 2*8]
    mov r8, [rdi + 3*8]
    mov r9, [rdi + 4*8]
    mov r10, [rdi + 5*8]
    mov r11, [rdi + 6*8]
    mov r12, [rdi + 7*8]
    mov r13, [rdi + 8*8]
    mov r14, [rdi + 9*8]
    mov r15, [rdi + 10*8]
# loop
    sub rax, [rsi + 0*8]
    sbb rbx, 0
    sub rax, [rdx + 0*8]
    sbb rbx, [rsi + 1*8]
    sbb rcx, 0
    sub rbx, [rdx + 1*8]
    sbb rcx, [rsi + 2*8]
    sbb r8, 0
    sub rcx, [rdx + 2*8]
    sbb r8, [rsi + 3*8]
    sbb r9, 0
    sub r8, [rdx + 3*8]
    sbb r9, [rsi + 4*8]
    sbb r10, 0
    sub r9, [rdx + 4*8]
    sbb r10, [rsi + 5*8]
    sbb r11, 0
    sub r10, [rdx + 5*8]
    sbb r11, [rsi + 6*8]
    sbb r12, 0
    sub r11, [rdx + 6*8]
    sbb r12, [rsi + 7*8]
    sbb r13, 0
    sub r12, [rdx + 7*8]
    sbb r13, [rsi + 8*8]
    sbb r14, 0
    sub r13, [rdx + 8*8]
    sbb r14, [rsi + 9*8]
    sbb r15, 0
    sub r14, [rdx + 9*8]
# ------------------
    mov [rdi + 0*8], rax
    mov [rdi + 1*8], rbx
    mov [rdi + 2*8], rcx
    mov [rdi + 3*8], r8
    mov [rdi + 4*8], r9
    mov [rdi + 5*8], r10
    mov [rdi + 6*8], r11
    mov [rdi + 7*8], r12
    mov [rdi + 8*8], r13
    mov [rdi + 9*8], r14
    mov rax, [rdi + 11*8]
    mov rbx, [rdi + 12*8]
    mov rcx, [rdi + 13*8]
    mov r8, [rdi + 14*8]
    mov r9, [rdi + 15*8]
    mov r10, [rdi + 16*8]
    mov r11, [rdi + 17*8]
    mov r12, [rdi + 18*8]
    mov r13, [rdi + 19*8]
    mov r14, [rdi + 20*8]
    sbb r15, [rsi + 10*8]
    sbb rax, 0
    sub r15, [rdx + 10*8]
    sbb rax, [rsi + 11*8]
    sbb rbx, 0
    sub rax, [rdx + 11*8]
    sbb rbx, [rsi + 12*8]
    sbb rcx, 0
    sub rbx, [rdx + 12*8]
    sbb rcx, [rsi + 13*8]
    sbb r8, 0
    sub rcx, [rdx + 13*8]
    sbb r8, [rsi + 14*8]
    sbb r9, 0
    sub r8, [rdx + 14*8]
    sbb r9, [rsi + 15*8]
    sbb r10, 0
    sub r9, [rdx + 15*8]
    sbb r10, [rsi + 16*8]
    sbb r11, 0
    sub r10, [rdx + 16*8]
    sbb r11, [rsi + 17*8]
    sbb r12, 0
    sub r11, [rdx + 17*8]
    sbb r12, [rsi + 18*8]
    sbb r13, 0
    sub r12, [rdx + 18*8]
    sbb r13, [rsi + 19*8]
    sbb r14, 0
    sub r13, [rdx + 19*8]
# ------------------
    mov [rdi + 10*8], r15
    mov [rdi + 11*8], rax
    mov [rdi + 12*8], rbx
    mov [rdi + 13*8], rcx
    mov [rdi + 14*8], r8
    mov [rdi + 15*8], r9
    mov [rdi + 16*8], r10
    mov [rdi + 17*8], r11
    mov [rdi + 18*8], r12
    mov [rdi + 19*8], r13
    mov r15, [rdi + 21*8]
    mov rax, [rdi + 22*8]
    mov rbx, [rdi + 23*8]
    mov rcx, [rdi + 24*8]
    mov r8, [rdi + 25*8]
    mov r9, [rdi + 26*8]
    mov r10, [rdi + 27*8]
    mov r11, [rdi + 28*8]
    mov r12, [rdi + 29*8]
    mov r13, [rdi + 30*8]
    sbb r14, [rsi + 20*8]
    sbb r15, 0
    sub r14, [rdx + 20*8]
    sbb r15, [rsi + 21*8]
    sbb rax, 0
    sub r15, [rdx + 21*8]
    sbb rax, [rsi + 22*8]
    sbb rbx, 0
    sub rax, [rdx + 22*8]
    sbb rbx, [rsi + 23*8]
    sbb rcx, 0
    sub rbx, [rdx + 23*8]
    sbb rcx, [rsi + 24*8]
    sbb r8, 0
    sub rcx, [rdx + 24*8]
    sbb r8, [rsi + 25*8]
    sbb r9, 0
    sub r8, [rdx + 25*8]
    sbb r9, [rsi + 26*8]
    sbb r10, 0
    sub r9, [rdx + 26*8]
    sbb r10, [rsi + 27*8]
    sbb r11, 0
    sub r10, [rdx + 27*8]
    sbb r11, [rsi + 28*8]
    sbb r12, 0
    sub r11, [rdx + 28*8]
    sbb r12, [rsi + 29*8]
    sbb r13, 0
    sub r12, [rdx + 29*8]
# ------------------
    mov [rdi + 20*8], r14
    mov [rdi + 21*8], r15
    mov [rdi + 22*8], rax
    mov [rdi + 23*8], rbx
    mov [rdi + 24*8], rcx
    mov [rdi + 25*8], r8
    mov [rdi + 26*8], r9
    mov [rdi + 27*8], r10
    mov [rdi + 28*8], r11
    mov [rdi + 29*8], r12
    mov r14, [rdi + 31*8]
    mov r15, [rdi + 32*8]
    sbb r13, [rsi + 30*8]
    sbb r14, 0
    sub r13, [rdx + 30*8]
    sbb r14, [rsi + 31*8]
    sbb r15, 0
    sub r14, [rdx + 31*8]
# ------------------
    mov [rdi + 30*8], r13
    mov [rdi + 31*8], r14
# outro
    sbb r15, 0
    mov [rdi + 32*8], r15
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_34x33
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 32
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*33]
    adc rax, 0
    mov [rdi + 8*33], rax
.endm

.macro add_8x8
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 7
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rdi + 8*8]
    adc rax, 0
    mov [rdi + 8*8], rax
.endm

.macro sub_d_18x16_woc
# push
    push rbx
    push rbp
    push rsi
    push r12
    push r13
    push r14
    push r15

# intro
    mov rax, [rdi + 0*8]
    mov rbx, [rdi + 1*8]
    mov rcx, [rdi + 2*8]
    mov r8, [rdi + 3*8]
    mov r9, [rdi + 4*8]
    mov r10, [rdi + 5*8]
    mov r11, [rdi + 6*8]
    mov r12, [rdi + 7*8]
    mov r13, [rdi + 8*8]
    mov r14, [rdi + 9*8]
    mov r15, [rdi + 10*8]
# loop
    sub rax, [rsi + 0*8]
    sbb rbx, 0
    sub rax, [rdx + 0*8]
    sbb rbx, [rsi + 1*8]
    sbb rcx, 0
    sub rbx, [rdx + 1*8]
    sbb rcx, [rsi + 2*8]
    sbb r8, 0
    sub rcx, [rdx + 2*8]
    sbb r8, [rsi + 3*8]
    sbb r9, 0
    sub r8, [rdx + 3*8]
    sbb r9, [rsi + 4*8]
    sbb r10, 0
    sub r9, [rdx + 4*8]
    sbb r10, [rsi + 5*8]
    sbb r11, 0
    sub r10, [rdx + 5*8]
    sbb r11, [rsi + 6*8]
    sbb r12, 0
    sub r11, [rdx + 6*8]
    sbb r12, [rsi + 7*8]
    sbb r13, 0
    sub r12, [rdx + 7*8]
    sbb r13, [rsi + 8*8]
    sbb r14, 0
    sub r13, [rdx + 8*8]
    sbb r14, [rsi + 9*8]
    sbb r15, 0
    sub r14, [rdx + 9*8]
# ------------------
    mov [rdi + 0*8], rax
    mov [rdi + 1*8], rbx
    mov [rdi + 2*8], rcx
    mov [rdi + 3*8], r8
    mov [rdi + 4*8], r9
    mov [rdi + 5*8], r10
    mov [rdi + 6*8], r11
    mov [rdi + 7*8], r12
    mov [rdi + 8*8], r13
    mov [rdi + 9*8], r14
    mov rax, [rdi + 11*8]
    mov rbx, [rdi + 12*8]
    mov rcx, [rdi + 13*8]
    mov r8, [rdi + 14*8]
    mov r9, [rdi + 15*8]
    mov r10, [rdi + 16*8]
    sbb r15, [rsi + 10*8]
    sbb rax, 0
    sub r15, [rdx + 10*8]
    sbb rax, [rsi + 11*8]
    sbb rbx, 0
    sub rax, [rdx + 11*8]
    sbb rbx, [rsi + 12*8]
    sbb rcx, 0
    sub rbx, [rdx + 12*8]
    sbb rcx, [rsi + 13*8]
    sbb r8, 0
    sub rcx, [rdx + 13*8]
    sbb r8, [rsi + 14*8]
    sbb r9, 0
    sub r8, [rdx + 14*8]
    sbb r9, [rsi + 15*8]
    sbb r10, 0
    sub r9, [rdx + 15*8]
# ------------------
    mov [rdi + 10*8], r15
    mov [rdi + 11*8], rax
    mov [rdi + 12*8], rbx
    mov [rdi + 13*8], rcx
    mov [rdi + 14*8], r8
    mov [rdi + 15*8], r9
# outro
    sbb r10, 0
    mov [rdi + 16*8], r10
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_18x17
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 16
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*17]
    adc rax, 0
    mov [rdi + 8*17], rax
.endm

.macro mult_8x8
# push
    push rbx
    push rbp
    push rsi
    push r12
    push r13
    push r14
    push r15

# intro 
    mov rbp, rdx
    mov rdx, [rbp]
    mulx r14, rcx, [rsi + 0*8]
    mov [rdi + 0*8], rcx
    mulx r13, rax, [rsi + 1*8]
    add r14, rax
    mulx r12, rax, [rsi + 2*8]
    adc r13, rax
    mulx r11, rax, [rsi + 3*8]
    adc r12, rax
    mulx r10, rax, [rsi + 4*8]
    adc r11, rax
    mulx r9, rax, [rsi + 5*8]
    adc r10, rax
    mulx r8, rax, [rsi + 6*8]
    adc r9, rax
    mulx rcx, rax, [rsi + 7*8]
    adc r8, rax
    adc rcx, 0
# loop i = 1
    mov rdx, [rbp + 1*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r14, rax
    adox r13, rbx
    mov [rdi + 1*8], r14
    mov r14, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx rcx, rax
    adox r14, rbx
    adc r14, 0
# loop i = 2
    mov rdx, [rbp + 2*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r13, rax
    adox r12, rbx
    mov [rdi + 2*8], r13
    mov r13, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx rcx, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r14, rax
    adox r13, rbx
    adc r13, 0
# loop i = 3
    mov rdx, [rbp + 3*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r12, rax
    adox r11, rbx
    mov [rdi + 3*8], r12
    mov r12, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx rcx, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r13, rax
    adox r12, rbx
    adc r12, 0
# loop i = 4
    mov rdx, [rbp + 4*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r11, rax
    adox r10, rbx
    mov [rdi + 4*8], r11
    mov r11, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx rcx, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r12, rax
    adox r11, rbx
    adc r11, 0
# loop i = 5
    mov rdx, [rbp + 5*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r10, rax
    adox r9, rbx
    mov [rdi + 5*8], r10
    mov r10, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx rcx, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r11, rax
    adox r10, rbx
    adc r10, 0
# loop i = 6
    mov rdx, [rbp + 6*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r9, rax
    adox r8, rbx
    mov [rdi + 6*8], r9
    mov r9, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx rcx, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r10, rax
    adox r9, rbx
    adc r9, 0
# loop i = 7
    mov rdx, [rbp + 7*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r8, rax
    adox rcx, rbx
    mov [rdi + 7*8], r8
    mov r8, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx rcx, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r9, rax
    adox r8, rbx
    adc r8, 0
# outro
    mov [rdi + 8*8], rcx
    mov [rdi + 9*8], r14
    mov [rdi + 10*8], r13
    mov [rdi + 11*8], r12
    mov [rdi + 12*8], r11
    mov [rdi + 13*8], r10
    mov [rdi + 14*8], r9
    mov [rdi + 15*8], r8
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro mult_9x9
# push
    push rbx
    push rbp
    push rsi
    push r12
    push r13
    push r14
    push r15

# intro 
    mov rbp, rdx
    mov rdx, [rbp]
    mulx r15, rcx, [rsi + 0*8]
    mov [rdi + 0*8], rcx
    mulx r14, rax, [rsi + 1*8]
    add r15, rax
    mulx r13, rax, [rsi + 2*8]
    adc r14, rax
    mulx r12, rax, [rsi + 3*8]
    adc r13, rax
    mulx r11, rax, [rsi + 4*8]
    adc r12, rax
    mulx r10, rax, [rsi + 5*8]
    adc r11, rax
    mulx r9, rax, [rsi + 6*8]
    adc r10, rax
    mulx r8, rax, [rsi + 7*8]
    adc r9, rax
    mulx rcx, rax, [rsi + 8*8]
    adc r8, rax
    adc rcx, 0
# loop i = 1
    mov rdx, [rbp + 1*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r15, rax
    adox r14, rbx
    mov [rdi + 1*8], r15
    mov r15, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx rcx, rax
    adox r15, rbx
    adc r15, 0
# loop i = 2
    mov rdx, [rbp + 2*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r14, rax
    adox r13, rbx
    mov [rdi + 2*8], r14
    mov r14, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r15, rax
    adox r14, rbx
    adc r14, 0
# loop i = 3
    mov rdx, [rbp + 3*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r13, rax
    adox r12, rbx
    mov [rdi + 3*8], r13
    mov r13, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r15, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r14, rax
    adox r13, rbx
    adc r13, 0
# loop i = 4
    mov rdx, [rbp + 4*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r12, rax
    adox r11, rbx
    mov [rdi + 4*8], r12
    mov r12, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r15, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r13, rax
    adox r12, rbx
    adc r12, 0
# loop i = 5
    mov rdx, [rbp + 5*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r11, rax
    adox r10, rbx
    mov [rdi + 5*8], r11
    mov r11, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r15, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r12, rax
    adox r11, rbx
    adc r11, 0
# loop i = 6
    mov rdx, [rbp + 6*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r10, rax
    adox r9, rbx
    mov [rdi + 6*8], r10
    mov r10, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r15, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r11, rax
    adox r10, rbx
    adc r10, 0
# loop i = 7
    mov rdx, [rbp + 7*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r9, rax
    adox r8, rbx
    mov [rdi + 7*8], r9
    mov r9, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r15, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r10, rax
    adox r9, rbx
    adc r9, 0
# loop i = 8
    mov rdx, [rbp + 8*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r8, rax
    adox rcx, rbx
    mov [rdi + 8*8], r8
    mov r8, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx rcx, rax
    adox r15, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r15, rax
    adox r14, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r14, rax
    adox r13, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 7*8]
    adcx r10, rax
    adox r9, rbx
    mulx rbx, rax, [rsi + 8*8]
    adcx r9, rax
    adox r8, rbx
    adc r8, 0
# outro
    mov [rdi + 9*8], rcx
    mov [rdi + 10*8], r15
    mov [rdi + 11*8], r14
    mov [rdi + 12*8], r13
    mov [rdi + 13*8], r12
    mov [rdi + 14*8], r11
    mov [rdi + 15*8], r10
    mov [rdi + 16*8], r9
    mov [rdi + 17*8], r8
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro mult_16x16
push    r14
xor     eax, eax
mov     ecx, 18
push    r13
lea     r13, [rsi+64]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+64]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 288
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+144]
mov     ecx, 18
rep stosq
mov     rdi, rsp
add_8x8
mov     rdx, r14
mov     rsi, r12
xor     eax, eax
lea     rdi, [rsp+72]
add_8x8
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_8x8
lea     r12, [rbx+128]
mov     rdx, rsp
lea     rsi, [rsp+72]
lea     rdi, [rsp+144]
mult_9x9
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_8x8
mov     rdx, r12
mov     rsi, rbx
xor     eax, eax
lea     rdi, [rsp+144]
sub_d_18x16_woc
lea     rdi, [rbx+64]
lea     rdx, [rsp+144]
xor     eax, eax
mov     rsi, rdi
add_18x17
add     rsp, 288
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_9x8
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 7
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*8]
    adc rax, 0
    mov [rdi + 8*8], rax
.endm

.macro sub_d_18x18_woc
# push
    push rbx
    push rbp
    push rsi
    push r12
    push r13
    push r14
    push r15

# intro
    mov rax, [rdi + 0*8]
    mov rbx, [rdi + 1*8]
    mov rcx, [rdi + 2*8]
    mov r8, [rdi + 3*8]
    mov r9, [rdi + 4*8]
    mov r10, [rdi + 5*8]
    mov r11, [rdi + 6*8]
    mov r12, [rdi + 7*8]
    mov r13, [rdi + 8*8]
    mov r14, [rdi + 9*8]
    mov r15, [rdi + 10*8]
# loop
# ------------------
    sub rax, [rsi + 0*8]
    sbb rbx, 0
    sub rax, [rdx + 0*8]
    sbb rbx, [rsi + 1*8]
    sbb rcx, 0
    sub rbx, [rdx + 1*8]
    sbb rcx, [rsi + 2*8]
    sbb r8, 0
    sub rcx, [rdx + 2*8]
    sbb r8, [rsi + 3*8]
    sbb r9, 0
    sub r8, [rdx + 3*8]
    sbb r9, [rsi + 4*8]
    sbb r10, 0
    sub r9, [rdx + 4*8]
    sbb r10, [rsi + 5*8]
    sbb r11, 0
    sub r10, [rdx + 5*8]
    sbb r11, [rsi + 6*8]
    sbb r12, 0
    sub r11, [rdx + 6*8]
    sbb r12, [rsi + 7*8]
    sbb r13, 0
    sub r12, [rdx + 7*8]
    sbb r13, [rsi + 8*8]
    sbb r14, 0
    sub r13, [rdx + 8*8]
    sbb r14, [rsi + 9*8]
    sbb r15, 0
    sub r14, [rdx + 9*8]
# ------------------
    mov [rdi + 0*8], rax
    mov [rdi + 1*8], rbx
    mov [rdi + 2*8], rcx
    mov [rdi + 3*8], r8
    mov [rdi + 4*8], r9
    mov [rdi + 5*8], r10
    mov [rdi + 6*8], r11
    mov [rdi + 7*8], r12
    mov [rdi + 8*8], r13
    mov [rdi + 9*8], r14
# last loop
# ------------------
    mov rax, [rdi + 11*8]
    mov rbx, [rdi + 12*8]
    mov rcx, [rdi + 13*8]
    mov r8, [rdi + 14*8]
    mov r9, [rdi + 15*8]
    mov r10, [rdi + 16*8]
    mov r11, [rdi + 17*8]
# ------------------
    sbb r15, [rsi + 10*8]
    sbb rax, 0
    sub r15, [rdx + 10*8]
    sbb rax, [rsi + 11*8]
    sbb rbx, 0
    sub rax, [rdx + 11*8]
    sbb rbx, [rsi + 12*8]
    sbb rcx, 0
    sub rbx, [rdx + 12*8]
    sbb rcx, [rsi + 13*8]
    sbb r8, 0
    sub rcx, [rdx + 13*8]
    sbb r8, [rsi + 14*8]
    sbb r9, 0
    sub r8, [rdx + 14*8]
    sbb r9, [rsi + 15*8]
    sbb r10, 0
    sub r9, [rdx + 15*8]
# ------------------
    mov [rdi + 10*8], r15
    mov [rdi + 11*8], rax
    mov [rdi + 12*8], rbx
    mov [rdi + 13*8], rcx
    mov [rdi + 14*8], r8
    mov [rdi + 15*8], r9
    mov [rdi + 16*8], r10
# outro
    sbb r10, 0
    sub r10, [rsi + 16*8]
    sbb r11, 0
    sub r11, [rsi + 17*8]
    mov [rdi + 16*8], r10
    mov [rdi + 17*8], r11
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_19x18
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 17
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*18]
    adc rax, 0
    mov [rdi + 8*18], rax
.endm

.macro mult_17x17
push    r14
xor     eax, eax
mov     ecx, 18
push    r13
lea     r13, [rsi+64]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+64]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 288
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+144]
mov     ecx, 18
rep stosq
mov     rdi, rsp
add_9x8
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+72]
xor     eax, eax
add_9x8
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
xor     eax, eax
lea     rbp, [rbx+128]
mult_8x8
mov     rdx, rsp
lea     rsi, [rsp+72]
xor     eax, eax
lea     rdi, [rsp+144]
mult_9x9
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
xor     eax, eax
mult_9x9
mov     rdx, rbx
mov     rsi, rbp
xor     eax, eax
lea     rdi, [rsp+144]
sub_d_18x18_woc
lea     rdi, [rbx+64]
lea     rdx, [rsp+144]
xor     eax, eax
mov     rsi, rdi
add_19x18
add     rsp, 288
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_32x32
push    r14
xor     eax, eax
mov     ecx, 34
push    r13
lea     r13, [rsi+128]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+128]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 544
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+272]
mov     ecx, 34
rep stosq
mov     rdi, rsp
add_16x16
mov     rdx, r14
mov     rsi, r12
xor     eax, eax
lea     rdi, [rsp+136]
add_16x16
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_16x16
lea     r12, [rbx+256]
mov     rdx, rsp
lea     rsi, [rsp+136]
lea     rdi, [rsp+272]
mult_17x17
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_16x16
mov     rdx, r12
mov     rsi, rbx
xor     eax, eax
lea     rdi, [rsp+272]
sub_d_34x32_woc
lea     rdi, [rbx+128]
lea     rdx, [rsp+272]
xor     eax, eax
mov     rsi, rdi
add_34x33
add     rsp, 544
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_17x16
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 15
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*16]
    adc rax, 0
    mov [rdi + 8*16], rax
.endm

.macro sub_d_34x34_woc
# push
    push rbx
    push rbp
    push rsi
    push r12
    push r13
    push r14
    push r15

# intro
    mov rax, [rdi + 0*8]
    mov rbx, [rdi + 1*8]
    mov rcx, [rdi + 2*8]
    mov r8, [rdi + 3*8]
    mov r9, [rdi + 4*8]
    mov r10, [rdi + 5*8]
    mov r11, [rdi + 6*8]
    mov r12, [rdi + 7*8]
    mov r13, [rdi + 8*8]
    mov r14, [rdi + 9*8]
    mov r15, [rdi + 10*8]
# loop
# ------------------
    sub rax, [rsi + 0*8]
    sbb rbx, 0
    sub rax, [rdx + 0*8]
    sbb rbx, [rsi + 1*8]
    sbb rcx, 0
    sub rbx, [rdx + 1*8]
    sbb rcx, [rsi + 2*8]
    sbb r8, 0
    sub rcx, [rdx + 2*8]
    sbb r8, [rsi + 3*8]
    sbb r9, 0
    sub r8, [rdx + 3*8]
    sbb r9, [rsi + 4*8]
    sbb r10, 0
    sub r9, [rdx + 4*8]
    sbb r10, [rsi + 5*8]
    sbb r11, 0
    sub r10, [rdx + 5*8]
    sbb r11, [rsi + 6*8]
    sbb r12, 0
    sub r11, [rdx + 6*8]
    sbb r12, [rsi + 7*8]
    sbb r13, 0
    sub r12, [rdx + 7*8]
    sbb r13, [rsi + 8*8]
    sbb r14, 0
    sub r13, [rdx + 8*8]
    sbb r14, [rsi + 9*8]
    sbb r15, 0
    sub r14, [rdx + 9*8]
# ------------------
    mov [rdi + 0*8], rax
    mov [rdi + 1*8], rbx
    mov [rdi + 2*8], rcx
    mov [rdi + 3*8], r8
    mov [rdi + 4*8], r9
    mov [rdi + 5*8], r10
    mov [rdi + 6*8], r11
    mov [rdi + 7*8], r12
    mov [rdi + 8*8], r13
    mov [rdi + 9*8], r14
# ------------------ 1
    mov rax, [rdi + 11*8]
    mov rbx, [rdi + 12*8]
    mov rcx, [rdi + 13*8]
    mov r8, [rdi + 14*8]
    mov r9, [rdi + 15*8]
    mov r10, [rdi + 16*8]
    mov r11, [rdi + 17*8]
    mov r12, [rdi + 18*8]
    mov r13, [rdi + 19*8]
    mov r14, [rdi + 20*8]
# ------------------
    sbb r15, [rsi + 10*8]
    sbb rax, 0
    sub r15, [rdx + 10*8]
    sbb rax, [rsi + 11*8]
    sbb rbx, 0
    sub rax, [rdx + 11*8]
    sbb rbx, [rsi + 12*8]
    sbb rcx, 0
    sub rbx, [rdx + 12*8]
    sbb rcx, [rsi + 13*8]
    sbb r8, 0
    sub rcx, [rdx + 13*8]
    sbb r8, [rsi + 14*8]
    sbb r9, 0
    sub r8, [rdx + 14*8]
    sbb r9, [rsi + 15*8]
    sbb r10, 0
    sub r9, [rdx + 15*8]
    sbb r10, [rsi + 16*8]
    sbb r11, 0
    sub r10, [rdx + 16*8]
    sbb r11, [rsi + 17*8]
    sbb r12, 0
    sub r11, [rdx + 17*8]
    sbb r12, [rsi + 18*8]
    sbb r13, 0
    sub r12, [rdx + 18*8]
    sbb r13, [rsi + 19*8]
    sbb r14, 0
    sub r13, [rdx + 19*8]
# ------------------
    mov [rdi + 10*8], r15
    mov [rdi + 11*8], rax
    mov [rdi + 12*8], rbx
    mov [rdi + 13*8], rcx
    mov [rdi + 14*8], r8
    mov [rdi + 15*8], r9
    mov [rdi + 16*8], r10
    mov [rdi + 17*8], r11
    mov [rdi + 18*8], r12
    mov [rdi + 19*8], r13
# ------------------ 2
    mov r15, [rdi + 21*8]
    mov rax, [rdi + 22*8]
    mov rbx, [rdi + 23*8]
    mov rcx, [rdi + 24*8]
    mov r8, [rdi + 25*8]
    mov r9, [rdi + 26*8]
    mov r10, [rdi + 27*8]
    mov r11, [rdi + 28*8]
    mov r12, [rdi + 29*8]
    mov r13, [rdi + 30*8]
# ------------------
    sbb r14, [rsi + 20*8]
    sbb r15, 0
    sub r14, [rdx + 20*8]
    sbb r15, [rsi + 21*8]
    sbb rax, 0
    sub r15, [rdx + 21*8]
    sbb rax, [rsi + 22*8]
    sbb rbx, 0
    sub rax, [rdx + 22*8]
    sbb rbx, [rsi + 23*8]
    sbb rcx, 0
    sub rbx, [rdx + 23*8]
    sbb rcx, [rsi + 24*8]
    sbb r8, 0
    sub rcx, [rdx + 24*8]
    sbb r8, [rsi + 25*8]
    sbb r9, 0
    sub r8, [rdx + 25*8]
    sbb r9, [rsi + 26*8]
    sbb r10, 0
    sub r9, [rdx + 26*8]
    sbb r10, [rsi + 27*8]
    sbb r11, 0
    sub r10, [rdx + 27*8]
    sbb r11, [rsi + 28*8]
    sbb r12, 0
    sub r11, [rdx + 28*8]
    sbb r12, [rsi + 29*8]
    sbb r13, 0
    sub r12, [rdx + 29*8]
# ------------------
    mov [rdi + 20*8], r14
    mov [rdi + 21*8], r15
    mov [rdi + 22*8], rax
    mov [rdi + 23*8], rbx
    mov [rdi + 24*8], rcx
    mov [rdi + 25*8], r8
    mov [rdi + 26*8], r9
    mov [rdi + 27*8], r10
    mov [rdi + 28*8], r11
    mov [rdi + 29*8], r12
# last loop
# ------------------
    mov r14, [rdi + 31*8]
    mov r15, [rdi + 32*8]
    mov rax, [rdi + 33*8]
# ------------------
    sbb r13, [rsi + 30*8]
    sbb r14, 0
    sub r13, [rdx + 30*8]
    sbb r14, [rsi + 31*8]
    sbb r15, 0
    sub r14, [rdx + 31*8]
# ------------------
    mov [rdi + 30*8], r13
    mov [rdi + 31*8], r14
    mov [rdi + 32*8], r15
# outro
    sbb r15, 0
    sub r15, [rsi + 32*8]
    sbb rax, 0
    sub rax, [rsi + 33*8]
    mov [rdi + 32*8], r15
    mov [rdi + 33*8], rax
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_35x34
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 33
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*34]
    adc rax, 0
    mov [rdi + 8*34], rax
.endm

.macro mult_33x33
push    r14
xor     eax, eax
mov     ecx, 34
push    r13
lea     r13, [rsi+128]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+128]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 544
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+272]
mov     ecx, 34
rep stosq
mov     rdi, rsp
add_17x16
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+136]
xor     eax, eax
add_17x16
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
xor     eax, eax
lea     rbp, [rbx+256]
mult_16x16
mov     rdx, rsp
lea     rsi, [rsp+136]
xor     eax, eax
lea     rdi, [rsp+272]
mult_17x17
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
xor     eax, eax
mult_17x17
mov     rdx, rbx
mov     rsi, rbp
xor     eax, eax
lea     rdi, [rsp+272]
sub_d_34x34_woc
lea     rdi, [rbx+128]
lea     rdx, [rsp+272]
xor     eax, eax
mov     rsi, rdi
add_35x34
add     rsp, 544
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_64x64
push    r14
xor     eax, eax
mov     ecx, 66
push    r13
lea     r13, [rsi+256]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+256]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 1056
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+528]
mov     ecx, 66
rep stosq
mov     rdi, rsp
add_32x32
mov     rdx, r14
mov     rsi, r12
xor     eax, eax
lea     rdi, [rsp+264]
add_32x32
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_32x32
lea     r12, [rbx+512]
mov     rdx, rsp
lea     rsi, [rsp+264]
lea     rdi, [rsp+528]
mult_33x33
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_32x32
mov     rdx, r12
mov     rsi, rbx
xor     eax, eax
lea     rdi, [rsp+528]
sub_d_66x64_woc
lea     rdi, [rbx+256]
lea     rdx, [rsp+528]
xor     eax, eax
mov     rsi, rdi
add_66x65
add     rsp, 1056
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.global secsidh_internal_4095k256_fp_mult_64x64
secsidh_internal_4095k256_fp_mult_64x64:
    mult_64x64
    ret

.global secsidh_internal_4095k256_fp_cmov
secsidh_internal_4095k256_fp_cmov:
    movzx rax, dl
    neg rax
    .set k, 0
    .rept plimbs
        mov rcx, [rdi + 8*k]
        mov rdx, [rsi + 8*k]
        xor rdx, rcx
        and rdx, rax
        xor rcx, rdx
        mov [rdi + 8*k], rcx
        .set k, k+1
    .endr
    ret


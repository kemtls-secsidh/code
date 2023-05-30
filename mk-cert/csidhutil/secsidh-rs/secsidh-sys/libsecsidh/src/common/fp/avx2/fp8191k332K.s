.intel_syntax noprefix

.section .rodata

.set pbits,8191
.set pbytes,1024
.set plimbs,128

.global secsidh_internal_8191k332_fp_2
secsidh_internal_8191k332_fp_2:
.quad 0x7,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0xBDD5138C4223F5CD,0x9E80CEB070D92575 
.quad 0xB788A07A741CA68F,0x307C6BE4CCA1A9A0,0x95B22D45C2C96C6E,0xD84C5FC54DCCF339 
.quad 0x642B7FF0118E81AC,0x6A84795AFAB0C81E,0xD96E32935F531F5D,0x121EF6CD5E50F82B 
.quad 0x1FC234330F18E065,0xD1907778C8024F3B,0x1FF67246FE954F9E,0xE95CCCB3E6CF7C02 
.quad 0xF993CEBAD6192AD5,0xBC00537AEE8BCCBD,0x716561C91C840FD0,0x8DEABD9E609EBAF3 
.quad 0x9FF31354CB2DB177,0x345E5C4061B6370E,0x7DE298369865CF57,0xB522DA30D108133E 
.quad 0xB86062EF8301ABFF,0xD0F7A7BA68063A4,0xB8961E0D2C7189DB,0x4AE32A1563EBDA5F 
.quad 0xA8E59E5C3B44D50A,0x91B39629ED528EBF,0xDB36CC06C0DAA45A,0x51F2E2C619280C52 
.quad 0x3663F74DD684A731,0x14A19C22C82D9CB4,0xCC1A3E1693698525,0x1FADB66207AEEF97 
.quad 0x81491F30526B5C3E,0xEB9EAA4FB7A461DC,0xB714C343452E8076,0x203191D7AB926515 
.quad 0x7D70C5ADA3253067,0x6A4E6FC4797F15B3,0x407DECE757802A95,0x9A2E1BB1F1E74B4F 
.quad 0x10E437B71FED36EF,0xFBF7EC7640F5AB95,0x25BD748ECE21C70D,0x6CEA962262B286E7 
.quad 0x8C6F6A6623F5F847,0x3CC154DC4CC5521E,0x7347B8EF7843C92C,0x197ECEBB204D7A69 

.section .text


.macro add_64x64
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 63
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rdi + 64*8]
    adc rax, 0
    mov [rdi + 64*8], rax
.endm

.macro sub_d_130x128_woc
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
    mov r15, [rdi + 65*8]
    mov rax, [rdi + 66*8]
    mov rbx, [rdi + 67*8]
    mov rcx, [rdi + 68*8]
    mov r8, [rdi + 69*8]
    mov r9, [rdi + 70*8]
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
    sbb r14, [rsi + 64*8]
    sbb r15, 0
    sub r14, [rdx + 64*8]
    sbb r15, [rsi + 65*8]
    sbb rax, 0
    sub r15, [rdx + 65*8]
    sbb rax, [rsi + 66*8]
    sbb rbx, 0
    sub rax, [rdx + 66*8]
    sbb rbx, [rsi + 67*8]
    sbb rcx, 0
    sub rbx, [rdx + 67*8]
    sbb rcx, [rsi + 68*8]
    sbb r8, 0
    sub rcx, [rdx + 68*8]
    sbb r8, [rsi + 69*8]
    sbb r9, 0
    sub r8, [rdx + 69*8]
# ------------------
    mov [rdi + 60*8], r10
    mov [rdi + 61*8], r11
    mov [rdi + 62*8], r12
    mov [rdi + 63*8], r13
    mov [rdi + 64*8], r14
    mov [rdi + 65*8], r15
    mov [rdi + 66*8], rax
    mov [rdi + 67*8], rbx
    mov [rdi + 68*8], rcx
    mov [rdi + 69*8], r8
    mov r10, [rdi + 71*8]
    mov r11, [rdi + 72*8]
    mov r12, [rdi + 73*8]
    mov r13, [rdi + 74*8]
    mov r14, [rdi + 75*8]
    mov r15, [rdi + 76*8]
    mov rax, [rdi + 77*8]
    mov rbx, [rdi + 78*8]
    mov rcx, [rdi + 79*8]
    mov r8, [rdi + 80*8]
    sbb r9, [rsi + 70*8]
    sbb r10, 0
    sub r9, [rdx + 70*8]
    sbb r10, [rsi + 71*8]
    sbb r11, 0
    sub r10, [rdx + 71*8]
    sbb r11, [rsi + 72*8]
    sbb r12, 0
    sub r11, [rdx + 72*8]
    sbb r12, [rsi + 73*8]
    sbb r13, 0
    sub r12, [rdx + 73*8]
    sbb r13, [rsi + 74*8]
    sbb r14, 0
    sub r13, [rdx + 74*8]
    sbb r14, [rsi + 75*8]
    sbb r15, 0
    sub r14, [rdx + 75*8]
    sbb r15, [rsi + 76*8]
    sbb rax, 0
    sub r15, [rdx + 76*8]
    sbb rax, [rsi + 77*8]
    sbb rbx, 0
    sub rax, [rdx + 77*8]
    sbb rbx, [rsi + 78*8]
    sbb rcx, 0
    sub rbx, [rdx + 78*8]
    sbb rcx, [rsi + 79*8]
    sbb r8, 0
    sub rcx, [rdx + 79*8]
# ------------------
    mov [rdi + 70*8], r9
    mov [rdi + 71*8], r10
    mov [rdi + 72*8], r11
    mov [rdi + 73*8], r12
    mov [rdi + 74*8], r13
    mov [rdi + 75*8], r14
    mov [rdi + 76*8], r15
    mov [rdi + 77*8], rax
    mov [rdi + 78*8], rbx
    mov [rdi + 79*8], rcx
    mov r9, [rdi + 81*8]
    mov r10, [rdi + 82*8]
    mov r11, [rdi + 83*8]
    mov r12, [rdi + 84*8]
    mov r13, [rdi + 85*8]
    mov r14, [rdi + 86*8]
    mov r15, [rdi + 87*8]
    mov rax, [rdi + 88*8]
    mov rbx, [rdi + 89*8]
    mov rcx, [rdi + 90*8]
    sbb r8, [rsi + 80*8]
    sbb r9, 0
    sub r8, [rdx + 80*8]
    sbb r9, [rsi + 81*8]
    sbb r10, 0
    sub r9, [rdx + 81*8]
    sbb r10, [rsi + 82*8]
    sbb r11, 0
    sub r10, [rdx + 82*8]
    sbb r11, [rsi + 83*8]
    sbb r12, 0
    sub r11, [rdx + 83*8]
    sbb r12, [rsi + 84*8]
    sbb r13, 0
    sub r12, [rdx + 84*8]
    sbb r13, [rsi + 85*8]
    sbb r14, 0
    sub r13, [rdx + 85*8]
    sbb r14, [rsi + 86*8]
    sbb r15, 0
    sub r14, [rdx + 86*8]
    sbb r15, [rsi + 87*8]
    sbb rax, 0
    sub r15, [rdx + 87*8]
    sbb rax, [rsi + 88*8]
    sbb rbx, 0
    sub rax, [rdx + 88*8]
    sbb rbx, [rsi + 89*8]
    sbb rcx, 0
    sub rbx, [rdx + 89*8]
# ------------------
    mov [rdi + 80*8], r8
    mov [rdi + 81*8], r9
    mov [rdi + 82*8], r10
    mov [rdi + 83*8], r11
    mov [rdi + 84*8], r12
    mov [rdi + 85*8], r13
    mov [rdi + 86*8], r14
    mov [rdi + 87*8], r15
    mov [rdi + 88*8], rax
    mov [rdi + 89*8], rbx
    mov r8, [rdi + 91*8]
    mov r9, [rdi + 92*8]
    mov r10, [rdi + 93*8]
    mov r11, [rdi + 94*8]
    mov r12, [rdi + 95*8]
    mov r13, [rdi + 96*8]
    mov r14, [rdi + 97*8]
    mov r15, [rdi + 98*8]
    mov rax, [rdi + 99*8]
    mov rbx, [rdi + 100*8]
    sbb rcx, [rsi + 90*8]
    sbb r8, 0
    sub rcx, [rdx + 90*8]
    sbb r8, [rsi + 91*8]
    sbb r9, 0
    sub r8, [rdx + 91*8]
    sbb r9, [rsi + 92*8]
    sbb r10, 0
    sub r9, [rdx + 92*8]
    sbb r10, [rsi + 93*8]
    sbb r11, 0
    sub r10, [rdx + 93*8]
    sbb r11, [rsi + 94*8]
    sbb r12, 0
    sub r11, [rdx + 94*8]
    sbb r12, [rsi + 95*8]
    sbb r13, 0
    sub r12, [rdx + 95*8]
    sbb r13, [rsi + 96*8]
    sbb r14, 0
    sub r13, [rdx + 96*8]
    sbb r14, [rsi + 97*8]
    sbb r15, 0
    sub r14, [rdx + 97*8]
    sbb r15, [rsi + 98*8]
    sbb rax, 0
    sub r15, [rdx + 98*8]
    sbb rax, [rsi + 99*8]
    sbb rbx, 0
    sub rax, [rdx + 99*8]
# ------------------
    mov [rdi + 90*8], rcx
    mov [rdi + 91*8], r8
    mov [rdi + 92*8], r9
    mov [rdi + 93*8], r10
    mov [rdi + 94*8], r11
    mov [rdi + 95*8], r12
    mov [rdi + 96*8], r13
    mov [rdi + 97*8], r14
    mov [rdi + 98*8], r15
    mov [rdi + 99*8], rax
    mov rcx, [rdi + 101*8]
    mov r8, [rdi + 102*8]
    mov r9, [rdi + 103*8]
    mov r10, [rdi + 104*8]
    mov r11, [rdi + 105*8]
    mov r12, [rdi + 106*8]
    mov r13, [rdi + 107*8]
    mov r14, [rdi + 108*8]
    mov r15, [rdi + 109*8]
    mov rax, [rdi + 110*8]
    sbb rbx, [rsi + 100*8]
    sbb rcx, 0
    sub rbx, [rdx + 100*8]
    sbb rcx, [rsi + 101*8]
    sbb r8, 0
    sub rcx, [rdx + 101*8]
    sbb r8, [rsi + 102*8]
    sbb r9, 0
    sub r8, [rdx + 102*8]
    sbb r9, [rsi + 103*8]
    sbb r10, 0
    sub r9, [rdx + 103*8]
    sbb r10, [rsi + 104*8]
    sbb r11, 0
    sub r10, [rdx + 104*8]
    sbb r11, [rsi + 105*8]
    sbb r12, 0
    sub r11, [rdx + 105*8]
    sbb r12, [rsi + 106*8]
    sbb r13, 0
    sub r12, [rdx + 106*8]
    sbb r13, [rsi + 107*8]
    sbb r14, 0
    sub r13, [rdx + 107*8]
    sbb r14, [rsi + 108*8]
    sbb r15, 0
    sub r14, [rdx + 108*8]
    sbb r15, [rsi + 109*8]
    sbb rax, 0
    sub r15, [rdx + 109*8]
# ------------------
    mov [rdi + 100*8], rbx
    mov [rdi + 101*8], rcx
    mov [rdi + 102*8], r8
    mov [rdi + 103*8], r9
    mov [rdi + 104*8], r10
    mov [rdi + 105*8], r11
    mov [rdi + 106*8], r12
    mov [rdi + 107*8], r13
    mov [rdi + 108*8], r14
    mov [rdi + 109*8], r15
    mov rbx, [rdi + 111*8]
    mov rcx, [rdi + 112*8]
    mov r8, [rdi + 113*8]
    mov r9, [rdi + 114*8]
    mov r10, [rdi + 115*8]
    mov r11, [rdi + 116*8]
    mov r12, [rdi + 117*8]
    mov r13, [rdi + 118*8]
    mov r14, [rdi + 119*8]
    mov r15, [rdi + 120*8]
    sbb rax, [rsi + 110*8]
    sbb rbx, 0
    sub rax, [rdx + 110*8]
    sbb rbx, [rsi + 111*8]
    sbb rcx, 0
    sub rbx, [rdx + 111*8]
    sbb rcx, [rsi + 112*8]
    sbb r8, 0
    sub rcx, [rdx + 112*8]
    sbb r8, [rsi + 113*8]
    sbb r9, 0
    sub r8, [rdx + 113*8]
    sbb r9, [rsi + 114*8]
    sbb r10, 0
    sub r9, [rdx + 114*8]
    sbb r10, [rsi + 115*8]
    sbb r11, 0
    sub r10, [rdx + 115*8]
    sbb r11, [rsi + 116*8]
    sbb r12, 0
    sub r11, [rdx + 116*8]
    sbb r12, [rsi + 117*8]
    sbb r13, 0
    sub r12, [rdx + 117*8]
    sbb r13, [rsi + 118*8]
    sbb r14, 0
    sub r13, [rdx + 118*8]
    sbb r14, [rsi + 119*8]
    sbb r15, 0
    sub r14, [rdx + 119*8]
# ------------------
    mov [rdi + 110*8], rax
    mov [rdi + 111*8], rbx
    mov [rdi + 112*8], rcx
    mov [rdi + 113*8], r8
    mov [rdi + 114*8], r9
    mov [rdi + 115*8], r10
    mov [rdi + 116*8], r11
    mov [rdi + 117*8], r12
    mov [rdi + 118*8], r13
    mov [rdi + 119*8], r14
    mov rax, [rdi + 121*8]
    mov rbx, [rdi + 122*8]
    mov rcx, [rdi + 123*8]
    mov r8, [rdi + 124*8]
    mov r9, [rdi + 125*8]
    mov r10, [rdi + 126*8]
    mov r11, [rdi + 127*8]
    mov r12, [rdi + 128*8]
    sbb r15, [rsi + 120*8]
    sbb rax, 0
    sub r15, [rdx + 120*8]
    sbb rax, [rsi + 121*8]
    sbb rbx, 0
    sub rax, [rdx + 121*8]
    sbb rbx, [rsi + 122*8]
    sbb rcx, 0
    sub rbx, [rdx + 122*8]
    sbb rcx, [rsi + 123*8]
    sbb r8, 0
    sub rcx, [rdx + 123*8]
    sbb r8, [rsi + 124*8]
    sbb r9, 0
    sub r8, [rdx + 124*8]
    sbb r9, [rsi + 125*8]
    sbb r10, 0
    sub r9, [rdx + 125*8]
    sbb r10, [rsi + 126*8]
    sbb r11, 0
    sub r10, [rdx + 126*8]
    sbb r11, [rsi + 127*8]
    sbb r12, 0
    sub r11, [rdx + 127*8]
# ------------------
    mov [rdi + 120*8], r15
    mov [rdi + 121*8], rax
    mov [rdi + 122*8], rbx
    mov [rdi + 123*8], rcx
    mov [rdi + 124*8], r8
    mov [rdi + 125*8], r9
    mov [rdi + 126*8], r10
    mov [rdi + 127*8], r11
# outro
    sbb r12, 0
    mov [rdi + 128*8], r12
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_130x129
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 128
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*129]
    adc rax, 0
    mov [rdi + 8*129], rax
.endm

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

.macro add_33x32
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
    mov rax, [rsi + 8*32]
    adc rax, 0
    mov [rdi + 8*32], rax
.endm

.macro sub_d_66x66_woc
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
# ------------------ 3
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
# ------------------
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
# ------------------ 4
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
# ------------------
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
# ------------------ 5
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
# ------------------
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
# last loop
# ------------------
    mov r11, [rdi + 61*8]
    mov r12, [rdi + 62*8]
    mov r13, [rdi + 63*8]
    mov r14, [rdi + 64*8]
    mov r15, [rdi + 65*8]
# ------------------
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
    mov [rdi + 64*8], r14
# outro
    sbb r14, 0
    sub r14, [rsi + 64*8]
    sbb r15, 0
    sub r15, [rsi + 65*8]
    mov [rdi + 64*8], r14
    mov [rdi + 65*8], r15
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_67x66
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 65
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*66]
    adc rax, 0
    mov [rdi + 8*66], rax
.endm

.macro mult_65x65
push    r14
xor     eax, eax
mov     ecx, 66
push    r13
lea     r13, [rsi+256]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+256]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 1056
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+528]
mov     ecx, 66
rep stosq
mov     rdi, rsp
add_33x32
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+264]
xor     eax, eax
add_33x32
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
xor     eax, eax
lea     rbp, [rbx+512]
mult_32x32
mov     rdx, rsp
lea     rsi, [rsp+264]
xor     eax, eax
lea     rdi, [rsp+528]
mult_33x33
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
xor     eax, eax
mult_33x33
mov     rdx, rbx
mov     rsi, rbp
xor     eax, eax
lea     rdi, [rsp+528]
sub_d_66x66_woc
lea     rdi, [rbx+256]
lea     rdx, [rsp+528]
xor     eax, eax
mov     rsi, rdi
add_67x66
add     rsp, 1056
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_128x128
push    r14
xor     eax, eax
mov     ecx, 130
push    r13
lea     r13, [rsi+512]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+512]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 2080
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+1040]
mov     ecx, 130
rep stosq
mov     rdi, rsp
add_64x64
mov     rdx, r14
mov     rsi, r12
xor     eax, eax
lea     rdi, [rsp+520]
add_64x64
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_64x64
lea     r12, [rbx+1024]
mov     rdx, rsp
lea     rsi, [rsp+520]
lea     rdi, [rsp+1040]
mult_65x65
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_64x64
mov     rdx, r12
mov     rsi, rbx
xor     eax, eax
lea     rdi, [rsp+1040]
sub_d_130x128_woc
lea     rdi, [rbx+512]
lea     rdx, [rsp+1040]
xor     eax, eax
mov     rsi, rdi
add_130x129
add     rsp, 2080
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.global secsidh_internal_8191k332_fp_mult_128x128
secsidh_internal_8191k332_fp_mult_128x128:
    mult_128x128
    ret

.global secsidh_internal_8191k332_fp_cmov
secsidh_internal_8191k332_fp_cmov:
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


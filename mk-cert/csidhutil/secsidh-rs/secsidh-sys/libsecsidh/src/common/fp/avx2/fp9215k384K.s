.intel_syntax noprefix

.section .rodata

.set pbits,9215
.set pbytes,1152
.set plimbs,144

.global secsidh_internal_9215k384_fp_2
secsidh_internal_9215k384_fp_2:
.quad 0x6,0x0,0x0,0x0 
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
.quad 0x0,0x0,0x0,0x0 
.quad 0x0,0x0,0x0,0x0 
.quad 0xE777587A00000000,0xECF0625445823B12,0x6B56545944650B3F,0x26C9F3E94F74EBC5 
.quad 0x23D2E7D28F01D784,0x9BAD8C1FC8011E33,0xB955B7C931A309EA,0x791EFB012BA42940 
.quad 0x9A524FD1C3B1E255,0x24F277B2BF275DA2,0xDEA3FDCDF2264E54,0xE30ED468D13893CC 
.quad 0x94E1E5133A2A3386,0xFE3AF678896A5054,0x98015692AD96EE29,0x2236937B2588C31B 
.quad 0x8EC52AC215AF918,0x7CBF2B8F2594566E,0x26E2258A5EC5B3EF,0x4A35F2B6E771FCE2 
.quad 0x1B84F6B42BFA8AC4,0x2C85E7644E27E56E,0x7BCF02D03CDEAD23,0xE5AAF9E405FACCE 
.quad 0x43B35E472BF8232C,0xA67050FA047B3ED,0xFA156EBA75F7D087,0x4438930079A194CA 
.quad 0x54D0CAD7F7883815,0xFA0670C4AFC9F2F6,0xEA27A02638538A1C,0x12D9C70BC4086A10 
.quad 0x585717F7FECE0A7B,0x13B7242C97025751,0xCB592D6A4434BAA4,0xFFE621773836EE1D 
.quad 0x7F0428A766BC95D5,0xAFF2EBED94536A8D,0x4D1A35508A550A00,0x97AC585DBD901592 
.quad 0xB0C252A221924F08,0xD09C226D656AD321,0xE8BB11DE062DC6F9,0xE731F6F3F289A57D 
.quad 0xAEA72138CA2F7B57,0x788B0D59D60C04F,0x91FC4EC0065004E,0x5A9DBD9BD415C7DE 
.quad 0x7331F6B0B3CA5063,0xBF35FF4F35BC1184,0x6BA921E599128A1C,0xC764D3B7E0E3ABC8 
.quad 0x9E0075F976D94880,0x14B7C6D3368815C8,0x51FFA8B5C6B5BDB7,0xA1768163BBAA030C 
.quad 0x94617CAD11480AFC,0x810F573A63CA9B30,0x8E749C28FE883457,0x31AD04B1EA4CAA10 

.section .text


.macro add_72x72
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 71
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rdi + 72*8]
    adc rax, 0
    mov [rdi + 72*8], rax
.endm

.macro sub_d_146x144_woc
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
    mov r13, [rdi + 129*8]
    mov r14, [rdi + 130*8]
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
    sbb r12, [rsi + 128*8]
    sbb r13, 0
    sub r12, [rdx + 128*8]
    sbb r13, [rsi + 129*8]
    sbb r14, 0
    sub r13, [rdx + 129*8]
# ------------------
    mov [rdi + 120*8], r15
    mov [rdi + 121*8], rax
    mov [rdi + 122*8], rbx
    mov [rdi + 123*8], rcx
    mov [rdi + 124*8], r8
    mov [rdi + 125*8], r9
    mov [rdi + 126*8], r10
    mov [rdi + 127*8], r11
    mov [rdi + 128*8], r12
    mov [rdi + 129*8], r13
    mov r15, [rdi + 131*8]
    mov rax, [rdi + 132*8]
    mov rbx, [rdi + 133*8]
    mov rcx, [rdi + 134*8]
    mov r8, [rdi + 135*8]
    mov r9, [rdi + 136*8]
    mov r10, [rdi + 137*8]
    mov r11, [rdi + 138*8]
    mov r12, [rdi + 139*8]
    mov r13, [rdi + 140*8]
    sbb r14, [rsi + 130*8]
    sbb r15, 0
    sub r14, [rdx + 130*8]
    sbb r15, [rsi + 131*8]
    sbb rax, 0
    sub r15, [rdx + 131*8]
    sbb rax, [rsi + 132*8]
    sbb rbx, 0
    sub rax, [rdx + 132*8]
    sbb rbx, [rsi + 133*8]
    sbb rcx, 0
    sub rbx, [rdx + 133*8]
    sbb rcx, [rsi + 134*8]
    sbb r8, 0
    sub rcx, [rdx + 134*8]
    sbb r8, [rsi + 135*8]
    sbb r9, 0
    sub r8, [rdx + 135*8]
    sbb r9, [rsi + 136*8]
    sbb r10, 0
    sub r9, [rdx + 136*8]
    sbb r10, [rsi + 137*8]
    sbb r11, 0
    sub r10, [rdx + 137*8]
    sbb r11, [rsi + 138*8]
    sbb r12, 0
    sub r11, [rdx + 138*8]
    sbb r12, [rsi + 139*8]
    sbb r13, 0
    sub r12, [rdx + 139*8]
# ------------------
    mov [rdi + 130*8], r14
    mov [rdi + 131*8], r15
    mov [rdi + 132*8], rax
    mov [rdi + 133*8], rbx
    mov [rdi + 134*8], rcx
    mov [rdi + 135*8], r8
    mov [rdi + 136*8], r9
    mov [rdi + 137*8], r10
    mov [rdi + 138*8], r11
    mov [rdi + 139*8], r12
    mov r14, [rdi + 141*8]
    mov r15, [rdi + 142*8]
    mov rax, [rdi + 143*8]
    mov rbx, [rdi + 144*8]
    sbb r13, [rsi + 140*8]
    sbb r14, 0
    sub r13, [rdx + 140*8]
    sbb r14, [rsi + 141*8]
    sbb r15, 0
    sub r14, [rdx + 141*8]
    sbb r15, [rsi + 142*8]
    sbb rax, 0
    sub r15, [rdx + 142*8]
    sbb rax, [rsi + 143*8]
    sbb rbx, 0
    sub rax, [rdx + 143*8]
# ------------------
    mov [rdi + 140*8], r13
    mov [rdi + 141*8], r14
    mov [rdi + 142*8], r15
    mov [rdi + 143*8], rax
# outro
    sbb rbx, 0
    mov [rdi + 144*8], rbx
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_146x145
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 144
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*145]
    adc rax, 0
    mov [rdi + 8*145], rax
.endm

.macro add_36x36
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 35
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rdi + 36*8]
    adc rax, 0
    mov [rdi + 36*8], rax
.endm

.macro sub_d_74x72_woc
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
    sbb r9, [rsi + 70*8]
    sbb r10, 0
    sub r9, [rdx + 70*8]
    sbb r10, [rsi + 71*8]
    sbb r11, 0
    sub r10, [rdx + 71*8]
# ------------------
    mov [rdi + 70*8], r9
    mov [rdi + 71*8], r10
# outro
    sbb r11, 0
    mov [rdi + 72*8], r11
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_74x73
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 72
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*73]
    adc rax, 0
    mov [rdi + 8*73], rax
.endm

.macro add_18x18
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
    mov rax, [rdi + 18*8]
    adc rax, 0
    mov [rdi + 18*8], rax
.endm

.macro sub_d_38x36_woc
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
# ------------------
    mov [rdi + 30*8], r13
    mov [rdi + 31*8], r14
    mov [rdi + 32*8], r15
    mov [rdi + 33*8], rax
    mov [rdi + 34*8], rbx
    mov [rdi + 35*8], rcx
# outro
    sbb r8, 0
    mov [rdi + 36*8], r8
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_38x37
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 36
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*37]
    adc rax, 0
    mov [rdi + 8*37], rax
.endm

.macro add_9x9
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 8
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rdi + 9*8]
    adc rax, 0
    mov [rdi + 9*8], rax
.endm

.macro sub_d_20x18_woc
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
# ------------------
    mov [rdi + 10*8], r15
    mov [rdi + 11*8], rax
    mov [rdi + 12*8], rbx
    mov [rdi + 13*8], rcx
    mov [rdi + 14*8], r8
    mov [rdi + 15*8], r9
    mov [rdi + 16*8], r10
    mov [rdi + 17*8], r11
# outro
    sbb r12, 0
    mov [rdi + 18*8], r12
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_20x19
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 18
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*19]
    adc rax, 0
    mov [rdi + 8*19], rax
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

.macro add_5x5
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 4
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rdi + 5*8]
    adc rax, 0
    mov [rdi + 5*8], rax
.endm

.macro sub_d_12x10_woc
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
# ------------------
# outro
    sbb r15, 0
    mov [rdi + 10*8], r15
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_12x11
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 10
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*11]
    adc rax, 0
    mov [rdi + 8*11], rax
.endm

.macro mult_5x5
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
    mulx r11, rcx, [rsi + 0*8]
    mov [rdi + 0*8], rcx
    mulx r10, rax, [rsi + 1*8]
    add r11, rax
    mulx r9, rax, [rsi + 2*8]
    adc r10, rax
    mulx r8, rax, [rsi + 3*8]
    adc r9, rax
    mulx rcx, rax, [rsi + 4*8]
    adc r8, rax
    adc rcx, 0
# loop i = 1
    mov rdx, [rbp + 1*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r11, rax
    adox r10, rbx
    mov [rdi + 1*8], r11
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
    adox r11, rbx
    adc r11, 0
# loop i = 2
    mov rdx, [rbp + 2*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r10, rax
    adox r9, rbx
    mov [rdi + 2*8], r10
    mov r10, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx rcx, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r11, rax
    adox r10, rbx
    adc r10, 0
# loop i = 3
    mov rdx, [rbp + 3*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r9, rax
    adox r8, rbx
    mov [rdi + 3*8], r9
    mov r9, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx rcx, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx r11, rax
    adox r10, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r10, rax
    adox r9, rbx
    adc r9, 0
# loop i = 4
    mov rdx, [rbp + 4*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r8, rax
    adox rcx, rbx
    mov [rdi + 4*8], r8
    mov r8, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx rcx, rax
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
    adc r8, 0
# outro
    mov [rdi + 5*8], rcx
    mov [rdi + 6*8], r11
    mov [rdi + 7*8], r10
    mov [rdi + 8*8], r9
    mov [rdi + 9*8], r8
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro mult_6x6
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
    mulx r12, rcx, [rsi + 0*8]
    mov [rdi + 0*8], rcx
    mulx r11, rax, [rsi + 1*8]
    add r12, rax
    mulx r10, rax, [rsi + 2*8]
    adc r11, rax
    mulx r9, rax, [rsi + 3*8]
    adc r10, rax
    mulx r8, rax, [rsi + 4*8]
    adc r9, rax
    mulx rcx, rax, [rsi + 5*8]
    adc r8, rax
    adc rcx, 0
# loop i = 1
    mov rdx, [rbp + 1*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r12, rax
    adox r11, rbx
    mov [rdi + 1*8], r12
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
    adox r12, rbx
    adc r12, 0
# loop i = 2
    mov rdx, [rbp + 2*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r11, rax
    adox r10, rbx
    mov [rdi + 2*8], r11
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
    adox r12, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r12, rax
    adox r11, rbx
    adc r11, 0
# loop i = 3
    mov rdx, [rbp + 3*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r10, rax
    adox r9, rbx
    mov [rdi + 3*8], r10
    mov r10, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx rcx, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 4*8]
    adcx r12, rax
    adox r11, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r11, rax
    adox r10, rbx
    adc r10, 0
# loop i = 4
    mov rdx, [rbp + 4*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r9, rax
    adox r8, rbx
    mov [rdi + 4*8], r9
    mov r9, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx rcx, rax
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
    adc r9, 0
# loop i = 5
    mov rdx, [rbp + 5*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r8, rax
    adox rcx, rbx
    mov [rdi + 5*8], r8
    mov r8, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx rcx, rax
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
    adc r8, 0
# outro
    mov [rdi + 6*8], rcx
    mov [rdi + 7*8], r12
    mov [rdi + 8*8], r11
    mov [rdi + 9*8], r10
    mov [rdi + 10*8], r9
    mov [rdi + 11*8], r8
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro mult_7x7
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
    mulx r13, rcx, [rsi + 0*8]
    mov [rdi + 0*8], rcx
    mulx r12, rax, [rsi + 1*8]
    add r13, rax
    mulx r11, rax, [rsi + 2*8]
    adc r12, rax
    mulx r10, rax, [rsi + 3*8]
    adc r11, rax
    mulx r9, rax, [rsi + 4*8]
    adc r10, rax
    mulx r8, rax, [rsi + 5*8]
    adc r9, rax
    mulx rcx, rax, [rsi + 6*8]
    adc r8, rax
    adc rcx, 0
# loop i = 1
    mov rdx, [rbp + 1*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r13, rax
    adox r12, rbx
    mov [rdi + 1*8], r13
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
    adox r13, rbx
    adc r13, 0
# loop i = 2
    mov rdx, [rbp + 2*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r12, rax
    adox r11, rbx
    mov [rdi + 2*8], r12
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
    adox r13, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r13, rax
    adox r12, rbx
    adc r12, 0
# loop i = 3
    mov rdx, [rbp + 3*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r11, rax
    adox r10, rbx
    mov [rdi + 3*8], r11
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
    adox r13, rbx
    mulx rbx, rax, [rsi + 5*8]
    adcx r13, rax
    adox r12, rbx
    mulx rbx, rax, [rsi + 6*8]
    adcx r12, rax
    adox r11, rbx
    adc r11, 0
# loop i = 4
    mov rdx, [rbp + 4*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r10, rax
    adox r9, rbx
    mov [rdi + 4*8], r10
    mov r10, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r9, rax
    adox r8, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 3*8]
    adcx rcx, rax
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
    adc r10, 0
# loop i = 5
    mov rdx, [rbp + 5*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r9, rax
    adox r8, rbx
    mov [rdi + 5*8], r9
    mov r9, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx r8, rax
    adox rcx, rbx
    mulx rbx, rax, [rsi + 2*8]
    adcx rcx, rax
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
    adc r9, 0
# loop i = 6
    mov rdx, [rbp + 6*8]
    mulx rbx, rax, [rsi + 0*8]
    adcx r8, rax
    adox rcx, rbx
    mov [rdi + 6*8], r8
    mov r8, 0
    mulx rbx, rax, [rsi + 1*8]
    adcx rcx, rax
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
    adc r8, 0
# outro
    mov [rdi + 7*8], rcx
    mov [rdi + 8*8], r13
    mov [rdi + 9*8], r12
    mov [rdi + 10*8], r11
    mov [rdi + 11*8], r10
    mov [rdi + 12*8], r9
    mov [rdi + 13*8], r8
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro mult_10x10
push    r14
xor     eax, eax
mov     ecx, 12
push    r13
lea     r13, [rsi+40]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+40]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 192
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+96]
mov     ecx, 12
rep stosq
mov     rdi, rsp
add_5x5
mov     rdx, r14
mov     rsi, r12
xor     eax, eax
lea     rdi, [rsp+48]
add_5x5
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_5x5
lea     r12, [rbx+80]
mov     rdx, rsp
lea     rsi, [rsp+48]
lea     rdi, [rsp+96]
mult_6x6
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_5x5
mov     rdx, r12
mov     rsi, rbx
xor     eax, eax
lea     rdi, [rsp+96]
sub_d_12x10_woc
lea     rdi, [rbx+40]
lea     rdx, [rsp+96]
xor     eax, eax
mov     rsi, rdi
add_12x11
add     rsp, 192
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_18x18
push    r14
xor     eax, eax
mov     ecx, 20
push    r13
lea     r13, [rsi+72]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+72]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 320
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+160]
mov     ecx, 20
rep stosq
mov     rdi, rsp
add_9x9
mov     rdx, r14
mov     rsi, r12
xor     eax, eax
lea     rdi, [rsp+80]
add_9x9
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_9x9
lea     r12, [rbx+144]
mov     rdx, rsp
lea     rsi, [rsp+80]
lea     rdi, [rsp+160]
mult_10x10
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_9x9
mov     rdx, r12
mov     rsi, rbx
xor     eax, eax
lea     rdi, [rsp+160]
sub_d_20x18_woc
lea     rdi, [rbx+72]
lea     rdx, [rsp+160]
xor     eax, eax
mov     rsi, rdi
add_20x19
add     rsp, 320
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_10x9
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 8
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*9]
    adc rax, 0
    mov [rdi + 8*9], rax
.endm

.macro sub_d_20x20_woc
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
    mov r12, [rdi + 18*8]
    mov r13, [rdi + 19*8]
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
# outro
    sbb r12, 0
    sub r12, [rsi + 18*8]
    sbb r13, 0
    sub r13, [rsi + 19*8]
    mov [rdi + 18*8], r12
    mov [rdi + 19*8], r13
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_21x20
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 19
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*20]
    adc rax, 0
    mov [rdi + 8*20], rax
.endm

.macro mult_19x19
push    r14
xor     eax, eax
mov     ecx, 20
push    r13
lea     r13, [rsi+72]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+72]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 320
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+160]
mov     ecx, 20
rep stosq
mov     rdi, rsp
add_10x9
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+80]
xor     eax, eax
add_10x9
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
xor     eax, eax
lea     rbp, [rbx+144]
mult_9x9
mov     rdx, rsp
lea     rsi, [rsp+80]
xor     eax, eax
lea     rdi, [rsp+160]
mult_10x10
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
xor     eax, eax
mult_10x10
mov     rdx, rbx
mov     rsi, rbp
xor     eax, eax
lea     rdi, [rsp+160]
sub_d_20x20_woc
lea     rdi, [rbx+72]
lea     rdx, [rsp+160]
xor     eax, eax
mov     rsi, rdi
add_21x20
add     rsp, 320
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_36x36
push    r14
xor     eax, eax
mov     ecx, 38
push    r13
lea     r13, [rsi+144]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+144]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 608
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+304]
mov     ecx, 38
rep stosq
mov     rdi, rsp
add_18x18
mov     rdx, r14
mov     rsi, r12
xor     eax, eax
lea     rdi, [rsp+152]
add_18x18
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_18x18
lea     r12, [rbx+288]
mov     rdx, rsp
lea     rsi, [rsp+152]
lea     rdi, [rsp+304]
mult_19x19
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_18x18
mov     rdx, r12
mov     rsi, rbx
xor     eax, eax
lea     rdi, [rsp+304]
sub_d_38x36_woc
lea     rdi, [rbx+144]
lea     rdx, [rsp+304]
xor     eax, eax
mov     rsi, rdi
add_38x37
add     rsp, 608
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
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

.macro sub_d_38x38_woc
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
    mov rbx, [rdi + 34*8]
    mov rcx, [rdi + 35*8]
    mov r8, [rdi + 36*8]
    mov r9, [rdi + 37*8]
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
# ------------------
    mov [rdi + 30*8], r13
    mov [rdi + 31*8], r14
    mov [rdi + 32*8], r15
    mov [rdi + 33*8], rax
    mov [rdi + 34*8], rbx
    mov [rdi + 35*8], rcx
    mov [rdi + 36*8], r8
# outro
    sbb r8, 0
    sub r8, [rsi + 36*8]
    sbb r9, 0
    sub r9, [rsi + 37*8]
    mov [rdi + 36*8], r8
    mov [rdi + 37*8], r9
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_39x38
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 37
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*38]
    adc rax, 0
    mov [rdi + 8*38], rax
.endm

.macro mult_37x37
push    r14
xor     eax, eax
mov     ecx, 38
push    r13
lea     r13, [rsi+144]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+144]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 608
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+304]
mov     ecx, 38
rep stosq
mov     rdi, rsp
add_19x18
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+152]
xor     eax, eax
add_19x18
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
xor     eax, eax
lea     rbp, [rbx+288]
mult_18x18
mov     rdx, rsp
lea     rsi, [rsp+152]
xor     eax, eax
lea     rdi, [rsp+304]
mult_19x19
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
xor     eax, eax
mult_19x19
mov     rdx, rbx
mov     rsi, rbp
xor     eax, eax
lea     rdi, [rsp+304]
sub_d_38x38_woc
lea     rdi, [rbx+144]
lea     rdx, [rsp+304]
xor     eax, eax
mov     rsi, rdi
add_39x38
add     rsp, 608
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_72x72
push    r14
xor     eax, eax
mov     ecx, 74
push    r13
lea     r13, [rsi+288]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+288]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 1184
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+592]
mov     ecx, 74
rep stosq
mov     rdi, rsp
add_36x36
mov     rdx, r14
mov     rsi, r12
xor     eax, eax
lea     rdi, [rsp+296]
add_36x36
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_36x36
lea     r12, [rbx+576]
mov     rdx, rsp
lea     rsi, [rsp+296]
lea     rdi, [rsp+592]
mult_37x37
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_36x36
mov     rdx, r12
mov     rsi, rbx
xor     eax, eax
lea     rdi, [rsp+592]
sub_d_74x72_woc
lea     rdi, [rbx+288]
lea     rdx, [rsp+592]
xor     eax, eax
mov     rsi, rdi
add_74x73
add     rsp, 1184
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro add_37x36
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 35
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*36]
    adc rax, 0
    mov [rdi + 8*36], rax
.endm

.macro sub_d_74x74_woc
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
# ------------------ 6
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
# last loop
# ------------------
    mov r10, [rdi + 71*8]
    mov r11, [rdi + 72*8]
    mov r12, [rdi + 73*8]
# ------------------
    sbb r9, [rsi + 70*8]
    sbb r10, 0
    sub r9, [rdx + 70*8]
    sbb r10, [rsi + 71*8]
    sbb r11, 0
    sub r10, [rdx + 71*8]
# ------------------
    mov [rdi + 70*8], r9
    mov [rdi + 71*8], r10
    mov [rdi + 72*8], r11
# outro
    sbb r11, 0
    sub r11, [rsi + 72*8]
    sbb r12, 0
    sub r12, [rsi + 73*8]
    mov [rdi + 72*8], r11
    mov [rdi + 73*8], r12
# pop
    pop r15
    pop r14
    pop r13
    pop r12
    pop rsi
    pop rbp
    pop rbx

.endm

.macro add_75x74
# intro
    mov rax, [rsi + 0]
    add rax, [rdx + 0]
    mov [rdi + 0], rax
# loop
    .set k, 1
    .rept 73
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
# outro
    mov rax, [rsi + 8*74]
    adc rax, 0
    mov [rdi + 8*74], rax
.endm

.macro mult_73x73
push    r14
xor     eax, eax
mov     ecx, 74
push    r13
lea     r13, [rsi+288]
push    r12
mov     r12, rdx
mov     rdx, rsi
push    rbp
lea     r14, [r12+288]
mov     rbp, rsi
mov     rsi, r13
push    rbx
mov     rbx, rdi
sub     rsp, 1184
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+592]
mov     ecx, 74
rep stosq
mov     rdi, rsp
add_37x36
mov     rdx, r12
mov     rsi, r14
lea     rdi, [rsp+296]
xor     eax, eax
add_37x36
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
xor     eax, eax
lea     rbp, [rbx+576]
mult_36x36
mov     rdx, rsp
lea     rsi, [rsp+296]
xor     eax, eax
lea     rdi, [rsp+592]
mult_37x37
mov     rdx, r14
mov     rsi, r13
mov     rdi, rbp
xor     eax, eax
mult_37x37
mov     rdx, rbx
mov     rsi, rbp
xor     eax, eax
lea     rdi, [rsp+592]
sub_d_74x74_woc
lea     rdi, [rbx+288]
lea     rdx, [rsp+592]
xor     eax, eax
mov     rsi, rdi
add_75x74
add     rsp, 1184
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.macro mult_144x144
push    r14
xor     eax, eax
mov     ecx, 146
push    r13
lea     r13, [rsi+576]
push    r12
mov     r12, rdx
mov     rdx, r13
push    rbp
lea     r14, [r12+576]
mov     rbp, rsi
push    rbx
mov     rbx, rdi
sub     rsp, 2336
mov     rdi, rsp
rep stosq
lea     rdi, [rsp+1168]
mov     ecx, 146
rep stosq
mov     rdi, rsp
add_72x72
mov     rdx, r14
mov     rsi, r12
xor     eax, eax
lea     rdi, [rsp+584]
add_72x72
mov     rdx, r12
mov     rsi, rbp
mov     rdi, rbx
mult_72x72
lea     r12, [rbx+1152]
mov     rdx, rsp
lea     rsi, [rsp+584]
lea     rdi, [rsp+1168]
mult_73x73
mov     rdx, r14
mov     rsi, r13
mov     rdi, r12
mult_72x72
mov     rdx, r12
mov     rsi, rbx
xor     eax, eax
lea     rdi, [rsp+1168]
sub_d_146x144_woc
lea     rdi, [rbx+576]
lea     rdx, [rsp+1168]
xor     eax, eax
mov     rsi, rdi
add_146x145
add     rsp, 2336
pop     rbx
pop     rbp
pop     r12
pop     r13
pop     r14
.endm

.global secsidh_internal_9215k384_fp_mult_144x144
secsidh_internal_9215k384_fp_mult_144x144:
    mult_144x144
    ret

.global secsidh_internal_9215k384_fp_cmov
secsidh_internal_9215k384_fp_cmov:
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


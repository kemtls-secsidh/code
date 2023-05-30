.intel_syntax noprefix

.section .rodata

.set pbits,6143
.set pbytes,768
.set plimbs,96

.global secsidh_internal_6143m59l262_redc_alpha
secsidh_internal_6143m59l262_redc_alpha:
.quad  0x35985E4C03BD1015, 0x74C88B0E3733AB9E, 0xCC5EBC3CA4FAA947, 0x821D23FC31769999 
.quad  0x7DD81C7ECF287336, 0x397B3BC1E4878A95, 0x4668669E24F5CD05, 0x45C68D7E8D5BA6E8 
.quad  0x63DAA86AB6F4AA9E, 0x4FEADF6BA95A3814, 0xC14DC5EE6A02B1CD, 0xCCAAB92DABD0F3E2 
.quad  0x5C5DE133E486EA2A, 0x149B3990755103CF, 0x7E37E927A1F549AC, 0xB41FA73F044C2191 
.quad  0x1558E943308D9356, 0xCC51A5F650F1DDE6, 0x9CB2FD4B418C0807, 0xFDAC42332803B31B 
.quad  0x3FE7C77E1BD479FC, 0x77B20071167346DE, 0x63DA3A20500E6BE1, 0xEBBB7C777054734A 
.quad  0xA71872C190AEABFF, 0xA13B14217BC25602, 0x3BF5A900D843EEF1, 0x2D83E22FC80D9EC1 
.quad  0x3FAC5F1728799D3D, 0x289BCF6DC62ADBCE, 0x65606A37CBFD6BBA, 0x4025C0EB0BD9BC24 
.quad  0x316E981BB3081481, 0xFFAE9D83F13FD711, 0x3A4C4B7B7647853E, 0x1D234B4CEA41F44B 
.quad  0x5475A30084FF51D6, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 
.quad  0x0, 0x0, 0x0, 0x0 


.section .text

.global secsidh_internal_6143m59l262_fp_mont_redc_a
secsidh_internal_6143m59l262_fp_mont_redc_a:
push r14
sub rsp, 2*pbytes+8
mov r14, secsidh_internal_6143m59l262_p@GOTPCREL[rip]
xor rax, rax
mov [rsp + 8*192], rax
########################## mul
mov rdx, [rsi]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsi + 8*1]
adox rcx, rax
mov [rsp + 8*1], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsi + 8*2]
adox rbx, rax
mov [rsp + 8*2], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsi + 8*3]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsi + 8*4]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsi + 8*5]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsi + 8*6]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsi + 8*7]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsi + 8*8]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsi + 8*9]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsi + 8*10]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsi + 8*11]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsi + 8*12]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsi + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsi + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsi + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsi + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsi + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsi + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsi + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsi + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsi + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsi + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsi + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsi + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsi + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsi + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsi + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsi + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsi + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsi + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsi + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsi + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsi + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsi + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsi + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsi + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsi + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsi + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsi + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsi + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsi + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsi + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsi + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsi + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsi + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsi + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsi + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsi + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsi + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsi + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsi + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsi + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsi + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsi + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsi + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsi + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsi + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsi + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsi + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsi + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsi + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsi + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsi + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsi + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsi + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsi + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsi + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsi + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsi + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsi + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsi + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsi + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsi + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsi + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsi + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsi + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsi + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsi + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsi + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsi + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsi + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsi + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsi + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsi + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsi + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsi + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsi + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsi + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsi + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsi + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsi + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsi + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsi + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsi + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsi + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

######### carry
mov r11, 0
adox rbx, [rsi + 8*96]
adcx rbx, r11
mov [rsp + 8*96], rbx

mov rax, 0
mov r11, 0
adox r11, [rsi + 8*97]
adcx r11, rax
mov [rsp + 8*97], r11

mov r11, 0
adox r11, [rsi + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsi + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsi + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsi + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsi + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsi + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsi + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsi + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsi + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsi + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsi + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsi + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsi + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsi + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsi + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsi + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsi + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsi + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsi + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsi + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsi + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsi + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsi + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsi + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsi + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsi + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsi + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsi + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsi + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsi + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsi + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsi + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsi + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsi + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsi + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsi + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsi + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsi + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsi + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsi + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsi + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsi + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsi + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsi + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsi + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsi + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsi + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsi + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsi + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsi + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsi + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsi + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsi + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsi + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsi + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsi + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsi + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsi + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsi + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsi + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsi + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsi + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsi + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsi + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsi + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsi + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsi + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsi + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsi + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsi + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsi + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsi + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsi + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsi + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsi + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsi + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsi + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsi + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsi + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsi + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsi + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsi + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsi + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsi + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsi + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsi + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsi + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsi + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsi + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsi + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsi + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsi + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsi + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsi + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsi + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*1]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*1], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*2]
adox rcx, rax
mov [rsp + 8*2], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*3]
adox rbx, rax
mov [rsp + 8*3], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*4], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*5], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*6], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*7], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*8], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*9], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*10], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*11], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*12], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*13], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*97]
adcx rbx, r11
mov [rsp + 8*97], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*98]
adcx r11, rax
mov [rsp + 8*98], r11

mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*2]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*2], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*3]
adox rcx, rax
mov [rsp + 8*3], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*4]
adox rbx, rax
mov [rsp + 8*4], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*5]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*6]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*7]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*8]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*9]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*10]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*11]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*12]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*98]
adcx rbx, r11
mov [rsp + 8*98], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*99]
adcx r11, rax
mov [rsp + 8*99], r11

mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*3]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*3], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*4]
adox rcx, rax
mov [rsp + 8*4], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*5]
adox rbx, rax
mov [rsp + 8*5], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*6], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*7], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*8], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*9], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*10], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*11], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*12], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*13], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*99]
adcx rbx, r11
mov [rsp + 8*99], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*100]
adcx r11, rax
mov [rsp + 8*100], r11

mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*4]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*4], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*5]
adox rcx, rax
mov [rsp + 8*5], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*6]
adox rbx, rax
mov [rsp + 8*6], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*7]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*8]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*9]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*10]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*11]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*12]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*100]
adcx rbx, r11
mov [rsp + 8*100], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*101]
adcx r11, rax
mov [rsp + 8*101], r11

mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*5]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*5], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*6]
adox rcx, rax
mov [rsp + 8*6], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*7]
adox rbx, rax
mov [rsp + 8*7], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*8], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*9], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*10], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*11], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*12], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*13], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*101]
adcx rbx, r11
mov [rsp + 8*101], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*102]
adcx r11, rax
mov [rsp + 8*102], r11

mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*6]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*6], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*7]
adox rcx, rax
mov [rsp + 8*7], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*8]
adox rbx, rax
mov [rsp + 8*8], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*9]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*10]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*11]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*12]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*102]
adcx rbx, r11
mov [rsp + 8*102], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*103]
adcx r11, rax
mov [rsp + 8*103], r11

mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*7]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*7], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*8]
adox rcx, rax
mov [rsp + 8*8], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*9]
adox rbx, rax
mov [rsp + 8*9], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*10], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*11], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*12], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*13], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*103]
adcx rbx, r11
mov [rsp + 8*103], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*104]
adcx r11, rax
mov [rsp + 8*104], r11

mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*8]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*8], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*9]
adox rcx, rax
mov [rsp + 8*9], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*10]
adox rbx, rax
mov [rsp + 8*10], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*11]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*12]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*104]
adcx rbx, r11
mov [rsp + 8*104], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*105]
adcx r11, rax
mov [rsp + 8*105], r11

mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*9]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*9], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*10]
adox rcx, rax
mov [rsp + 8*10], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*11]
adox rbx, rax
mov [rsp + 8*11], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*12], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*13], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*105]
adcx rbx, r11
mov [rsp + 8*105], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*106]
adcx r11, rax
mov [rsp + 8*106], r11

mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*10]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*10], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*11]
adox rcx, rax
mov [rsp + 8*11], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*12]
adox rbx, rax
mov [rsp + 8*12], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*106]
adcx rbx, r11
mov [rsp + 8*106], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*107]
adcx r11, rax
mov [rsp + 8*107], r11

mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*11]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*11], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*12]
adox rcx, rax
mov [rsp + 8*12], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*13]
adox rbx, rax
mov [rsp + 8*13], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*107]
adcx rbx, r11
mov [rsp + 8*107], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*108]
adcx r11, rax
mov [rsp + 8*108], r11

mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*12]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*12], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*13]
adox rcx, rax
mov [rsp + 8*13], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*14]
adox rbx, rax
mov [rsp + 8*14], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*108]
adcx rbx, r11
mov [rsp + 8*108], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*109]
adcx r11, rax
mov [rsp + 8*109], r11

mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*13]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*13], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*14]
adox rcx, rax
mov [rsp + 8*14], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*15]
adox rbx, rax
mov [rsp + 8*15], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*109]
adcx rbx, r11
mov [rsp + 8*109], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*110]
adcx r11, rax
mov [rsp + 8*110], r11

mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*14]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*14], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*15]
adox rcx, rax
mov [rsp + 8*15], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*16]
adox rbx, rax
mov [rsp + 8*16], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*110]
adcx rbx, r11
mov [rsp + 8*110], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*111]
adcx r11, rax
mov [rsp + 8*111], r11

mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*15]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*15], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*16]
adox rcx, rax
mov [rsp + 8*16], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*17]
adox rbx, rax
mov [rsp + 8*17], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*111]
adcx rbx, r11
mov [rsp + 8*111], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*112]
adcx r11, rax
mov [rsp + 8*112], r11

mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*16]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*16], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*17]
adox rcx, rax
mov [rsp + 8*17], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*18]
adox rbx, rax
mov [rsp + 8*18], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*112]
adcx rbx, r11
mov [rsp + 8*112], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*113]
adcx r11, rax
mov [rsp + 8*113], r11

mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*17]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*17], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*18]
adox rcx, rax
mov [rsp + 8*18], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*19]
adox rbx, rax
mov [rsp + 8*19], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*113]
adcx rbx, r11
mov [rsp + 8*113], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*114]
adcx r11, rax
mov [rsp + 8*114], r11

mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*18]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*18], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*19]
adox rcx, rax
mov [rsp + 8*19], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*20]
adox rbx, rax
mov [rsp + 8*20], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*114]
adcx rbx, r11
mov [rsp + 8*114], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*115]
adcx r11, rax
mov [rsp + 8*115], r11

mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*19]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*19], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*20]
adox rcx, rax
mov [rsp + 8*20], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*21]
adox rbx, rax
mov [rsp + 8*21], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*115]
adcx rbx, r11
mov [rsp + 8*115], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*116]
adcx r11, rax
mov [rsp + 8*116], r11

mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*20]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*20], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*21]
adox rcx, rax
mov [rsp + 8*21], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*22]
adox rbx, rax
mov [rsp + 8*22], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*116]
adcx rbx, r11
mov [rsp + 8*116], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*117]
adcx r11, rax
mov [rsp + 8*117], r11

mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*21]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*21], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*22]
adox rcx, rax
mov [rsp + 8*22], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*23]
adox rbx, rax
mov [rsp + 8*23], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*117]
adcx rbx, r11
mov [rsp + 8*117], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*118]
adcx r11, rax
mov [rsp + 8*118], r11

mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*22]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*22], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*23]
adox rcx, rax
mov [rsp + 8*23], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*24]
adox rbx, rax
mov [rsp + 8*24], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*118]
adcx rbx, r11
mov [rsp + 8*118], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*119]
adcx r11, rax
mov [rsp + 8*119], r11

mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*23]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*23], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*24]
adox rcx, rax
mov [rsp + 8*24], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*25]
adox rbx, rax
mov [rsp + 8*25], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*119]
adcx rbx, r11
mov [rsp + 8*119], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*120]
adcx r11, rax
mov [rsp + 8*120], r11

mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*24]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*24], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*25]
adox rcx, rax
mov [rsp + 8*25], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*26]
adox rbx, rax
mov [rsp + 8*26], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*120]
adcx rbx, r11
mov [rsp + 8*120], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*121]
adcx r11, rax
mov [rsp + 8*121], r11

mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*25]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*25], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*26]
adox rcx, rax
mov [rsp + 8*26], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*27]
adox rbx, rax
mov [rsp + 8*27], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*121]
adcx rbx, r11
mov [rsp + 8*121], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*122]
adcx r11, rax
mov [rsp + 8*122], r11

mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*26]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*26], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*27]
adox rcx, rax
mov [rsp + 8*27], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*28]
adox rbx, rax
mov [rsp + 8*28], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*122]
adcx rbx, r11
mov [rsp + 8*122], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*123]
adcx r11, rax
mov [rsp + 8*123], r11

mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*27]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*27], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*28]
adox rcx, rax
mov [rsp + 8*28], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*29]
adox rbx, rax
mov [rsp + 8*29], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*123]
adcx rbx, r11
mov [rsp + 8*123], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*124]
adcx r11, rax
mov [rsp + 8*124], r11

mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*28]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*28], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*29]
adox rcx, rax
mov [rsp + 8*29], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*30]
adox rbx, rax
mov [rsp + 8*30], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*124]
adcx rbx, r11
mov [rsp + 8*124], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*125]
adcx r11, rax
mov [rsp + 8*125], r11

mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*29]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*29], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*30]
adox rcx, rax
mov [rsp + 8*30], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*31]
adox rbx, rax
mov [rsp + 8*31], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*125]
adcx rbx, r11
mov [rsp + 8*125], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*126]
adcx r11, rax
mov [rsp + 8*126], r11

mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*30]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*30], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*31]
adox rcx, rax
mov [rsp + 8*31], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*32]
adox rbx, rax
mov [rsp + 8*32], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*126]
adcx rbx, r11
mov [rsp + 8*126], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*127]
adcx r11, rax
mov [rsp + 8*127], r11

mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*31]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*31], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*32]
adox rcx, rax
mov [rsp + 8*32], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*33]
adox rbx, rax
mov [rsp + 8*33], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*127]
adcx rbx, r11
mov [rsp + 8*127], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*128]
adcx r11, rax
mov [rsp + 8*128], r11

mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*32]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*32], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*33]
adox rcx, rax
mov [rsp + 8*33], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*34]
adox rbx, rax
mov [rsp + 8*34], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*128]
adcx rbx, r11
mov [rsp + 8*128], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*129]
adcx r11, rax
mov [rsp + 8*129], r11

mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*33]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*33], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*34]
adox rcx, rax
mov [rsp + 8*34], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*35]
adox rbx, rax
mov [rsp + 8*35], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*129]
adcx rbx, r11
mov [rsp + 8*129], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*130]
adcx r11, rax
mov [rsp + 8*130], r11

mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*34]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*34], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*35]
adox rcx, rax
mov [rsp + 8*35], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*36]
adox rbx, rax
mov [rsp + 8*36], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*130]
adcx rbx, r11
mov [rsp + 8*130], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*131]
adcx r11, rax
mov [rsp + 8*131], r11

mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*35]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*35], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*36]
adox rcx, rax
mov [rsp + 8*36], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*37]
adox rbx, rax
mov [rsp + 8*37], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*131]
adcx rbx, r11
mov [rsp + 8*131], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*132]
adcx r11, rax
mov [rsp + 8*132], r11

mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*36]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*36], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*37]
adox rcx, rax
mov [rsp + 8*37], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*38]
adox rbx, rax
mov [rsp + 8*38], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*132]
adcx rbx, r11
mov [rsp + 8*132], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*133]
adcx r11, rax
mov [rsp + 8*133], r11

mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*37]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*37], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*38]
adox rcx, rax
mov [rsp + 8*38], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*39]
adox rbx, rax
mov [rsp + 8*39], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*133]
adcx rbx, r11
mov [rsp + 8*133], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*134]
adcx r11, rax
mov [rsp + 8*134], r11

mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*38]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*38], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*39]
adox rcx, rax
mov [rsp + 8*39], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*40]
adox rbx, rax
mov [rsp + 8*40], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*134]
adcx rbx, r11
mov [rsp + 8*134], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*135]
adcx r11, rax
mov [rsp + 8*135], r11

mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*39]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*39], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*40]
adox rcx, rax
mov [rsp + 8*40], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*41]
adox rbx, rax
mov [rsp + 8*41], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*135]
adcx rbx, r11
mov [rsp + 8*135], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*136]
adcx r11, rax
mov [rsp + 8*136], r11

mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*40]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*40], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*41]
adox rcx, rax
mov [rsp + 8*41], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*42]
adox rbx, rax
mov [rsp + 8*42], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*136]
adcx rbx, r11
mov [rsp + 8*136], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*137]
adcx r11, rax
mov [rsp + 8*137], r11

mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*41]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*41], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*42]
adox rcx, rax
mov [rsp + 8*42], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*43]
adox rbx, rax
mov [rsp + 8*43], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*137]
adcx rbx, r11
mov [rsp + 8*137], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*138]
adcx r11, rax
mov [rsp + 8*138], r11

mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*42]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*42], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*43]
adox rcx, rax
mov [rsp + 8*43], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*44]
adox rbx, rax
mov [rsp + 8*44], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*138]
adcx rbx, r11
mov [rsp + 8*138], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*139]
adcx r11, rax
mov [rsp + 8*139], r11

mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*43]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*43], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*44]
adox rcx, rax
mov [rsp + 8*44], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*45]
adox rbx, rax
mov [rsp + 8*45], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*139]
adcx rbx, r11
mov [rsp + 8*139], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*140]
adcx r11, rax
mov [rsp + 8*140], r11

mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*44]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*44], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*45]
adox rcx, rax
mov [rsp + 8*45], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*46]
adox rbx, rax
mov [rsp + 8*46], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*140]
adcx rbx, r11
mov [rsp + 8*140], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*141]
adcx r11, rax
mov [rsp + 8*141], r11

mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*45]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*45], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*46]
adox rcx, rax
mov [rsp + 8*46], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*47]
adox rbx, rax
mov [rsp + 8*47], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*141]
adcx rbx, r11
mov [rsp + 8*141], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*142]
adcx r11, rax
mov [rsp + 8*142], r11

mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*46]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*46], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*47]
adox rcx, rax
mov [rsp + 8*47], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*48]
adox rbx, rax
mov [rsp + 8*48], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*142]
adcx rbx, r11
mov [rsp + 8*142], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*143]
adcx r11, rax
mov [rsp + 8*143], r11

mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*47]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*47], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*48]
adox rcx, rax
mov [rsp + 8*48], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*49]
adox rbx, rax
mov [rsp + 8*49], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*143]
adcx rbx, r11
mov [rsp + 8*143], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*144]
adcx r11, rax
mov [rsp + 8*144], r11

mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*48]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*48], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*49]
adox rcx, rax
mov [rsp + 8*49], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*50]
adox rbx, rax
mov [rsp + 8*50], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*144]
adcx rbx, r11
mov [rsp + 8*144], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*145]
adcx r11, rax
mov [rsp + 8*145], r11

mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*49]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*49], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*50]
adox rcx, rax
mov [rsp + 8*50], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*51]
adox rbx, rax
mov [rsp + 8*51], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*145]
adcx rbx, r11
mov [rsp + 8*145], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*146]
adcx r11, rax
mov [rsp + 8*146], r11

mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*50]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*50], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*51]
adox rcx, rax
mov [rsp + 8*51], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*52]
adox rbx, rax
mov [rsp + 8*52], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*146]
adcx rbx, r11
mov [rsp + 8*146], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*147]
adcx r11, rax
mov [rsp + 8*147], r11

mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*51]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*51], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*52]
adox rcx, rax
mov [rsp + 8*52], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*53]
adox rbx, rax
mov [rsp + 8*53], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*147]
adcx rbx, r11
mov [rsp + 8*147], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*148]
adcx r11, rax
mov [rsp + 8*148], r11

mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*52]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*52], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*53]
adox rcx, rax
mov [rsp + 8*53], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*54]
adox rbx, rax
mov [rsp + 8*54], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*148]
adcx rbx, r11
mov [rsp + 8*148], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*149]
adcx r11, rax
mov [rsp + 8*149], r11

mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*53]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*53], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*54]
adox rcx, rax
mov [rsp + 8*54], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*55]
adox rbx, rax
mov [rsp + 8*55], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*149]
adcx rbx, r11
mov [rsp + 8*149], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*150]
adcx r11, rax
mov [rsp + 8*150], r11

mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*54]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*54], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*55]
adox rcx, rax
mov [rsp + 8*55], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*56]
adox rbx, rax
mov [rsp + 8*56], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*150]
adcx rbx, r11
mov [rsp + 8*150], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*151]
adcx r11, rax
mov [rsp + 8*151], r11

mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*55]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*55], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*56]
adox rcx, rax
mov [rsp + 8*56], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*57]
adox rbx, rax
mov [rsp + 8*57], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*151]
adcx rbx, r11
mov [rsp + 8*151], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*152]
adcx r11, rax
mov [rsp + 8*152], r11

mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*56]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*56], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*57]
adox rcx, rax
mov [rsp + 8*57], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*58]
adox rbx, rax
mov [rsp + 8*58], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*152]
adcx rbx, r11
mov [rsp + 8*152], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*153]
adcx r11, rax
mov [rsp + 8*153], r11

mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*57]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*57], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*58]
adox rcx, rax
mov [rsp + 8*58], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*59]
adox rbx, rax
mov [rsp + 8*59], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rsp + 8*151], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rsp + 8*152], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*153]
adcx rbx, r11
mov [rsp + 8*153], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*154]
adcx r11, rax
mov [rsp + 8*154], r11

mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*58]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*58], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*59]
adox rcx, rax
mov [rsp + 8*59], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*60]
adox rbx, rax
mov [rsp + 8*60], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*152]
adox rbx, rax
mov [rsp + 8*152], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*153]
adox rcx, rax
mov [rsp + 8*153], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*154]
adcx rbx, r11
mov [rsp + 8*154], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*155]
adcx r11, rax
mov [rsp + 8*155], r11

mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*59]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*59], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*60]
adox rcx, rax
mov [rsp + 8*60], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*61]
adox rbx, rax
mov [rsp + 8*61], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rsp + 8*151], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rsp + 8*152], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*153]
adox rbx, rax
mov [rsp + 8*153], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*154]
adox rcx, rax
mov [rsp + 8*154], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*155]
adcx rbx, r11
mov [rsp + 8*155], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*156]
adcx r11, rax
mov [rsp + 8*156], r11

mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*60]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*60], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*61]
adox rcx, rax
mov [rsp + 8*61], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*62]
adox rbx, rax
mov [rsp + 8*62], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*152]
adox rbx, rax
mov [rsp + 8*152], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*153]
adox rcx, rax
mov [rsp + 8*153], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*154]
adox rbx, rax
mov [rsp + 8*154], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*155]
adox rcx, rax
mov [rsp + 8*155], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*156]
adcx rbx, r11
mov [rsp + 8*156], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*157]
adcx r11, rax
mov [rsp + 8*157], r11

mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*61]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*61], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*62]
adox rcx, rax
mov [rsp + 8*62], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*63]
adox rbx, rax
mov [rsp + 8*63], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rsp + 8*151], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rsp + 8*152], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*153]
adox rbx, rax
mov [rsp + 8*153], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*154]
adox rcx, rax
mov [rsp + 8*154], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*155]
adox rbx, rax
mov [rsp + 8*155], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*156]
adox rcx, rax
mov [rsp + 8*156], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*157]
adcx rbx, r11
mov [rsp + 8*157], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*158]
adcx r11, rax
mov [rsp + 8*158], r11

mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*62]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*62], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*63]
adox rcx, rax
mov [rsp + 8*63], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*64]
adox rbx, rax
mov [rsp + 8*64], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*152]
adox rbx, rax
mov [rsp + 8*152], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*153]
adox rcx, rax
mov [rsp + 8*153], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*154]
adox rbx, rax
mov [rsp + 8*154], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*155]
adox rcx, rax
mov [rsp + 8*155], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*156]
adox rbx, rax
mov [rsp + 8*156], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*157]
adox rcx, rax
mov [rsp + 8*157], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*158]
adcx rbx, r11
mov [rsp + 8*158], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*159]
adcx r11, rax
mov [rsp + 8*159], r11

mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*63]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*63], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*64]
adox rcx, rax
mov [rsp + 8*64], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*65]
adox rbx, rax
mov [rsp + 8*65], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rsp + 8*151], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rsp + 8*152], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*153]
adox rbx, rax
mov [rsp + 8*153], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*154]
adox rcx, rax
mov [rsp + 8*154], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*155]
adox rbx, rax
mov [rsp + 8*155], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*156]
adox rcx, rax
mov [rsp + 8*156], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*157]
adox rbx, rax
mov [rsp + 8*157], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*158]
adox rcx, rax
mov [rsp + 8*158], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*159]
adcx rbx, r11
mov [rsp + 8*159], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*160]
adcx r11, rax
mov [rsp + 8*160], r11

mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*64]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*64], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*65]
adox rcx, rax
mov [rsp + 8*65], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*66]
adox rbx, rax
mov [rsp + 8*66], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*152]
adox rbx, rax
mov [rsp + 8*152], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*153]
adox rcx, rax
mov [rsp + 8*153], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*154]
adox rbx, rax
mov [rsp + 8*154], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*155]
adox rcx, rax
mov [rsp + 8*155], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*156]
adox rbx, rax
mov [rsp + 8*156], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*157]
adox rcx, rax
mov [rsp + 8*157], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*158]
adox rbx, rax
mov [rsp + 8*158], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*159]
adox rcx, rax
mov [rsp + 8*159], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*160]
adcx rbx, r11
mov [rsp + 8*160], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*161]
adcx r11, rax
mov [rsp + 8*161], r11

mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*65]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*65], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*66]
adox rcx, rax
mov [rsp + 8*66], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*67]
adox rbx, rax
mov [rsp + 8*67], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rsp + 8*151], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rsp + 8*152], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*153]
adox rbx, rax
mov [rsp + 8*153], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*154]
adox rcx, rax
mov [rsp + 8*154], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*155]
adox rbx, rax
mov [rsp + 8*155], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*156]
adox rcx, rax
mov [rsp + 8*156], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*157]
adox rbx, rax
mov [rsp + 8*157], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*158]
adox rcx, rax
mov [rsp + 8*158], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*159]
adox rbx, rax
mov [rsp + 8*159], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*160]
adox rcx, rax
mov [rsp + 8*160], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*161]
adcx rbx, r11
mov [rsp + 8*161], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*162]
adcx r11, rax
mov [rsp + 8*162], r11

mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*66]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*66], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*67]
adox rcx, rax
mov [rsp + 8*67], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*68]
adox rbx, rax
mov [rsp + 8*68], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*152]
adox rbx, rax
mov [rsp + 8*152], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*153]
adox rcx, rax
mov [rsp + 8*153], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*154]
adox rbx, rax
mov [rsp + 8*154], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*155]
adox rcx, rax
mov [rsp + 8*155], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*156]
adox rbx, rax
mov [rsp + 8*156], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*157]
adox rcx, rax
mov [rsp + 8*157], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*158]
adox rbx, rax
mov [rsp + 8*158], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*159]
adox rcx, rax
mov [rsp + 8*159], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*160]
adox rbx, rax
mov [rsp + 8*160], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*161]
adox rcx, rax
mov [rsp + 8*161], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*162]
adcx rbx, r11
mov [rsp + 8*162], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*163]
adcx r11, rax
mov [rsp + 8*163], r11

mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*67]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*67], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*68]
adox rcx, rax
mov [rsp + 8*68], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*69]
adox rbx, rax
mov [rsp + 8*69], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rsp + 8*151], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rsp + 8*152], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*153]
adox rbx, rax
mov [rsp + 8*153], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*154]
adox rcx, rax
mov [rsp + 8*154], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*155]
adox rbx, rax
mov [rsp + 8*155], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*156]
adox rcx, rax
mov [rsp + 8*156], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*157]
adox rbx, rax
mov [rsp + 8*157], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*158]
adox rcx, rax
mov [rsp + 8*158], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*159]
adox rbx, rax
mov [rsp + 8*159], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*160]
adox rcx, rax
mov [rsp + 8*160], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*161]
adox rbx, rax
mov [rsp + 8*161], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*162]
adox rcx, rax
mov [rsp + 8*162], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*163]
adcx rbx, r11
mov [rsp + 8*163], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*164]
adcx r11, rax
mov [rsp + 8*164], r11

mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*68]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*68], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*69]
adox rcx, rax
mov [rsp + 8*69], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*70]
adox rbx, rax
mov [rsp + 8*70], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*152]
adox rbx, rax
mov [rsp + 8*152], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*153]
adox rcx, rax
mov [rsp + 8*153], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*154]
adox rbx, rax
mov [rsp + 8*154], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*155]
adox rcx, rax
mov [rsp + 8*155], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*156]
adox rbx, rax
mov [rsp + 8*156], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*157]
adox rcx, rax
mov [rsp + 8*157], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*158]
adox rbx, rax
mov [rsp + 8*158], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*159]
adox rcx, rax
mov [rsp + 8*159], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*160]
adox rbx, rax
mov [rsp + 8*160], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*161]
adox rcx, rax
mov [rsp + 8*161], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*162]
adox rbx, rax
mov [rsp + 8*162], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*163]
adox rcx, rax
mov [rsp + 8*163], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*164]
adcx rbx, r11
mov [rsp + 8*164], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*165]
adcx r11, rax
mov [rsp + 8*165], r11

mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*69]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*69], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*70]
adox rcx, rax
mov [rsp + 8*70], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*71]
adox rbx, rax
mov [rsp + 8*71], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rsp + 8*151], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rsp + 8*152], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*153]
adox rbx, rax
mov [rsp + 8*153], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*154]
adox rcx, rax
mov [rsp + 8*154], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*155]
adox rbx, rax
mov [rsp + 8*155], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*156]
adox rcx, rax
mov [rsp + 8*156], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*157]
adox rbx, rax
mov [rsp + 8*157], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*158]
adox rcx, rax
mov [rsp + 8*158], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*159]
adox rbx, rax
mov [rsp + 8*159], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*160]
adox rcx, rax
mov [rsp + 8*160], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*161]
adox rbx, rax
mov [rsp + 8*161], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*162]
adox rcx, rax
mov [rsp + 8*162], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*163]
adox rbx, rax
mov [rsp + 8*163], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*164]
adox rcx, rax
mov [rsp + 8*164], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*165]
adcx rbx, r11
mov [rsp + 8*165], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*166]
adcx r11, rax
mov [rsp + 8*166], r11

mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*70]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*70], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*71]
adox rcx, rax
mov [rsp + 8*71], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*72]
adox rbx, rax
mov [rsp + 8*72], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*152]
adox rbx, rax
mov [rsp + 8*152], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*153]
adox rcx, rax
mov [rsp + 8*153], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*154]
adox rbx, rax
mov [rsp + 8*154], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*155]
adox rcx, rax
mov [rsp + 8*155], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*156]
adox rbx, rax
mov [rsp + 8*156], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*157]
adox rcx, rax
mov [rsp + 8*157], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*158]
adox rbx, rax
mov [rsp + 8*158], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*159]
adox rcx, rax
mov [rsp + 8*159], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*160]
adox rbx, rax
mov [rsp + 8*160], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*161]
adox rcx, rax
mov [rsp + 8*161], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*162]
adox rbx, rax
mov [rsp + 8*162], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*163]
adox rcx, rax
mov [rsp + 8*163], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*164]
adox rbx, rax
mov [rsp + 8*164], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*165]
adox rcx, rax
mov [rsp + 8*165], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*166]
adcx rbx, r11
mov [rsp + 8*166], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*167]
adcx r11, rax
mov [rsp + 8*167], r11

mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*71]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*71], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*72]
adox rcx, rax
mov [rsp + 8*72], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*73]
adox rbx, rax
mov [rsp + 8*73], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rsp + 8*151], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rsp + 8*152], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*153]
adox rbx, rax
mov [rsp + 8*153], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*154]
adox rcx, rax
mov [rsp + 8*154], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*155]
adox rbx, rax
mov [rsp + 8*155], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*156]
adox rcx, rax
mov [rsp + 8*156], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*157]
adox rbx, rax
mov [rsp + 8*157], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*158]
adox rcx, rax
mov [rsp + 8*158], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*159]
adox rbx, rax
mov [rsp + 8*159], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*160]
adox rcx, rax
mov [rsp + 8*160], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*161]
adox rbx, rax
mov [rsp + 8*161], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*162]
adox rcx, rax
mov [rsp + 8*162], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*163]
adox rbx, rax
mov [rsp + 8*163], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*164]
adox rcx, rax
mov [rsp + 8*164], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*165]
adox rbx, rax
mov [rsp + 8*165], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*166]
adox rcx, rax
mov [rsp + 8*166], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*167]
adcx rbx, r11
mov [rsp + 8*167], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*168]
adcx r11, rax
mov [rsp + 8*168], r11

mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*72]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*72], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*73]
adox rcx, rax
mov [rsp + 8*73], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*74]
adox rbx, rax
mov [rsp + 8*74], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*152]
adox rbx, rax
mov [rsp + 8*152], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*153]
adox rcx, rax
mov [rsp + 8*153], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*154]
adox rbx, rax
mov [rsp + 8*154], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*155]
adox rcx, rax
mov [rsp + 8*155], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*156]
adox rbx, rax
mov [rsp + 8*156], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*157]
adox rcx, rax
mov [rsp + 8*157], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*158]
adox rbx, rax
mov [rsp + 8*158], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*159]
adox rcx, rax
mov [rsp + 8*159], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*160]
adox rbx, rax
mov [rsp + 8*160], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*161]
adox rcx, rax
mov [rsp + 8*161], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*162]
adox rbx, rax
mov [rsp + 8*162], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*163]
adox rcx, rax
mov [rsp + 8*163], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*164]
adox rbx, rax
mov [rsp + 8*164], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*165]
adox rcx, rax
mov [rsp + 8*165], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*166]
adox rbx, rax
mov [rsp + 8*166], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*167]
adox rcx, rax
mov [rsp + 8*167], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*168]
adcx rbx, r11
mov [rsp + 8*168], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*169]
adcx r11, rax
mov [rsp + 8*169], r11

mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*73]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*73], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*74]
adox rcx, rax
mov [rsp + 8*74], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*75]
adox rbx, rax
mov [rsp + 8*75], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rsp + 8*151], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rsp + 8*152], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*153]
adox rbx, rax
mov [rsp + 8*153], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*154]
adox rcx, rax
mov [rsp + 8*154], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*155]
adox rbx, rax
mov [rsp + 8*155], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*156]
adox rcx, rax
mov [rsp + 8*156], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*157]
adox rbx, rax
mov [rsp + 8*157], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*158]
adox rcx, rax
mov [rsp + 8*158], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*159]
adox rbx, rax
mov [rsp + 8*159], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*160]
adox rcx, rax
mov [rsp + 8*160], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*161]
adox rbx, rax
mov [rsp + 8*161], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*162]
adox rcx, rax
mov [rsp + 8*162], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*163]
adox rbx, rax
mov [rsp + 8*163], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*164]
adox rcx, rax
mov [rsp + 8*164], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*165]
adox rbx, rax
mov [rsp + 8*165], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*166]
adox rcx, rax
mov [rsp + 8*166], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*167]
adox rbx, rax
mov [rsp + 8*167], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*168]
adox rcx, rax
mov [rsp + 8*168], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*169]
adcx rbx, r11
mov [rsp + 8*169], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*170]
adcx r11, rax
mov [rsp + 8*170], r11

mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*74]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*74], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*75]
adox rcx, rax
mov [rsp + 8*75], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*76]
adox rbx, rax
mov [rsp + 8*76], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*138]
adox rbx, rax
mov [rsp + 8*138], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*139]
adox rcx, rax
mov [rsp + 8*139], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*140]
adox rbx, rax
mov [rsp + 8*140], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*141]
adox rcx, rax
mov [rsp + 8*141], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*142]
adox rbx, rax
mov [rsp + 8*142], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*143]
adox rcx, rax
mov [rsp + 8*143], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*144]
adox rbx, rax
mov [rsp + 8*144], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*145]
adox rcx, rax
mov [rsp + 8*145], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*146]
adox rbx, rax
mov [rsp + 8*146], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*147]
adox rcx, rax
mov [rsp + 8*147], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*148]
adox rbx, rax
mov [rsp + 8*148], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*149]
adox rcx, rax
mov [rsp + 8*149], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*150]
adox rbx, rax
mov [rsp + 8*150], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*151]
adox rcx, rax
mov [rsp + 8*151], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*152]
adox rbx, rax
mov [rsp + 8*152], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*153]
adox rcx, rax
mov [rsp + 8*153], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*154]
adox rbx, rax
mov [rsp + 8*154], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*155]
adox rcx, rax
mov [rsp + 8*155], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*156]
adox rbx, rax
mov [rsp + 8*156], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*157]
adox rcx, rax
mov [rsp + 8*157], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*158]
adox rbx, rax
mov [rsp + 8*158], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*159]
adox rcx, rax
mov [rsp + 8*159], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*160]
adox rbx, rax
mov [rsp + 8*160], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*161]
adox rcx, rax
mov [rsp + 8*161], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*162]
adox rbx, rax
mov [rsp + 8*162], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*163]
adox rcx, rax
mov [rsp + 8*163], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*164]
adox rbx, rax
mov [rsp + 8*164], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*165]
adox rcx, rax
mov [rsp + 8*165], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*166]
adox rbx, rax
mov [rsp + 8*166], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*167]
adox rcx, rax
mov [rsp + 8*167], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*168]
adox rbx, rax
mov [rsp + 8*168], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*169]
adox rcx, rax
mov [rsp + 8*169], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*170]
adcx rbx, r11
mov [rsp + 8*170], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*171]
adcx r11, rax
mov [rsp + 8*171], r11

mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*75]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*75], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*76]
adox rcx, rax
mov [rsp + 8*76], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*77]
adox rbx, rax
mov [rsp + 8*77], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*78]
adox rcx, rax
mov [rsp + 8*78], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*79]
adox rbx, rax
mov [rsp + 8*79], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*80]
adox rcx, rax
mov [rsp + 8*80], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*81]
adox rbx, rax
mov [rsp + 8*81], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*82]
adox rcx, rax
mov [rsp + 8*82], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*83]
adox rbx, rax
mov [rsp + 8*83], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*84]
adox rcx, rax
mov [rsp + 8*84], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*85]
adox rbx, rax
mov [rsp + 8*85], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*86]
adox rcx, rax
mov [rsp + 8*86], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*87]
adox rbx, rax
mov [rsp + 8*87], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*88]
adox rcx, rax
mov [rsp + 8*88], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*89]
adox rbx, rax
mov [rsp + 8*89], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*90]
adox rcx, rax
mov [rsp + 8*90], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*91]
adox rbx, rax
mov [rsp + 8*91], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*92]
adox rcx, rax
mov [rsp + 8*92], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*93]
adox rbx, rax
mov [rsp + 8*93], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*94]
adox rcx, rax
mov [rsp + 8*94], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*95]
adox rbx, rax
mov [rsp + 8*95], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*96]
adox rcx, rax
mov [rsp + 8*96], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*97]
adox rbx, rax
mov [rsp + 8*97], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*98]
adox rcx, rax
mov [rsp + 8*98], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*99]
adox rbx, rax
mov [rsp + 8*99], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*100]
adox rcx, rax
mov [rsp + 8*100], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*101]
adox rbx, rax
mov [rsp + 8*101], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*102]
adox rcx, rax
mov [rsp + 8*102], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*103]
adox rbx, rax
mov [rsp + 8*103], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*104]
adox rcx, rax
mov [rsp + 8*104], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*105]
adox rbx, rax
mov [rsp + 8*105], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*106]
adox rcx, rax
mov [rsp + 8*106], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*107]
adox rbx, rax
mov [rsp + 8*107], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*108]
adox rcx, rax
mov [rsp + 8*108], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*109]
adox rbx, rax
mov [rsp + 8*109], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*110]
adox rcx, rax
mov [rsp + 8*110], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*111]
adox rbx, rax
mov [rsp + 8*111], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*112]
adox rcx, rax
mov [rsp + 8*112], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*113]
adox rbx, rax
mov [rsp + 8*113], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*114]
adox rcx, rax
mov [rsp + 8*114], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*115]
adox rbx, rax
mov [rsp + 8*115], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*116]
adox rcx, rax
mov [rsp + 8*116], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*117]
adox rbx, rax
mov [rsp + 8*117], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*118]
adox rcx, rax
mov [rsp + 8*118], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*119]
adox rbx, rax
mov [rsp + 8*119], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*120]
adox rcx, rax
mov [rsp + 8*120], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*121]
adox rbx, rax
mov [rsp + 8*121], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*122]
adox rcx, rax
mov [rsp + 8*122], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*123]
adox rbx, rax
mov [rsp + 8*123], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*124]
adox rcx, rax
mov [rsp + 8*124], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*125]
adox rbx, rax
mov [rsp + 8*125], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*126]
adox rcx, rax
mov [rsp + 8*126], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*127]
adox rbx, rax
mov [rsp + 8*127], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*128]
adox rcx, rax
mov [rsp + 8*128], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*129]
adox rbx, rax
mov [rsp + 8*129], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*130]
adox rcx, rax
mov [rsp + 8*130], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*131]
adox rbx, rax
mov [rsp + 8*131], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*132]
adox rcx, rax
mov [rsp + 8*132], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*133]
adox rbx, rax
mov [rsp + 8*133], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*134]
adox rcx, rax
mov [rsp + 8*134], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*135]
adox rbx, rax
mov [rsp + 8*135], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*136]
adox rcx, rax
mov [rsp + 8*136], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*137]
adox rbx, rax
mov [rsp + 8*137], rbx

mulx rbx, rax, [r14 + 8*63]
adcx rcx, [rsp + 8*138]
adox rcx, rax
mov [rsp + 8*138], rcx

mulx rcx, rax, [r14 + 8*64]
adcx rbx, [rsp + 8*139]
adox rbx, rax
mov [rsp + 8*139], rbx

mulx rbx, rax, [r14 + 8*65]
adcx rcx, [rsp + 8*140]
adox rcx, rax
mov [rsp + 8*140], rcx

mulx rcx, rax, [r14 + 8*66]
adcx rbx, [rsp + 8*141]
adox rbx, rax
mov [rsp + 8*141], rbx

mulx rbx, rax, [r14 + 8*67]
adcx rcx, [rsp + 8*142]
adox rcx, rax
mov [rsp + 8*142], rcx

mulx rcx, rax, [r14 + 8*68]
adcx rbx, [rsp + 8*143]
adox rbx, rax
mov [rsp + 8*143], rbx

mulx rbx, rax, [r14 + 8*69]
adcx rcx, [rsp + 8*144]
adox rcx, rax
mov [rsp + 8*144], rcx

mulx rcx, rax, [r14 + 8*70]
adcx rbx, [rsp + 8*145]
adox rbx, rax
mov [rsp + 8*145], rbx

mulx rbx, rax, [r14 + 8*71]
adcx rcx, [rsp + 8*146]
adox rcx, rax
mov [rsp + 8*146], rcx

mulx rcx, rax, [r14 + 8*72]
adcx rbx, [rsp + 8*147]
adox rbx, rax
mov [rsp + 8*147], rbx

mulx rbx, rax, [r14 + 8*73]
adcx rcx, [rsp + 8*148]
adox rcx, rax
mov [rsp + 8*148], rcx

mulx rcx, rax, [r14 + 8*74]
adcx rbx, [rsp + 8*149]
adox rbx, rax
mov [rsp + 8*149], rbx

mulx rbx, rax, [r14 + 8*75]
adcx rcx, [rsp + 8*150]
adox rcx, rax
mov [rsp + 8*150], rcx

mulx rcx, rax, [r14 + 8*76]
adcx rbx, [rsp + 8*151]
adox rbx, rax
mov [rsp + 8*151], rbx

mulx rbx, rax, [r14 + 8*77]
adcx rcx, [rsp + 8*152]
adox rcx, rax
mov [rsp + 8*152], rcx

mulx rcx, rax, [r14 + 8*78]
adcx rbx, [rsp + 8*153]
adox rbx, rax
mov [rsp + 8*153], rbx

mulx rbx, rax, [r14 + 8*79]
adcx rcx, [rsp + 8*154]
adox rcx, rax
mov [rsp + 8*154], rcx

mulx rcx, rax, [r14 + 8*80]
adcx rbx, [rsp + 8*155]
adox rbx, rax
mov [rsp + 8*155], rbx

mulx rbx, rax, [r14 + 8*81]
adcx rcx, [rsp + 8*156]
adox rcx, rax
mov [rsp + 8*156], rcx

mulx rcx, rax, [r14 + 8*82]
adcx rbx, [rsp + 8*157]
adox rbx, rax
mov [rsp + 8*157], rbx

mulx rbx, rax, [r14 + 8*83]
adcx rcx, [rsp + 8*158]
adox rcx, rax
mov [rsp + 8*158], rcx

mulx rcx, rax, [r14 + 8*84]
adcx rbx, [rsp + 8*159]
adox rbx, rax
mov [rsp + 8*159], rbx

mulx rbx, rax, [r14 + 8*85]
adcx rcx, [rsp + 8*160]
adox rcx, rax
mov [rsp + 8*160], rcx

mulx rcx, rax, [r14 + 8*86]
adcx rbx, [rsp + 8*161]
adox rbx, rax
mov [rsp + 8*161], rbx

mulx rbx, rax, [r14 + 8*87]
adcx rcx, [rsp + 8*162]
adox rcx, rax
mov [rsp + 8*162], rcx

mulx rcx, rax, [r14 + 8*88]
adcx rbx, [rsp + 8*163]
adox rbx, rax
mov [rsp + 8*163], rbx

mulx rbx, rax, [r14 + 8*89]
adcx rcx, [rsp + 8*164]
adox rcx, rax
mov [rsp + 8*164], rcx

mulx rcx, rax, [r14 + 8*90]
adcx rbx, [rsp + 8*165]
adox rbx, rax
mov [rsp + 8*165], rbx

mulx rbx, rax, [r14 + 8*91]
adcx rcx, [rsp + 8*166]
adox rcx, rax
mov [rsp + 8*166], rcx

mulx rcx, rax, [r14 + 8*92]
adcx rbx, [rsp + 8*167]
adox rbx, rax
mov [rsp + 8*167], rbx

mulx rbx, rax, [r14 + 8*93]
adcx rcx, [rsp + 8*168]
adox rcx, rax
mov [rsp + 8*168], rcx

mulx rcx, rax, [r14 + 8*94]
adcx rbx, [rsp + 8*169]
adox rbx, rax
mov [rsp + 8*169], rbx

mulx rbx, rax, [r14 + 8*95]
adcx rcx, [rsp + 8*170]
adox rcx, rax
mov [rsp + 8*170], rcx

######### carry
mov r11, 0
adox rbx, [rsp + 8*171]
adcx rbx, r11
mov [rsp + 8*171], rbx

mov rax, 0
mov r11, 0
adox r11, [rsp + 8*172]
adcx r11, rax
mov [rsp + 8*172], r11

mov r11, 0
adox r11, [rsp + 8*173]
adcx r11, rax
mov [rsp + 8*173], r11

mov r11, 0
adox r11, [rsp + 8*174]
adcx r11, rax
mov [rsp + 8*174], r11

mov r11, 0
adox r11, [rsp + 8*175]
adcx r11, rax
mov [rsp + 8*175], r11

mov r11, 0
adox r11, [rsp + 8*176]
adcx r11, rax
mov [rsp + 8*176], r11

mov r11, 0
adox r11, [rsp + 8*177]
adcx r11, rax
mov [rsp + 8*177], r11

mov r11, 0
adox r11, [rsp + 8*178]
adcx r11, rax
mov [rsp + 8*178], r11

mov r11, 0
adox r11, [rsp + 8*179]
adcx r11, rax
mov [rsp + 8*179], r11

mov r11, 0
adox r11, [rsp + 8*180]
adcx r11, rax
mov [rsp + 8*180], r11

mov r11, 0
adox r11, [rsp + 8*181]
adcx r11, rax
mov [rsp + 8*181], r11

mov r11, 0
adox r11, [rsp + 8*182]
adcx r11, rax
mov [rsp + 8*182], r11

mov r11, 0
adox r11, [rsp + 8*183]
adcx r11, rax
mov [rsp + 8*183], r11

mov r11, 0
adox r11, [rsp + 8*184]
adcx r11, rax
mov [rsp + 8*184], r11

mov r11, 0
adox r11, [rsp + 8*185]
adcx r11, rax
mov [rsp + 8*185], r11

mov r11, 0
adox r11, [rsp + 8*186]
adcx r11, rax
mov [rsp + 8*186], r11

mov r11, 0
adox r11, [rsp + 8*187]
adcx r11, rax
mov [rsp + 8*187], r11

mov r11, 0
adox r11, [rsp + 8*188]
adcx r11, rax
mov [rsp + 8*188], r11

mov r11, 0
adox r11, [rsp + 8*189]
adcx r11, rax
mov [rsp + 8*189], r11

mov r11, 0
adox r11, [rsp + 8*190]
adcx r11, rax
mov [rsp + 8*190], r11

mov r11, 0
adox r11, [rsp + 8*191]
adcx r11, rax
mov [rsp + 8*191], r11

mov r11, 0
adox r11, [rsp + 8*192]
adcx r11, rax
mov [rsp + 8*192], r11

########################## mul
xor rax, rax
mov rdx, [rsp + 8*76]
mulx rcx, rax, [r14]
adcx rax, rdx
mov [rsp + 8*76], rax

mulx rbx, rax, [r14 + 8*1]
adcx rcx, [rsp + 8*77]
adox rcx, rax
mov [rsp + 8*77], rcx

mulx rcx, rax, [r14 + 8*2]
adcx rbx, [rsp + 8*78]
adox rbx, rax
mov [rsp + 8*78], rbx

mulx rbx, rax, [r14 + 8*3]
adcx rcx, [rsp + 8*79]
adox rcx, rax
mov [rsp + 8*79], rcx

mulx rcx, rax, [r14 + 8*4]
adcx rbx, [rsp + 8*80]
adox rbx, rax
mov [rsp + 8*80], rbx

mulx rbx, rax, [r14 + 8*5]
adcx rcx, [rsp + 8*81]
adox rcx, rax
mov [rsp + 8*81], rcx

mulx rcx, rax, [r14 + 8*6]
adcx rbx, [rsp + 8*82]
adox rbx, rax
mov [rsp + 8*82], rbx

mulx rbx, rax, [r14 + 8*7]
adcx rcx, [rsp + 8*83]
adox rcx, rax
mov [rsp + 8*83], rcx

mulx rcx, rax, [r14 + 8*8]
adcx rbx, [rsp + 8*84]
adox rbx, rax
mov [rsp + 8*84], rbx

mulx rbx, rax, [r14 + 8*9]
adcx rcx, [rsp + 8*85]
adox rcx, rax
mov [rsp + 8*85], rcx

mulx rcx, rax, [r14 + 8*10]
adcx rbx, [rsp + 8*86]
adox rbx, rax
mov [rsp + 8*86], rbx

mulx rbx, rax, [r14 + 8*11]
adcx rcx, [rsp + 8*87]
adox rcx, rax
mov [rsp + 8*87], rcx

mulx rcx, rax, [r14 + 8*12]
adcx rbx, [rsp + 8*88]
adox rbx, rax
mov [rsp + 8*88], rbx

mulx rbx, rax, [r14 + 8*13]
adcx rcx, [rsp + 8*89]
adox rcx, rax
mov [rsp + 8*89], rcx

mulx rcx, rax, [r14 + 8*14]
adcx rbx, [rsp + 8*90]
adox rbx, rax
mov [rsp + 8*90], rbx

mulx rbx, rax, [r14 + 8*15]
adcx rcx, [rsp + 8*91]
adox rcx, rax
mov [rsp + 8*91], rcx

mulx rcx, rax, [r14 + 8*16]
adcx rbx, [rsp + 8*92]
adox rbx, rax
mov [rsp + 8*92], rbx

mulx rbx, rax, [r14 + 8*17]
adcx rcx, [rsp + 8*93]
adox rcx, rax
mov [rsp + 8*93], rcx

mulx rcx, rax, [r14 + 8*18]
adcx rbx, [rsp + 8*94]
adox rbx, rax
mov [rsp + 8*94], rbx

mulx rbx, rax, [r14 + 8*19]
adcx rcx, [rsp + 8*95]
adox rcx, rax
mov [rsp + 8*95], rcx

mulx rcx, rax, [r14 + 8*20]
adcx rbx, [rsp + 8*96]
adox rbx, rax
mov [rsp + 8*96], rbx

mulx rbx, rax, [r14 + 8*21]
adcx rcx, [rsp + 8*97]
adox rcx, rax
mov [rsp + 8*97], rcx

mulx rcx, rax, [r14 + 8*22]
adcx rbx, [rsp + 8*98]
adox rbx, rax
mov [rsp + 8*98], rbx

mulx rbx, rax, [r14 + 8*23]
adcx rcx, [rsp + 8*99]
adox rcx, rax
mov [rsp + 8*99], rcx

mulx rcx, rax, [r14 + 8*24]
adcx rbx, [rsp + 8*100]
adox rbx, rax
mov [rsp + 8*100], rbx

mulx rbx, rax, [r14 + 8*25]
adcx rcx, [rsp + 8*101]
adox rcx, rax
mov [rsp + 8*101], rcx

mulx rcx, rax, [r14 + 8*26]
adcx rbx, [rsp + 8*102]
adox rbx, rax
mov [rsp + 8*102], rbx

mulx rbx, rax, [r14 + 8*27]
adcx rcx, [rsp + 8*103]
adox rcx, rax
mov [rsp + 8*103], rcx

mulx rcx, rax, [r14 + 8*28]
adcx rbx, [rsp + 8*104]
adox rbx, rax
mov [rsp + 8*104], rbx

mulx rbx, rax, [r14 + 8*29]
adcx rcx, [rsp + 8*105]
adox rcx, rax
mov [rsp + 8*105], rcx

mulx rcx, rax, [r14 + 8*30]
adcx rbx, [rsp + 8*106]
adox rbx, rax
mov [rsp + 8*106], rbx

mulx rbx, rax, [r14 + 8*31]
adcx rcx, [rsp + 8*107]
adox rcx, rax
mov [rsp + 8*107], rcx

mulx rcx, rax, [r14 + 8*32]
adcx rbx, [rsp + 8*108]
adox rbx, rax
mov [rsp + 8*108], rbx

mulx rbx, rax, [r14 + 8*33]
adcx rcx, [rsp + 8*109]
adox rcx, rax
mov [rsp + 8*109], rcx

mulx rcx, rax, [r14 + 8*34]
adcx rbx, [rsp + 8*110]
adox rbx, rax
mov [rsp + 8*110], rbx

mulx rbx, rax, [r14 + 8*35]
adcx rcx, [rsp + 8*111]
adox rcx, rax
mov [rsp + 8*111], rcx

mulx rcx, rax, [r14 + 8*36]
adcx rbx, [rsp + 8*112]
adox rbx, rax
mov [rsp + 8*112], rbx

mulx rbx, rax, [r14 + 8*37]
adcx rcx, [rsp + 8*113]
adox rcx, rax
mov [rsp + 8*113], rcx

mulx rcx, rax, [r14 + 8*38]
adcx rbx, [rsp + 8*114]
adox rbx, rax
mov [rsp + 8*114], rbx

mulx rbx, rax, [r14 + 8*39]
adcx rcx, [rsp + 8*115]
adox rcx, rax
mov [rsp + 8*115], rcx

mulx rcx, rax, [r14 + 8*40]
adcx rbx, [rsp + 8*116]
adox rbx, rax
mov [rsp + 8*116], rbx

mulx rbx, rax, [r14 + 8*41]
adcx rcx, [rsp + 8*117]
adox rcx, rax
mov [rsp + 8*117], rcx

mulx rcx, rax, [r14 + 8*42]
adcx rbx, [rsp + 8*118]
adox rbx, rax
mov [rsp + 8*118], rbx

mulx rbx, rax, [r14 + 8*43]
adcx rcx, [rsp + 8*119]
adox rcx, rax
mov [rsp + 8*119], rcx

mulx rcx, rax, [r14 + 8*44]
adcx rbx, [rsp + 8*120]
adox rbx, rax
mov [rsp + 8*120], rbx

mulx rbx, rax, [r14 + 8*45]
adcx rcx, [rsp + 8*121]
adox rcx, rax
mov [rsp + 8*121], rcx

mulx rcx, rax, [r14 + 8*46]
adcx rbx, [rsp + 8*122]
adox rbx, rax
mov [rsp + 8*122], rbx

mulx rbx, rax, [r14 + 8*47]
adcx rcx, [rsp + 8*123]
adox rcx, rax
mov [rsp + 8*123], rcx

mulx rcx, rax, [r14 + 8*48]
adcx rbx, [rsp + 8*124]
adox rbx, rax
mov [rsp + 8*124], rbx

mulx rbx, rax, [r14 + 8*49]
adcx rcx, [rsp + 8*125]
adox rcx, rax
mov [rsp + 8*125], rcx

mulx rcx, rax, [r14 + 8*50]
adcx rbx, [rsp + 8*126]
adox rbx, rax
mov [rsp + 8*126], rbx

mulx rbx, rax, [r14 + 8*51]
adcx rcx, [rsp + 8*127]
adox rcx, rax
mov [rsp + 8*127], rcx

mulx rcx, rax, [r14 + 8*52]
adcx rbx, [rsp + 8*128]
adox rbx, rax
mov [rsp + 8*128], rbx

mulx rbx, rax, [r14 + 8*53]
adcx rcx, [rsp + 8*129]
adox rcx, rax
mov [rsp + 8*129], rcx

mulx rcx, rax, [r14 + 8*54]
adcx rbx, [rsp + 8*130]
adox rbx, rax
mov [rsp + 8*130], rbx

mulx rbx, rax, [r14 + 8*55]
adcx rcx, [rsp + 8*131]
adox rcx, rax
mov [rsp + 8*131], rcx

mulx rcx, rax, [r14 + 8*56]
adcx rbx, [rsp + 8*132]
adox rbx, rax
mov [rsp + 8*132], rbx

mulx rbx, rax, [r14 + 8*57]
adcx rcx, [rsp + 8*133]
adox rcx, rax
mov [rsp + 8*133], rcx

mulx rcx, rax, [r14 + 8*58]
adcx rbx, [rsp + 8*134]
adox rbx, rax
mov [rsp + 8*134], rbx

mulx rbx, rax, [r14 + 8*59]
adcx rcx, [rsp + 8*135]
adox rcx, rax
mov [rsp + 8*135], rcx

mulx rcx, rax, [r14 + 8*60]
adcx rbx, [rsp + 8*136]
adox rbx, rax
mov [rsp + 8*136], rbx

mulx rbx, rax, [r14 + 8*61]
adcx rcx, [rsp + 8*137]
adox rcx, rax
mov [rsp + 8*137], rcx

mulx rcx, rax, [r14 + 8*62]
adcx rbx, [rsp + 8*138]



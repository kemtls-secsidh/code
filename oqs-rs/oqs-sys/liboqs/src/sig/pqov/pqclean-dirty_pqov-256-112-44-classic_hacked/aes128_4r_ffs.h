#ifndef AES_128_4R_H_
#define AES_128_4R_H_

#include <stdint.h>


void PQCLEAN_PQOV25611244CLASSIC_HACKED_aes128_keyschedule_ffs_lut(uint32_t* rkeys_ffs, const unsigned char* key);  // rkeys_ffs[88]

void PQCLEAN_PQOV25611244CLASSIC_HACKED_aes128_encrypt_ffs(unsigned char* ctext0, unsigned char * ctext1, const unsigned char* ptext0, const unsigned char* ptext1, const uint32_t* rkeys_ffs);



void PQCLEAN_PQOV25611244CLASSIC_HACKED_aes128_4r_keyschedule_ffs_lut(uint32_t* rkeys_ffs, const unsigned char* key);  // rkeys_ffs[40]

void PQCLEAN_PQOV25611244CLASSIC_HACKED_aes128_4r_encrypt_ffs(unsigned char* ctext0, unsigned char * ctext1, const unsigned char* ptext0, const unsigned char* ptext1, const uint32_t* rkeys_ffs);


#endif 	// AES_128_4R_H_

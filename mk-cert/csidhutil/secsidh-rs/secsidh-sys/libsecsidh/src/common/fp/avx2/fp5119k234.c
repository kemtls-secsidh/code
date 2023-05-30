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

#if defined P2047k221
const uint64_t p64[NUMBER_OF_WORDS] = {0xFFFFFFFFFFFFFFFF, 0xC90A04FFFFFFFFFF, 0xFC70C3714D157138, 0xC5A05E7D325440EC, 0xF61FE1A2E6D6CAC6, 0x1A549B7F4B8F58F1, 0xF6D3630A6EBAE5ED, 0x478AF769AE62B6E0, 0x7835F78EBC56CE0C, 0xD51310E46E8C2B09, 0xFFC6C6B2579B25D1, 0x93F4FAB37D61640D, 0xAC53715E3B7B9962, 0xA90481E7927800A6, 0x89A678DF7AAE625B, 0x844D51D759B0C530, 0x5816DA706EB3CAB, 0x457AFA1AE8C5352A, 0x90C340C95ADD5F8C, 0xB543B329BED97C94, 0xAC0073A2B919B0A4, 0x6C0E7AAB1BF721DF, 0x241FE343116B3177, 0xCE8AD54D154C156, 0x82AF03859D69962D, 0x9C3C0FC3740C26D8, 0xDEBD472AA103A02B, 0x25D9E24A0748378B, 0x9C85AFE27F67725F, 0xEFF9FF84C9B3B1B4, 0x26BB94DC36FD0732, 0x4F49AAF26E4AEFB6};

#define pbits 2047
#define itch_size 128

#elif defined P4095k256
const uint64_t p64[NUMBER_OF_WORDS] = {
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0x3B78D7B10F1CB8F4, 0x65888C198A8E59FB,
    0x69596010D2245505, 0xFB85D331BF15DBF3, 0x37972594A6C994EE, 0x96FE98E120B09BC3,
    0x58BD5BBBA27779BC, 0xD3F92A67C4103933, 0x31E5FF951B6D7341, 0xDBDCE9C5B4A495F,
    0xF7F6282402F363A1, 0x3B060DB5E11AB944, 0x4EC8B118AF8DBC53, 0xDDE49F6161571FD8,
    0x71157D20BF37675A, 0x797E5708F727ED74, 0x2321418BC30A539A, 0xA44FA639976AC4E7,
    0x91C11928B06E3FBE, 0x4CB0C8F4D65A4621, 0x8B8D69E7AC15EC05, 0xAF581DAD341E7736,
    0x6797C15ADE6FC067, 0x920FAD0AB8C53DEC, 0xC1E76D615C55D39C, 0xEB058573CE240F88,
    0xA556349D51FF4F46, 0x62F3FCAC66D97C78, 0x5F9B0D210C56F8F0, 0xAB53247F88DF7F7A,
    0x94116953CE9E76FF, 0xA22108FBBF709EBF, 0xB961C86B9AB57C35, 0x533F33CAA89E8487,
    0x608D0FF735D0ABB9, 0xAADE61945F8AE99F, 0x627B08FEB90A8490, 0x47DF1BED926B3AC9};

#define pbits 4095
#define itch_size 256

#elif defined P5119k234
const uint64_t p64[NUMBER_OF_WORDS] = {
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0x31C122B2FFFFFFFF, 0x71BAB792CCF26C33, 0xF100763480D81D65,
    0xA2A4D3AFCD84CB1, 0xA5277C5A1EDF4274, 0x83B80791506A02BE, 0x99A550E13C0F216,
    0xB269F7EFF29EE16B, 0x4433973B01A89610, 0x321DA18B685FA986, 0x257F8CBB1AD63459,
    0x8B0742F099C755E4, 0x182DC9E83CC912B1, 0xB30D2E40DB42513A, 0x80643C752D3F0BF,
    0xB1FE257416D05092, 0x4DF7CBB62E4281F0, 0xA1160AC1B85C89AD, 0x4A2E0B5D9E3D744A,
    0x966A6C73F126A7FA, 0xD2257BED2C00854, 0x4A4BF83147C01F3A, 0xD9059C466BA6095B,
    0xCBA1D52981546D14, 0x3EB030EFE24F606E, 0x1AEDFF7ABBD03380, 0x5D98DDB04F236AC6,
    0x1F166B7A23E849B5, 0x25529CD9B432F707, 0xC76F78378B762434, 0x994DE9FA51639C1D,
    0x4907FB14725711F2, 0x2132F7B67412060B, 0x93A14A8A040ECBD4, 0x6020EB29A152AD5F};

#define pbits 5119
#define itch_size 322

#elif defined P6143k256
const uint64_t p64[NUMBER_OF_WORDS] = {
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0x10FFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xB1A73428FFFFFFFF, 0x3C7EA8E3C554965A,
    0x40803AF2FC159EF2, 0xCCFB305C48D4D505, 0x6B8EF3BD24FA010D, 0x2674B4838FAD59EB,
    0x5C175CC1BE876A7, 0xC5D744BAF4074152, 0x92C4B7DD1100ADFA, 0x274E59F92BD34D4D,
    0x3CF8373B1A6D448D, 0x41DF8B0B4F3E178B, 0x4EBFB033649A8012, 0xA4FC04DEB27F0F97,
    0x531B77E3E1EB32A2, 0x91707210201D3A74, 0x79DABE4D2F2A1E0F, 0x7837DAA51F59CDFA,
    0x91CBFF70AC345B5A, 0x25223E09B7BF27C4, 0x1D384E247A3FA6BD, 0x9A2FFACBA15A6110,
    0x92D9ECF65F9B3FD4, 0x6C0E75F1235909CE, 0xE3945BA3564DD650, 0x79A5B88C7FE6D95F,
    0xC83174128DC676F, 0x792C81C648CAB8CB, 0x12EBE4E03BCBD891, 0x251ACCA5A5EB867E,
    0x260DE537CDB28252, 0xF6F73F7357DD8F6E, 0x80480988522C5703, 0x1D8333732C8142B5,
    0x305E539F114AD8ED, 0xBB6D10EB0C6C11E5, 0x4C32EAB208C6E5CE, 0x4B52CCE89E8E10AA};

#define pbits 6143
#define itch_size 386

#elif defined P8191k332
const uint64_t p64[NUMBER_OF_WORDS] = {
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0x2E0621C764440174, 0x7BA474C239058CEF,
    0x537EC480CAD755EB, 0xF912CC03E2C4557B, 0xA178D4F608BEA75D, 0xE119A92CF4E2B8AE,
    0xF1B0A4948FC7120B, 0xF0C880F300C22C8D, 0x5828B0F84AAFB84, 0x21FB939984CFDC8C,
    0xFB768AD4226A2916, 0x6A2381351243DD2, 0x8DB838D149586257, 0x27CE2BE64CBDC9B6,
    0x4A0F74C0BCD7D54F, 0x2E4918A54BA2E2C0, 0x5D83CD758E3646E2, 0x34DE7732847B9C26,
    0xDB8B41875429D81, 0xAF603BF6CD784147, 0xEE043365EA3A993C, 0x53D6731D98FED8AD,
    0xE5A9167011DB3092, 0xFE225C377A7FF1C3, 0xC10F204742CB3572, 0xF54D43218402E0CD,
    0x9EBAA03BF78873D9, 0x7D78A167B9867DE4, 0x978A75239B4E7ACE, 0x6201DF9A8EB122CF,
    0xD3A893872A7F55D4, 0x46320E442C8BC50A, 0x7520D28F0F83361F, 0x693053A8DA54B933,
    0x36AC69423D5E6089, 0xB9C4C3192EE8844E, 0xA6ABF88ACF95B5C, 0x448B344EE77D5F46,
    0x5BCB51797AFAAFF1, 0xF0D0392D1336FCE6, 0x8912950385C91E7C, 0x331DFC0B2695D0AB,
    0xB471AEE5D6DE1CB9, 0x92DC9513AD93C2EA, 0x43C05D102BB20822, 0x82B9EA8D5F9D5A71,
    0x59A6F0CCD64A9363, 0x1BE4619762BF3D69, 0x38AC9C70136407D5, 0x45802B9C1FF4EE83};

#define pbits 8191
#define itch_size 516

#elif defined P9215k384
const uint64_t p64[NUMBER_OF_WORDS] = {
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF,
    0x2EC17140FFFFFFFF, 0x58829A4749BFA0D2, 0x6E1C47467499D375, 0xA433ACAE72C1D8B4,
    0xCF5CD95CE82A5C14, 0xE60DBDFAB3FFD04C, 0x3671B6B3CD0F7E58, 0x6BD02B7FCE0F4E75,
    0x90F24807B4B7AF9C, 0x4F2CEC0CE0241B0F, 0xDAE4AB0857A44847, 0xDA2831EE87CBE75D,
    0xE72FAF27764E4CBE, 0xAAF62C413E6E47F1, 0xBBFFC6E78DBC2DA3, 0x4FA19216246934D0,
    0x53D89CE34FC62BD1, 0xC08ACE12CF11F198, 0xA42FA468F0346202, 0xF3A1ACE18417AB2F,
    0xFB69D6E1F8AB9389, 0x233F0419F2F959C2, 0x40B2D4DD4B30387A, 0xA84638104A9AB888,
    0xCA0CC59ECE014F78, 0xD3997F280FF40CAD, 0x80FC6D8B97015D3E, 0x1F4BE77FEBBA6733,
    0xF1DD3386AC13F6A7, 0xD6544289E2B3ACD6, 0x2E4EBAA44BF213A5, 0xD231097E09FE98FD,
    0xC69C26AC0032FE40, 0x520C24A33C2A46C7, 0x5E1BCDC39F4C8B8F, 0x5559A516CBF6D850,
    0x6AD4A3E4198B3C5C, 0x38022E0311F218E8, 0xF3264C72939C7E55, 0x3C0DF145B5BD51BC,
    0x628A478FA5124829, 0x7E5FA4319C3877A, 0xAE8B7D05A9A30981, 0x5977AC2CACE90F15,
    0xD8ECFCBDE4D6B71, 0xA96937DC65C53548, 0xA9255F2DFFEF2A9D, 0x1B9060660751B405,
    0x9777AC37E208F29A, 0xE021AAC821B5FD14, 0x4363CFAF112793A5, 0x3419DCB6AFDA0E09,
    0x3AFFEC566C311E95, 0xD1E15EDCCC3EA709, 0x9D000E8C5EE1B5B6, 0x8FC1951A0B63AA28,
    0xE74515E327C95380, 0x15281C20EF5E3B77, 0xE841E5F92AE94C9C, 0x4D0DD48D039DE3A7};

#define pbits 9215
#define itch_size 578

#endif

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


static inline void mult_64x64_avx2_C_cut(int32_t *v_c, const int32_t *v_a, const int32_t *v_b)
{

    int32_t v_aux[8 * 8] __attribute__((aligned(32))) = {0};
    // int32_t v_aux1[8 * 8] __attribute__((aligned(32))) = {0};
    int32_t mmrA[8 * 8] __attribute__((aligned(32))) = {0};
    int32_t mmrB[8 * 8] __attribute__((aligned(32))) = {0};
    int64_t mmrAxB[16 * 8] __attribute__((aligned(32))) = {0};

    int32_t A_v_aux[4 * 8] __attribute__((aligned(32))) = {0};
    // int32_t A_v_aux1[4 * 8] __attribute__((aligned(32))) = {0};
    int32_t A_A_v_aux[2 * 8] __attribute__((aligned(32))) = {0};
    int32_t A_A_v_aux1[2 * 8] __attribute__((aligned(32))) = {0};

    // int32_t B_v_aux[4 * 8] __attribute__((aligned(32))) = {0};
    // int32_t B_v_aux1[4 * 8] __attribute__((aligned(32))) = {0};

    int32_t B_B_v_aux[2 * 8] __attribute__((aligned(32))) = {0};
    // int32_t B_B_v_aux1[2 * 8] __attribute__((aligned(32))) = {0};

    // int32_t C_v_aux[4 * 8] __attribute__((aligned(32))) = {0};
    // int32_t C_v_aux1[4 * 8] __attribute__((aligned(32))) = {0};

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
    // mult_64x64_avx2_C_cut(&v_c[16 * 8], &v_a[8 * 8], &v_b[8 * 8]);
    sub_avx2_32_16(v_aux1, v_c, &v_c[16 * 8]);
    add_avx2_32_16(&v_c[8 * 8], &v_c[8 * 8], v_aux1);
}

static inline void mult_128x128_avx2_C_last(int32_t *v_c, const int32_t *v_a, const int32_t *v_b)
{
    int32_t v_aux[16 * 8] __attribute__((aligned(32))) = {0}, v_aux1[16 * 8] __attribute__((aligned(32))) = {0};

    add_2x_avx2_32_8(v_aux, v_a, v_b);

    mult_64x64_avx2_C(v_c, v_a, v_b);
    mult_64x64_avx2_C(v_aux1, &v_aux[8 * 8], v_aux);
    // mult_64x64_avx2_C(&v_c[16 * 8], &v_a[8 * 8], &v_b[8 * 8]);
    mult_64x64_avx2_C_cut(&v_c[16 * 8], &v_a[8 * 8], &v_b[8 * 8]);
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
    // mult_128x128_avx2_C(&v_c[32 * 8], &v_a[16 * 8], &v_b[16 * 8]);
    mult_128x128_avx2_C_last(&v_c[32 * 8], &v_a[16 * 8], &v_b[16 * 8]);
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
        sub_avx2(c, c, p);

    // int32_t carryover = 0;
    // // if(count_add%2==0)
    // //     carry32_avx2(c, 32);
    //     carry32(c, NUMBER_OF_LIMBS, RADIX, &carryover);

    carry32_avx2(c, 32);

    CNT_FP_ADD_INC();
    count_add++;
}

void fp_sub(fp c, const fp a, const fp b)
{



    // printf("sub\n");
    // fflush(stdout);
    
    // add_avx2(c, c, p);
    
    sub_avx2(c, a, b);

    // add_avx2(c, c, p);

    // add_avx2(c, c, p);    

    // carry32_avx2(c, 32);
    if (fp_issmaller(c, fp_0))
    //     // fp_add(c, c, p);
    //     add_avx2(c, c, p);
    // int32_t carryover = 0;
    // carry32(c, NUMBER_OF_LIMBS, RADIX, &carryover);

    carry32_avx2(c, 32);
    CNT_FP_ADD_INC();
}

void fp_mul_wo_redc(int32_t *c, const fp a, const fp b)
{
    mult_256x256_avx2_C_neg(c, a, b);
    mult_256x256_avx2_C(c, a, b);
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

    int32_t result[2 * NUMBER_OF_LIMBS] __attribute__((aligned(32))) = {0};
    // int32_t result_2[2 * NUMBER_OF_LIMBS] __attribute__((aligned(32))) = {0};
    int carryover = 0;

    // carry32_avx2((int *) a, 32);

    // carry32_avx2((int *) b, 32);

    

    // if(a[0] == 37678543 & b[0] == 14715160)
    //     printf("dsds");

    // // carry32((int *) b, NUMBER_OF_LIMBS, RADIX, &carryover);
    // // carry32((int *) a, NUMBER_OF_LIMBS, RADIX, &carryover);

    (void)a;
    (void)b;
    mult_256x256_avx2_C(result, a, b);


    // mult_256x256_avx2_C_neg(result_2, a, b);

    // carry32(result, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);

    // carry32(result_2, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);

    // for(int k=0; k<2 * NUMBER_OF_LIMBS; k++)
    // {
    //     if(result[k]!=result_2[k])
    //         printf("k");
    // }

    // carry32((int *) a, NUMBER_OF_LIMBS, RADIX, &carryover);

    // carry32((int *) b, NUMBER_OF_LIMBS, RADIX, &carryover); 

#ifdef INTMONT
        /*
            see Algorithm 6 "Intermediate Montgomery reductio"
            https://eprint.iacr.org/2020/665
        */

        carry32(result, 396, RADIX, &carryover);

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

        // carry32(r0, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);
        carry32_avx2(r0, 36);

        // q0
        memcpy(q1, r0, 112 * sizeof(int32_t));

        mult_128x128_avx2_C(r1, q1, redc_alpha);

        carry32(r1, NUMBER_OF_LIMBS, RADIX, &carryover);
        // carry32(r1, 2 * NUMBER_OF_LIMBS, RADIX, &carryover);
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

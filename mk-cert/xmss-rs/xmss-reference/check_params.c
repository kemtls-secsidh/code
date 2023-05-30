#include "params.h"
#include <stdio.h>
#include <string.h>


int main(void) {
    xmss_params params;
    params.func = 1; /* 1 = SHAKE */
    params.n = 16;  /* Width of hash */
    params.wots_w = 256;  /* Winternitz parameter */
    params.full_height = 24,  /* Tree height, log number of signatures */

    params.d = 2;   /* > 1 implies XMSS^MT */
    params.bds_k = 0; /* Doesn't influence sizes */
    xmss_xmssmt_initialize_params(&params);

    printf("use crate::XMSSParams;\n");
    printf("pub(crate) const XMSS_SETTINGS: XMSSParams = XMSSParams {\n");
#define printparam(param) \
    printf("    "#param ": %d,\n", params.param)

    printparam(func);
    printparam(n);
    printparam(wots_w);
    printparam(wots_log_w);
    printparam(wots_len1);
    printparam(wots_len2);
    printparam(wots_len);
    printparam(wots_sig_bytes);
    printparam(full_height);
    printparam(tree_height);
    printparam(d);
    printparam(index_bytes);
    printparam(sig_bytes);
    printparam(pk_bytes);
    printf("    sk_bytes: %llu,\n", params.sk_bytes);
    printparam(bds_k);
    printf("};\n");

    return 0;
}

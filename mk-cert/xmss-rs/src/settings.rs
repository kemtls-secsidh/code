use crate::XMSSParams;

const fn xmss_params(n: u32) -> XMSSParams {
    let wots_w: u32 = 256;
    let wots_log_w = 8;
    let wots_len1 = 8 * n / wots_log_w;
    let wots_len2 = if wots_w == 256 { 2 } else { panic!("Invalid") };
    let wots_len = wots_len1 + wots_len2;
    let wots_sig_bytes = n * wots_len;

    let d = 2; // xmss-mt
    let full_height = 24;
    let tree_height = full_height / d;
    let index_bytes = if d == 1 {
        4
    } else {
        assert!(d == 2);
        (full_height + 7) / 8
    };

    let bds_k = 0;

    let sk_bytes: u64 = {
        index_bytes
            + 4 * n
            + (2 * d - 1)
                * ((tree_height + 1) * n
                    + 4
                    + tree_height
                    + 1
                    + tree_height * n
                    + (tree_height >> 1) * n
                    + (tree_height - bds_k) * (7 + n)
                    + ((1 << bds_k) - bds_k - 1) * n
                    + 4)
            + (d - 1) * wots_sig_bytes
    } as u64;

    XMSSParams {
        func: 1,
        n,
        wots_w,
        wots_log_w, // log2(w)
        wots_len1,
        wots_len2,
        wots_len,
        wots_sig_bytes,
        full_height: 24,
        tree_height: 12,
        d: 2,
        index_bytes,
        sig_bytes: (index_bytes + n + (d * wots_sig_bytes) + (full_height * n)),
        pk_bytes: 2 * n,
        sk_bytes,
        bds_k: 0,
    }
}

pub(crate) const XMSS_SETTINGS_L1: XMSSParams = xmss_params(16);
pub(crate) const XMSS_SETTINGS_L3: XMSSParams = xmss_params(24);
pub(crate) const XMSS_SETTINGS_L5: XMSSParams = xmss_params(32);

#[cfg(test)]
mod test {

    use super::*;

    #[test]
    fn test_params() {
        let l1 = XMSSParams {
            func: 1,
            n: 16,
            wots_w: 256,
            wots_log_w: 8,
            wots_len1: 16,
            wots_len2: 2,
            wots_len: 18,
            wots_sig_bytes: 288,
            full_height: 24,
            tree_height: 12,
            d: 2,
            index_bytes: 3,
            sig_bytes: 979,
            pk_bytes: 32,
            sk_bytes: 2734,
            bds_k: 0,
        };

        assert_eq!(XMSS_SETTINGS_L1, l1);
    }
}

use std::os::raw;

mod settings;
use settings::{XMSS_SETTINGS_L1, XMSS_SETTINGS_L3, XMSS_SETTINGS_L5};

#[repr(C)]
#[derive(Debug, PartialEq)]
struct XMSSParams {
    func: raw::c_uint,
    n: raw::c_uint,
    wots_w: raw::c_uint,
    wots_log_w: raw::c_uint,
    wots_len1: raw::c_uint,
    wots_len2: raw::c_uint,
    wots_len: raw::c_uint,
    wots_sig_bytes: raw::c_uint,
    full_height: raw::c_uint,
    tree_height: raw::c_uint,
    d: raw::c_uint,
    index_bytes: raw::c_uint,
    sig_bytes: raw::c_uint,
    pk_bytes: raw::c_uint,
    sk_bytes: raw::c_ulonglong,
    bds_k: raw::c_uint,
}

#[link(name = "xmss")]
extern "C" {
    fn xmssmt_core_sign_verify(
        params: *const XMSSParams,
        m: *const raw::c_uchar,
        mlen: raw::c_ulonglong,
        sig: *const raw::c_uchar,
        pk: *const raw::c_uchar,
    ) -> raw::c_int;
    fn xmssmt_core_keypair(
        params: *const XMSSParams,
        pk: *mut raw::c_uchar,
        sk: *mut raw::c_uchar,
    ) -> raw::c_int;
    fn xmssmt_core_sign_signature(
        params: *const XMSSParams,
        sk: *mut raw::c_uchar,
        sig: *mut raw::c_uchar,
        m: *const raw::c_uchar,
        mlen: raw::c_ulonglong,
    ) -> raw::c_int;
}

macro_rules! xmss_implementation {
    ($name: ident, $settings: ident) => {
        pub mod $name {
            use super::*;

            pub fn pk_bytes() -> usize {
                $settings.pk_bytes as usize
            }

            pub fn sk_bytes() -> usize {
                $settings.sk_bytes as usize
            }

            pub fn sig_bytes() -> usize {
                $settings.sig_bytes as usize
            }

            pub fn verify(msg: &[u8], sig: &[u8], pk: &[u8]) -> bool {
                assert_eq!(sig.len(), $settings.sig_bytes as usize);
                assert_eq!(pk.len(), $settings.pk_bytes as usize);
                let res = unsafe {
                    xmssmt_core_sign_verify(
                        &$settings as *const _,
                        msg.as_ptr(),
                        msg.len() as raw::c_ulonglong,
                        sig.as_ptr(),
                        pk.as_ptr(),
                    )
                };

                return res == 0;
            }

            pub fn keypair() -> (Vec<u8>, Vec<u8>) {
                let mut pk = Vec::with_capacity($settings.pk_bytes as usize);
                let mut sk = Vec::with_capacity($settings.sk_bytes as usize);

                let res = unsafe {
                    xmssmt_core_keypair(&$settings as *const _, pk.as_mut_ptr(), sk.as_mut_ptr())
                };
                assert!(res == 0);

                unsafe {
                    pk.set_len($settings.pk_bytes as usize);
                    sk.set_len($settings.sk_bytes as usize);
                }

                return (pk, sk);
            }

            pub fn sign(sk: &mut [u8], msg: &[u8]) -> Vec<u8> {
                let mut sig = Vec::with_capacity($settings.sig_bytes as usize);
                assert_eq!(sk.len(), $settings.sk_bytes as usize);

                let res = unsafe {
                    xmssmt_core_sign_signature(
                        &$settings as *const _,
                        sk.as_mut_ptr(),
                        sig.as_mut_ptr(),
                        msg.as_ptr(),
                        msg.len() as raw::c_ulonglong,
                    )
                };
                assert!(res == 0);

                unsafe {
                    sig.set_len($settings.sig_bytes as usize);
                }
                return sig;
            }

            #[cfg(test)]
            mod test {
                use super::*;

                #[test]
                fn test_keygen_sign_verify() {
                    let msg = [0; 100];
                    let (pk, mut sk) = keypair();
                    let orig_sk = sk.clone();
                    let sig = sign(&mut sk, &msg);
                    assert!(orig_sk != sk, "sk not updated");
                    assert!(verify(&msg, &sig, &pk));
                }
            }
        }
    };
}

xmss_implementation!(level1, XMSS_SETTINGS_L1);
xmss_implementation!(level3, XMSS_SETTINGS_L3);
xmss_implementation!(level5, XMSS_SETTINGS_L5);

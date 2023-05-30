use crate::{key_schedule::{KeyScheduleComputesClientFinish, KeyScheduleComputesServerFinish, KeyScheduleTrafficWithServerFinishedPending, hkdf_expand}, msgs::enums::{ContentType, HandshakeType, ExtensionType, SignatureScheme, SignatureAlgorithm}, suites::KeyExchange};
use crate::msgs::enums::{ProtocolVersion, AlertDescription, NamedGroup};
use crate::msgs::enums::KeyUpdateRequest;
use crate::msgs::message::{Message, MessagePayload};
use crate::msgs::base::{Payload, PayloadU8};
use crate::msgs::handshake::{HandshakePayload, HandshakeMessagePayload};
use crate::msgs::handshake::{SessionID, ServerHelloPayload, HasServerExtensions};
use crate::msgs::handshake::{ClientExtension, HelloRetryRequest, KeyShareEntry};
use crate::msgs::handshake::EncryptedExtensions;
use crate::msgs::handshake::{CertificatePayloadTLS13, CertificateEntry};
use crate::msgs::handshake::{PresharedKeyIdentity, PresharedKeyOffer};
use crate::msgs::handshake::DigitallySignedStruct;
use crate::msgs::handshake::NewSessionTicketPayloadTLS13;
use crate::msgs::ccs::ChangeCipherSpecPayload;
use crate::msgs::codec::Codec;
use crate::msgs::persist;
use crate::client::ClientSessionImpl;
use crate::key_schedule::{
    KeyScheduleEarly,
    KeyScheduleNonSecret,
    KeyScheduleHandshake,
    KeyScheduleTraffic
};
use crate::cipher;
use crate::verify;
use crate::sign;
use crate::suites;
use crate::ticketer;
#[cfg(feature = "logging")]
use crate::log::{debug, warn, trace};
use crate::error::TLSError;
use crate::check::check_message;
#[cfg(feature = "quic")]
use crate::{
    quic,
    msgs::base::PayloadU16,
    session::Protocol
};

use crate::client::common::{ServerCertDetails, HandshakeDetails};
use crate::client::common::{ClientHelloDetails, ClientAuthDetails};
use crate::client::hs;

use crate::client::default_group::DEFAULT_GROUP;

use ring::constant_time;
use webpki;

// Extensions we expect in plaintext in the ServerHello.
static ALLOWED_PLAINTEXT_EXTS: &[ExtensionType] = &[
    ExtensionType::KeyShare,
    ExtensionType::PreSharedKey,
    ExtensionType::SupportedVersions,
    ExtensionType::ProactiveCiphertext,
];

// Only the intersection of things we offer, and those disallowed
// in TLS1.3
static DISALLOWED_TLS13_EXTS: &[ExtensionType] = &[
    ExtensionType::ECPointFormats,
    ExtensionType::SessionTicket,
    ExtensionType::RenegotiationInfo,
    ExtensionType::ExtendedMasterSecret,
];

pub fn validate_server_hello(sess: &mut ClientSessionImpl,
                             server_hello: &ServerHelloPayload) -> Result<(), TLSError> {
    for ext in &server_hello.extensions {
        if !ALLOWED_PLAINTEXT_EXTS.contains(&ext.get_type()) {
            sess.common.send_fatal_alert(AlertDescription::UnsupportedExtension);
            return Err(TLSError::PeerMisbehavedError("server sent unexpected cleartext ext"
                                                     .to_string()));
        }
    }

    Ok(())
}

fn find_kx_hint(sess: &mut ClientSessionImpl, dns_name: webpki::DNSNameRef) -> Option<NamedGroup> {
    let key = persist::ClientSessionKey::hint_for_dns_name(dns_name);
    let key_buf = key.get_encoding();

    let maybe_value = sess.config.session_persistence.get(&key_buf);
    maybe_value.and_then(|enc| NamedGroup::read_bytes(&enc))
}

fn save_kx_hint(sess: &mut ClientSessionImpl, dns_name: webpki::DNSNameRef, group: NamedGroup) {
    let key = persist::ClientSessionKey::hint_for_dns_name(dns_name);

    sess.config.session_persistence.put(key.get_encoding(), group.get_encoding());
}

pub fn choose_kx_groups(sess: &mut ClientSessionImpl,
                        exts: &mut Vec<ClientExtension>,
                        hello: &mut ClientHelloDetails,
                        handshake: &mut HandshakeDetails,
                        retryreq: Option<&HelloRetryRequest>) {
    // Choose our groups:
    // - if we've been asked via HelloRetryRequest for a specific
    //   one, do that.
    // - if not, we might have a hint of what the server supports
    // - if not, send just X25519.
    //
    let groups = retryreq.and_then(HelloRetryRequest::get_requested_key_share_group)
        .or_else(|| find_kx_hint(sess, handshake.dns_name.as_ref()))
        .or_else(|| Some(DEFAULT_GROUP))
        .map(|grp| vec![ grp ])
        .unwrap();

    let mut key_shares = vec![];

    handshake.print_runtime("CREATING KEYSHARES");
    for group in groups {
        // in reply to HelloRetryRequest, we must not alter any existing key
        // shares
        if let Some(already_offered_share) = hello.find_key_share(group) {
            key_shares.push(KeyShareEntry::new(group, already_offered_share.pubkey.as_ref()));
            hello.offered_key_shares.push(already_offered_share);
            continue;
        }

        if let Some(key_share) = suites::KeyExchange::start_kex(group) {
            key_shares.push(KeyShareEntry::new(group, key_share.pubkey.as_ref()));
            hello.offered_key_shares.push(key_share);
        }
    }
    handshake.print_runtime("CREATED KEYSHARES");

    exts.push(ClientExtension::KeyShare(key_shares));
}

/// This implements the horrifying TLS1.3 hack where PSK binders have a
/// data dependency on the message they are contained within.
pub fn fill_in_psk_binder(sess: &mut ClientSessionImpl,
                          handshake: &mut HandshakeDetails,
                          hmp: &mut HandshakeMessagePayload) -> KeyScheduleEarly {
    // We need to know the hash function of the suite we're trying to resume into.
    let resuming = handshake.resuming_session.as_ref().unwrap();
    let suite = sess.find_cipher_suite(resuming.cipher_suite).unwrap();
    let hkdf_alg = suite.hkdf_algorithm;
    let suite_hash = suite.get_hash();

    // The binder is calculated over the clienthello, but doesn't include itself or its
    // length, or the length of its container.
    let binder_plaintext = hmp.get_encoding_for_binder_signing();
    let handshake_hash =
        handshake.transcript.get_hash_given(suite_hash, &binder_plaintext);

    // Run a fake key_schedule to simulate what the server will do if it choses
    // to resume.
    let key_schedule = KeyScheduleEarly::new(hkdf_alg, &resuming.master_secret.0);
    let real_binder = key_schedule.resumption_psk_binder_key_and_sign_verify_data(&handshake_hash);

    if let HandshakePayload::ClientHello(ref mut ch) = hmp.payload {
        ch.set_psk_binder(real_binder);
    };

    key_schedule
}

pub fn start_handshake_traffic(sess: &mut ClientSessionImpl,
                               early_key_schedule: Option<KeyScheduleEarly>,
                               server_hello: &ServerHelloPayload,
                               handshake: &mut HandshakeDetails,
                               hello: &mut ClientHelloDetails,
                            )
                           -> Result<(KeyScheduleHandshake, KeyExchange), TLSError> {
    let suite = sess.common.get_suite_assert();

    let their_key_share = server_hello.get_key_share()
        .ok_or_else(|| {
            sess.common.send_fatal_alert(AlertDescription::MissingExtension);
            TLSError::PeerMisbehavedError("missing key share".to_string())
            })?;

    let mut our_key_share = hello.find_key_share_and_discard_others(their_key_share.group)
        .ok_or_else(|| hs::illegal_param(sess, "wrong group for key share"))?;
    handshake.print_runtime("DECAPSULATING EPHEMERAL");
    let shared = our_key_share.decapsulate(&their_key_share.payload.0)
        .ok_or_else(|| TLSError::PeerMisbehavedError("key exchange failed"
                                                     .to_string()))?;
    handshake.print_runtime("DECAPSULATED EPHEMERAL");

    let mut key_schedule = if let Some(selected_psk) = server_hello.get_psk_index() {
        if let Some(ref resuming) = handshake.resuming_session {
            let resume_from_suite = sess.find_cipher_suite(resuming.cipher_suite).unwrap();
            if !resume_from_suite.can_resume_to(suite) {
                return Err(hs::illegal_param(sess, "server resuming incompatible suite"));
            }

            // If the server varies the suite here, we will have encrypted early data with
            // the wrong suite.
            if sess.early_data.is_enabled() && resume_from_suite != suite {
                return Err(hs::illegal_param(sess, "server varied suite with early data"));
            }

            if selected_psk != 0 {
                return Err(hs::illegal_param(sess, "server selected invalid psk"));
            }

            debug!("Resuming using PSK");
            // The key schedule has been initialized and set in fill_in_psk_binder()
        } else {
            return Err(TLSError::PeerMisbehavedError("server selected unoffered psk".to_string()));
        }
        early_key_schedule.unwrap()
            .into_handshake(&shared)
    } else if let Some(_offer) = server_hello.find_extension(ExtensionType::ProactiveCiphertext) {
        debug!("Using PDK");
        // TODO check if offer is actually what's been offered.
        early_key_schedule.unwrap().into_handshake(&shared)
    } else {
        debug!("Not resuming");
        // Discard the early data key schedule.
        sess.early_data.rejected();
        sess.common.early_traffic = false;
        handshake.resuming_session.take();
        KeyScheduleNonSecret::new(suite.hkdf_algorithm)
            .into_handshake(&shared)
    };

    // Remember what KX group the server liked for next time.
    save_kx_hint(sess, handshake.dns_name.as_ref(), their_key_share.group);

    // If we change keying when a subsequent handshake message is being joined,
    // the two halves will have different record layer protections.  Disallow this.
    hs::check_aligned_handshake(sess)?;

    handshake.hash_at_client_recvd_server_hello =
        handshake.transcript.get_current_hash();

    let _maybe_write_key = if !sess.early_data.is_enabled() {
        // Set the client encryption key for handshakes if early data is not used
        let write_key = key_schedule
            .client_handshake_traffic_secret(&handshake.hash_at_client_recvd_server_hello,
                                             &*sess.config.key_log,
                                             &handshake.randoms.client);
        sess.common
            .record_layer
            .set_message_encrypter(cipher::new_tls13_write(suite, &write_key));
        Some(write_key)
    } else {
        None
    };

    let read_key = key_schedule
        .server_handshake_traffic_secret(&handshake.hash_at_client_recvd_server_hello,
                                         &*sess.config.key_log,
                                         &handshake.randoms.client);
    sess.common
        .record_layer
        .set_message_decrypter(cipher::new_tls13_read(suite, &read_key));

    handshake.print_runtime("DERIVED HS");

    #[cfg(feature = "quic")] {
        let write_key = if sess.early_data.is_enabled() {
            // Traffic secret wasn't computed and stored above, so do it here.
            key_schedule
                .client_handshake_traffic_secret(&handshake.hash_at_client_recvd_server_hello,
                                                 &*sess.config.key_log,
                                                 &handshake.randoms.client)
        } else {
            _maybe_write_key.unwrap()
        };
        sess.common.quic.hs_secrets = Some(quic::Secrets {
            client: write_key,
            server: read_key,
        });
    }

    Ok((key_schedule, our_key_share))
}

pub fn prepare_resumption(sess: &mut ClientSessionImpl,
                          ticket: Vec<u8>,
                          handshake: &HandshakeDetails,
                          exts: &mut Vec<ClientExtension>,
                          doing_retry: bool) -> bool {
    let resuming_suite = handshake.resuming_session
        .as_ref()
        .and_then(|resume| sess.find_cipher_suite(resume.cipher_suite));

    if hs::compatible_suite(sess, resuming_suite) {
        sess.resumption_ciphersuite = resuming_suite;
        // The EarlyData extension MUST be supplied together with the
        // PreSharedKey extension.
        let max_early_data_size = handshake
            .resuming_session
            .as_ref()
            .map_or(0, |resume| resume.max_early_data_size);
        if sess.config.enable_early_data && max_early_data_size > 0 && !doing_retry {
            sess.early_data.enable(max_early_data_size as usize);
            exts.push(ClientExtension::EarlyData);
        }

        // Finally, and only for TLS1.3 with a ticket resumption, include a binder
        // for our ticket.  This must go last.
        //
        // Include an empty binder. It gets filled in below because it depends on
        // the message it's contained in (!!!).
        let (obfuscated_ticket_age, suite) = {
            let resuming = handshake.resuming_session
                .as_ref()
                .unwrap();
            (resuming.get_obfuscated_ticket_age(ticketer::timebase()), resuming.cipher_suite)
        };

        let binder_len = sess.find_cipher_suite(suite).unwrap().get_hash().output_len;
        let binder = vec![0u8; binder_len];

        let psk_identity = PresharedKeyIdentity::new(ticket, obfuscated_ticket_age);
        let psk_ext = PresharedKeyOffer::new(psk_identity, binder);
        exts.push(ClientExtension::PresharedKey(psk_ext));
        true
    } else {
        false
    }
}

pub fn emit_fake_ccs(hs: &mut HandshakeDetails, sess: &mut ClientSessionImpl) {
    if sess.common.is_quic() { return; }

    if hs.sent_tls13_fake_ccs {
        return;
    }

    let m = Message {
        typ: ContentType::ChangeCipherSpec,
        version: ProtocolVersion::TLSv1_2,
        payload: MessagePayload::ChangeCipherSpec(ChangeCipherSpecPayload {})
    };
    sess.common.send_msg(m, false);
    hs.sent_tls13_fake_ccs = true;
}

fn validate_encrypted_extensions(sess: &mut ClientSessionImpl,
                                 hello: &ClientHelloDetails,
                                 exts: &EncryptedExtensions) -> Result<(), TLSError> {
    if exts.has_duplicate_extension() {
        sess.common.send_fatal_alert(AlertDescription::DecodeError);
        return Err(TLSError::PeerMisbehavedError("server sent duplicate encrypted extensions"
                                                 .to_string()));
    }

    if hello.server_sent_unsolicited_extensions(exts, &[]) {
        sess.common.send_fatal_alert(AlertDescription::UnsupportedExtension);
        let msg = "server sent unsolicited encrypted extension".to_string();
        return Err(TLSError::PeerMisbehavedError(msg));
    }

    for ext in exts {
        if ALLOWED_PLAINTEXT_EXTS.contains(&ext.get_type()) ||
           DISALLOWED_TLS13_EXTS.contains(&ext.get_type()) {
            sess.common.send_fatal_alert(AlertDescription::UnsupportedExtension);
            let msg = "server sent inappropriate encrypted extension".to_string();
            return Err(TLSError::PeerMisbehavedError(msg));
        }
    }

    Ok(())
}

pub struct ExpectEncryptedExtensions {
    pub handshake: HandshakeDetails,
    pub key_schedule: KeyScheduleHandshake,
    pub server_cert: ServerCertDetails,
    pub hello: ClientHelloDetails,
    pub is_pdk: bool,
    pub client_auth: Option<ClientAuthDetails>,
    pub chosen_keyshare: Option<KeyExchange>,
}

impl ExpectEncryptedExtensions {
    fn into_expect_finished_resume(self,
                                   certv: verify::ServerCertVerified,
                                   sigv: verify::HandshakeSignatureValid) -> hs::NextState {
        Box::new(ExpectFinished {
            handshake: self.handshake,
            key_schedule: self.key_schedule,
            client_auth: None,
            cert_verified: certv,
            sig_verified: sigv,
            is_pdk: self.is_pdk,
            client_auth_shared_secret: None,
        })
    }

    fn into_expect_certificate_or_certreq(self) -> hs::NextState {
        Box::new(ExpectCertificateOrCertReq {
            handshake: self.handshake,
            key_schedule: self.key_schedule,
            server_cert: self.server_cert,
            keyshare: self.chosen_keyshare,
        })
    }

    fn into_expect_ciphertext(self) -> hs::NextState {
        Box::new(ExpectCiphertext {
            handshake: self.handshake,
            client_auth: self.client_auth.unwrap(),
            key_schedule: self.key_schedule,
            is_pdk: true,
        })
    }
}

impl hs::State for ExpectEncryptedExtensions {
    fn handle(mut self: Box<Self>, sess: &mut ClientSessionImpl, m: Message) -> hs::NextStateOrError {
        let exts = require_handshake_msg!(m, HandshakeType::EncryptedExtensions, HandshakePayload::EncryptedExtensions)?;
        debug!("TLS1.3 encrypted extensions: {:?}", exts);
        self.handshake.transcript.add_message(&m);

        validate_encrypted_extensions(sess, &self.hello, &exts)?;
        hs::process_alpn_protocol(sess, exts.get_alpn_protocol())?;

        #[cfg(feature = "quic")] {
            // QUIC transport parameters
            if let Some(params) = exts.get_quic_params_extension() {
                sess.common.quic.params = Some(params);
            }
        }

        let certv = verify::ServerCertVerified::assertion();
        let sigv =  verify::HandshakeSignatureValid::assertion();

        if let Some(resuming_session) = &self.handshake.resuming_session {
            let was_early_traffic = sess.common.early_traffic;
            if was_early_traffic {
                if exts.early_data_extension_offered() {
                    sess.early_data.accepted();
                } else {
                    sess.early_data.rejected();
                    sess.common.early_traffic = false;
                }
            }

            if was_early_traffic && !sess.common.early_traffic {
                // If no early traffic, set the encryption key for handshakes
                let suite = sess.common.get_suite_assert();
                let write_key = self.key_schedule
                    .client_handshake_traffic_secret(
                        &self.handshake.hash_at_client_recvd_server_hello,
                        &*sess.config.key_log,
                        &self.handshake.randoms.client);
                sess.common
                    .record_layer
                    .set_message_encrypter(cipher::new_tls13_write(suite, &write_key));
            }

            sess.server_cert_chain = resuming_session.server_cert_chain.clone();

            // We *don't* reverify the certificate chain here: resumption is a
            // continuation of the previous session in terms of security policy.
            Ok(self.into_expect_finished_resume(certv, sigv))
        } else if self.is_pdk && self.client_auth.is_none() {
            Ok(self.into_expect_finished_resume(certv, sigv))
        } else if self.is_pdk && self.client_auth.is_some() {
            emit_fake_ccs(&mut self.handshake, sess);
            Ok(self.into_expect_ciphertext())
        } else {
            if exts.early_data_extension_offered() {
                let msg = "server sent early data extension without resumption".to_string();
                return Err(TLSError::PeerMisbehavedError(msg));
            }
            Ok(self.into_expect_certificate_or_certreq())
        }
    }
}

struct ExpectCertificate {
    handshake: HandshakeDetails,
    key_schedule: KeyScheduleHandshake,
    server_cert: ServerCertDetails,
    client_auth: Option<ClientAuthDetails>,
    keyshare: Option<KeyExchange>,
}

impl ExpectCertificate {
    fn into_expect_certificate_verify(self) -> hs::NextState {
        Box::new(ExpectCertificateVerify {
            handshake: self.handshake,
            key_schedule: self.key_schedule,
            server_cert: self.server_cert,
            client_auth: self.client_auth,
            keyshare: self.keyshare,
        })
    }

    fn emit_ciphertext(&mut self, sess: &mut ClientSessionImpl, certificate: webpki::EndEntityCert) -> Result<(), TLSError> {
        emit_fake_ccs(&mut self.handshake, sess);

        self.handshake.print_runtime("ENCAPSULATING TO CERT");
        let (ct, ss) = certificate.encapsulate().map_err(TLSError::WebPKIError)?;
        self.handshake.print_runtime("ENCAPSULATED TO CERT");
        let m = Message {
            typ: ContentType::Handshake,
            version: ProtocolVersion::TLSv1_3,
            payload: MessagePayload::Handshake(HandshakeMessagePayload {
                typ: HandshakeType::ServerKemCiphertext,
                payload: HandshakePayload::ServerKemCiphertext(Payload::new(ct.into_vec())),
            }),
        };
        self.handshake.transcript.add_message(&m);
        sess.common.send_msg(m, true);
        self.handshake.print_runtime("SUBMITTED CKEX TO SERVER");

        // update keys
        hs::check_aligned_handshake(sess)?;
        let suite = sess.common.get_suite_assert();
        self.key_schedule.authenticate_handshake(ss.as_ref());
        let hs_hash = self.handshake.transcript.get_current_hash();

        let write_key = self.key_schedule
            .client_authenticated_handshake_traffic_secret(&hs_hash, &*sess.config.key_log, &self.handshake.randoms.client);
        let read_key = self.key_schedule
            .server_authenticated_handshake_traffic_secret(&hs_hash, &*sess.config.key_log, &self.handshake.randoms.client);

        sess.common.record_layer.set_message_encrypter(cipher::new_tls13_write(suite, &write_key));
        sess.common.record_layer.set_message_decrypter(cipher::new_tls13_read(suite, &read_key));

        self.handshake.print_runtime("DERIVED AHS");

        // done
        Ok(())
    }

    fn into_expect_ciphertext(self) -> hs::NextState {
        Box::new(ExpectCiphertext {
            handshake: self.handshake,
            key_schedule: self.key_schedule,
            client_auth: self.client_auth.unwrap(),
            is_pdk: false,
        })
    }

    fn emit_finished_and_into_expect_server_finished(mut self, sess: &mut ClientSessionImpl) -> hs::NextState {
        let mut ks = self.key_schedule.into_traffic_with_server_finished_pending(None);
        {
            let handshake_hash = &self.handshake.transcript.get_current_hash();
            emit_finished_tls13(&mut self.handshake, &ks, sess, handshake_hash, false);
        }
        let write_key = ks
            .client_application_traffic_secret(&self.handshake.transcript.get_current_hash(),
                                               &*sess.config.key_log,
                                               &self.handshake.randoms.client);
        let suite = sess.common.get_suite_assert();
        self.handshake.print_runtime("DERIVED MS");
        sess.common
            .record_layer
            .set_message_encrypter(cipher::new_tls13_write(suite, &write_key));

        self.handshake.print_runtime("WRITING TO SERVER");
        sess.common.start_traffic();

        Box::new(ExpectKEMTLSFinished {
            handshake: self.handshake,
            key_schedule: ks,
            client_auth: false,
        })
    }
}

impl hs::State for ExpectCertificate {
    fn handle(mut self: Box<Self>, sess: &mut ClientSessionImpl, m: Message) -> hs::NextStateOrError {
        trace!("trying to parse certificate");
        let cert_chain = require_handshake_msg!(m, HandshakeType::Certificate, HandshakePayload::CertificateTLS13)?;
        self.handshake.transcript.add_message(&m);

        self.handshake.print_runtime("RECEIVED CERT");

        let mut cert_chain = cert_chain.clone();
        cert_chain.replace_cached_entries(&sess.config.known_certificates);

        // This is only non-empty for client auth.
        if !cert_chain.context.0.is_empty() {
            warn!("certificate with non-empty context during handshake");
            sess.common.send_fatal_alert(AlertDescription::DecodeError);
            return Err(TLSError::CorruptMessagePayload(ContentType::Handshake));
        }

        if cert_chain.any_entry_has_duplicate_extension() ||
            cert_chain.any_entry_has_unknown_extension() {
            warn!("certificate chain contains unsolicited/unknown extension");
            sess.common.send_fatal_alert(AlertDescription::UnsupportedExtension);
            return Err(TLSError::PeerMisbehavedError("bad cert chain extensions".to_string()));
        }

        let eecert = webpki::EndEntityCert::from(&cert_chain.entries[0].cert.0[..])
                .map_err(|_| TLSError::CorruptMessagePayload(ContentType::Handshake))?;

        self.server_cert.ocsp_response = cert_chain.get_end_entity_ocsp();
        self.server_cert.scts = cert_chain.get_end_entity_scts();
        self.server_cert.cert_chain = cert_chain.convert();

        if let Some(sct_list) = self.server_cert.scts.as_ref() {
            if hs::sct_list_is_invalid(sct_list) {
                let error_msg = "server sent invalid SCT list".to_string();
                return Err(TLSError::PeerMisbehavedError(error_msg));
            }

            if sess.config.ct_logs.is_none() {
                let error_msg = "server sent unsolicited SCT list".to_string();
                return Err(TLSError::PeerMisbehavedError(error_msg));
            }
        }

        let _certv = sess.config
            .get_verifier()
            .verify_server_cert(&sess.config.root_store,
                                &self.server_cert.cert_chain,
                                self.handshake.dns_name.as_ref(),
                                &self.server_cert.ocsp_response)
            .map_err(|err| send_cert_error_alert(sess, err))?;

        // branch KEMTLS
        if eecert.is_kem_cert() {
            self.emit_ciphertext(sess, eecert)?;
            if let Some(client_auth) = self.client_auth.as_mut() {
                self.key_schedule.assert_authenticated();
                emit_certificate_tls13(&mut self.handshake, client_auth, sess);
                Ok(self.into_expect_ciphertext())
            } else {
                Ok(self.emit_finished_and_into_expect_server_finished(sess))
            }
        } else {
            Ok(self.into_expect_certificate_verify())

        }
    }
}

struct ExpectCertificateOrCertReq {
    handshake: HandshakeDetails,
    key_schedule: KeyScheduleHandshake,
    server_cert: ServerCertDetails,
    keyshare: Option<KeyExchange>,
}

impl ExpectCertificateOrCertReq {
    fn into_expect_certificate(self) -> hs::NextState {
        Box::new(ExpectCertificate {
            handshake: self.handshake,
            key_schedule: self.key_schedule,
            server_cert: self.server_cert,
            client_auth: None,
            keyshare: self.keyshare,
        })
    }

    fn into_expect_certificate_req(self) -> hs::NextState {
        Box::new(ExpectCertificateRequest {
            handshake: self.handshake,
            key_schedule: self.key_schedule,
            server_cert: self.server_cert,
            keyshare: self.keyshare,
        })
    }
}

impl hs::State for ExpectCertificateOrCertReq {
    fn handle(self: Box<Self>, sess: &mut ClientSessionImpl, m: Message) -> hs::NextStateOrError {
        check_message(&m,
                      &[ContentType::Handshake],
                      &[HandshakeType::Certificate, HandshakeType::CertificateRequest])?;
        if m.is_handshake_type(HandshakeType::Certificate) {
            self.into_expect_certificate().handle(sess, m)
        } else {
            self.into_expect_certificate_req().handle(sess, m)
        }
    }
}

/// KEMTLS Expect Ciphertext
struct ExpectCiphertext {
    handshake: HandshakeDetails,
    key_schedule: KeyScheduleHandshake,
    client_auth: ClientAuthDetails,
    is_pdk: bool,
}

impl ExpectCiphertext {
    fn into_expect_finished(mut self, sess: &mut ClientSessionImpl, shared_secret: &[u8]) -> hs::NextState {
        if self.is_pdk {
            Box::new(ExpectFinished {
                handshake: self.handshake,
                key_schedule: self.key_schedule,
                cert_verified: verify::ServerCertVerified::assertion(),
                sig_verified: verify::HandshakeSignatureValid::assertion(),
                is_pdk: true,
                client_auth: Some(self.client_auth),
                client_auth_shared_secret: Some(shared_secret.to_vec()),
            })
        } else {
            let mut ks = self.key_schedule.into_traffic_with_server_finished_pending(Some(shared_secret));
            {
                let handshake_hash = &self.handshake.transcript.get_current_hash();
                emit_finished_tls13(&mut self.handshake, &ks, sess, handshake_hash, false);
            }
            let write_key = ks
                .client_application_traffic_secret(&self.handshake.transcript.get_current_hash(),
                                                &*sess.config.key_log,
                                                &self.handshake.randoms.client);
            let suite = sess.common.get_suite_assert();
            sess.common
                .record_layer
                .set_message_encrypter(cipher::new_tls13_write(suite, &write_key));

            self.handshake.print_runtime("WRITING TO SERVER");
            sess.common.start_traffic();

            Box::new(ExpectKEMTLSFinished {
                handshake: self.handshake,
                key_schedule: ks,
                client_auth: true,
            })
        }
    }
}

impl hs::State for ExpectCiphertext {
    fn handle(mut self: Box<Self>, sess: &mut ClientSessionImpl, m: Message) -> hs::NextStateOrError {
        let msg = require_handshake_msg!(m, HandshakeType::ClientKemCiphertext, HandshakePayload::ClientKemCiphertext)?;

        // server has now proven they've derived AHS
        self.handshake.print_runtime("AUTHENTICATED SERVER");

        let ciphertext = &msg.0;
        let cert = self.client_auth.cert.take().unwrap();
        let eecert = webpki::EndEntityCert::from(&cert[0].0).map_err(TLSError::WebPKIError)?;
        self.handshake.print_runtime("DECAPSULATING FROM CCERT");
        let ss= eecert.decapsulate(&self.client_auth.private_key.take().unwrap(), ciphertext).map_err(TLSError::WebPKIError)?;
        self.handshake.print_runtime("DECAPSULATED FROM CCERT");

        self.handshake.transcript.add_message(&m);
        Ok(self.into_expect_finished(sess, &ss))
    }
}

// --- TLS1.3 CertificateVerify ---
struct ExpectCertificateVerify {
    handshake: HandshakeDetails,
    key_schedule: KeyScheduleHandshake,
    server_cert: ServerCertDetails,
    client_auth: Option<ClientAuthDetails>,
    keyshare: Option<KeyExchange>,
}

impl ExpectCertificateVerify {
    fn into_expect_finished(self,
                            certv: verify::ServerCertVerified,
                            sigv: verify::HandshakeSignatureValid) -> hs::NextState {
        Box::new(ExpectFinished {
            handshake: self.handshake,
            key_schedule: self.key_schedule,
            client_auth: self.client_auth,
            cert_verified: certv,
            sig_verified: sigv,
            is_pdk: false,
            client_auth_shared_secret: None,
        })
    }
}

fn send_cert_error_alert(sess: &mut ClientSessionImpl, err: TLSError) -> TLSError {
    match err {
        TLSError::WebPKIError(webpki::Error::BadDER) => {
            sess.common.send_fatal_alert(AlertDescription::DecodeError);
        }
        TLSError::PeerMisbehavedError(_) => {
            sess.common.send_fatal_alert(AlertDescription::IllegalParameter);
        }
        _ => {
            sess.common.send_fatal_alert(AlertDescription::BadCertificate);
        }
    };

    err
}

impl hs::State for ExpectCertificateVerify {
    fn handle(mut self: Box<Self>, sess: &mut ClientSessionImpl, m: Message) -> hs::NextStateOrError {
        let cert_verify = require_handshake_msg!(m, HandshakeType::CertificateVerify, HandshakePayload::CertificateVerify)?;

        trace!("Server cert is {:?}", self.server_cert.cert_chain);

        // 1. Verify the certificate chain.
        if self.server_cert.cert_chain.is_empty() {
            return Err(TLSError::NoCertificatesPresented);
        }

        // verifying cert is done on receive

        // 2. Verify their signature on the handshake.
        let handshake_hash = self.handshake.transcript.get_current_hash();

        let eecert = webpki::EndEntityCert::from(&self.server_cert.cert_chain[0].0)
                .map_err(TLSError::WebPKIError)?;
        let sigv = if eecert.is_nike_cert() {
            use ring::{hkdf, hmac};
            let (_alg, pk) = eecert.nike_public_key().unwrap();
            let ss =  self.keyshare.as_mut().unwrap().decapsulate(pk.as_slice_less_safe()).expect("this should work");

            // derive xSS and compute as finished as per https://datatracker.ietf.org/doc/html/draft-ietf-tls-semistatic-dh-01#section-5
            let key = hkdf::Salt::new(hkdf::HKDF_SHA384, &[]).extract(ss.as_ref());

            let hmacalg = self.key_schedule.hmac_algorithm();
            let hmackey = hkdf_expand(&key, hmacalg, "tls13 finished".as_bytes(), &[]);
            hmac::verify(&hmackey, &handshake_hash, &cert_verify.sig.0)
                .map(|_| verify::HandshakeSignatureValid::assertion())
                .map_err(|_| send_cert_error_alert(sess, TLSError::WebPKIError(webpki::Error::InvalidSignatureForPublicKey)))?
        } else {
            sess.config
                .get_verifier()
                .verify_tls13_signature(&verify::construct_tls13_server_verify_message(&handshake_hash),
                                        &self.server_cert.cert_chain[0],
                                        &cert_verify)
                .map_err(|err| send_cert_error_alert(sess, err))?
        };

        // 3. Verify any included SCTs.
        match (self.server_cert.scts.as_ref(), sess.config.ct_logs) {
            (Some(scts), Some(logs)) => {
                verify::verify_scts(&self.server_cert.cert_chain[0],
                                    scts,
                                    logs)?;
            }
            (_, _) => {}
        }

        sess.server_cert_chain = self.server_cert.take_chain();
        self.handshake.transcript.add_message(&m);

        self.handshake.print_runtime("AUTHENTICATED SERVER");

        Ok(self.into_expect_finished(verify::ServerCertVerified::assertion(), sigv))
    }
}

// TLS1.3 version of CertificateRequest handling.  We then move to expecting the server
// Certificate. Unfortunately the CertificateRequest type changed in an annoying way
// in TLS1.3.
struct ExpectCertificateRequest {
    handshake: HandshakeDetails,
    key_schedule: KeyScheduleHandshake,
    server_cert: ServerCertDetails,
    keyshare: Option<KeyExchange>,
}

impl ExpectCertificateRequest {
    fn into_expect_certificate(self, client_auth: ClientAuthDetails) -> hs::NextState {
        Box::new(ExpectCertificate {
            handshake: self.handshake,
            key_schedule: self.key_schedule,
            server_cert: self.server_cert,
            client_auth: Some(client_auth),
            keyshare: self.keyshare,
        })
    }
}

impl hs::State for ExpectCertificateRequest {
    fn handle(mut self: Box<Self>, sess: &mut ClientSessionImpl, m: Message) -> hs::NextStateOrError {
        let certreq = &require_handshake_msg!(m, HandshakeType::CertificateRequest, HandshakePayload::CertificateRequestTLS13)?;
        self.handshake.transcript.add_message(&m);
        debug!("Got CertificateRequest {:?}", certreq);

        // Fortunately the problems here in TLS1.2 and prior are corrected in
        // TLS1.3.

        // Must be empty during handshake.
        if !certreq.context.0.is_empty() {
            warn!("Server sent non-empty certreq context");
            sess.common.send_fatal_alert(AlertDescription::DecodeError);
            return Err(TLSError::CorruptMessagePayload(ContentType::Handshake));
        }

        let tls13_sign_schemes = sign::supported_sign_tls13();
        let no_sigschemes = Vec::new();
        let compat_sigschemes = certreq.get_sigalgs_extension()
            .unwrap_or(&no_sigschemes)
            .iter()
            .cloned()
            .filter(|scheme| tls13_sign_schemes.contains(scheme))
            .collect::<Vec<SignatureScheme>>();

        if compat_sigschemes.is_empty() {
            sess.common.send_fatal_alert(AlertDescription::HandshakeFailure);
            return Err(TLSError::PeerIncompatibleError("server sent bad certreq schemes".to_string()));
        }

        let no_canames = Vec::new();
        let canames = certreq.get_authorities_extension()
            .unwrap_or(&no_canames)
            .iter()
            .map(|p| p.0.as_slice())
            .collect::<Vec<&[u8]>>();
        let maybe_certkey =
            sess.config.client_auth_cert_resolver.resolve(&canames, &compat_sigschemes);

        let mut client_auth = ClientAuthDetails::new();
        if let Some(mut certkey) = maybe_certkey {
            debug!("Attempting client auth");
            if certkey.key.algorithm() == SignatureAlgorithm::KEMTLS {
                client_auth.private_key = Some(certkey.key.get_bytes().to_vec());
            } else {
                let maybe_signer = certkey.key.choose_scheme(&compat_sigschemes);
                client_auth.signer = maybe_signer;
            }
            client_auth.cert = Some(certkey.take_cert());
            client_auth.auth_context = Some(certreq.context.0.clone());

        } else {
            debug!("Client auth requested but no cert selected");
        }

        Ok(self.into_expect_certificate(client_auth))
    }
}

pub fn emit_certificate_tls13(handshake: &mut HandshakeDetails,
                          client_auth: &mut ClientAuthDetails,
                          sess: &mut ClientSessionImpl) {
    let context = client_auth.auth_context
        .take()
        .unwrap_or_else(Vec::new);

    let mut cert_payload = CertificatePayloadTLS13 {
        context: PayloadU8::new(context),
        entries: Vec::new(),
    };

    if let Some(cert_chain) = client_auth.cert.as_ref() {
        for cert in cert_chain {
            cert_payload.entries.push(CertificateEntry::new(cert.clone()));
        }
    }

    let m = Message {
        typ: ContentType::Handshake,
        version: ProtocolVersion::TLSv1_3,
        payload: MessagePayload::Handshake(HandshakeMessagePayload {
            typ: HandshakeType::Certificate,
            payload: HandshakePayload::CertificateTLS13(cert_payload),
        }),
    };
    trace!("Sending certificate message {:?}", &m);
    handshake.transcript.add_message(&m);
    handshake.print_runtime("EMIT CERT");
    sess.common.send_msg(m, true);

}

fn emit_certverify_tls13(handshake: &mut HandshakeDetails,
                         client_auth: &mut ClientAuthDetails,
                         sess: &mut ClientSessionImpl) -> Result<(), TLSError> {
    if client_auth.signer.is_none() {
        debug!("Skipping certverify message (no client scheme/key)");
        return Ok(());
    }

    let message = verify::construct_tls13_client_verify_message(
        &handshake.transcript.get_current_hash()
    );

    let signer = client_auth.signer.take().unwrap();
    let scheme = signer.get_scheme();
    let sig = signer.sign(&message)?;
    let dss = DigitallySignedStruct::new(scheme, sig);

    let m = Message {
        typ: ContentType::Handshake,
        version: ProtocolVersion::TLSv1_3,
        payload: MessagePayload::Handshake(HandshakeMessagePayload {
            typ: HandshakeType::CertificateVerify,
            payload: HandshakePayload::CertificateVerify(dss),
        }),
    };

    handshake.transcript.add_message(&m);
    sess.common.send_msg(m, true);
    Ok(())
}

fn emit_finished_tls13(handshake: &mut HandshakeDetails,
                       key_schedule: &dyn KeyScheduleComputesClientFinish,
                       sess: &mut ClientSessionImpl,
                       handshake_hash: &[u8],
                       is_pdk: bool) {
    let verify_data = if is_pdk {
        key_schedule.sign_client_finished_kemtlspdk(handshake_hash)
    } else {
        key_schedule.sign_client_finish(handshake_hash)
    };
    let verify_data_payload = Payload::new(verify_data);

    trace!("Sending finished for hash: {:x?}", handshake_hash);
    let m = Message {
        typ: ContentType::Handshake,
        version: ProtocolVersion::TLSv1_3,
        payload: MessagePayload::Handshake(HandshakeMessagePayload {
            typ: HandshakeType::Finished,
            payload: HandshakePayload::Finished(verify_data_payload),
        }),
    };

    handshake.transcript.add_message(&m);
    handshake.print_runtime("EMITTED FINISHED");
    sess.common.send_msg(m, true);
}

fn emit_end_of_early_data_tls13(handshake: &mut HandshakeDetails,
                                sess: &mut ClientSessionImpl) {
    if sess.common.is_quic() { return; }

    trace!("Sending EOED");

    let m = Message {
        typ: ContentType::Handshake,
        version: ProtocolVersion::TLSv1_3,
        payload: MessagePayload::Handshake(HandshakeMessagePayload {
            typ: HandshakeType::EndOfEarlyData,
            payload: HandshakePayload::EndOfEarlyData,
        }),
    };

    handshake.transcript.add_message(&m);
    sess.common.send_msg(m, true);
}

struct ExpectFinished {
    handshake: HandshakeDetails,
    key_schedule: KeyScheduleHandshake,
    client_auth: Option<ClientAuthDetails>,
    cert_verified: verify::ServerCertVerified,
    sig_verified: verify::HandshakeSignatureValid,
    is_pdk: bool,
    client_auth_shared_secret: Option<Vec<u8>>
}

impl ExpectFinished {
    fn into_expect_traffic(handshake: HandshakeDetails,
                           key_schedule: KeyScheduleTraffic,
                           cert_verified: verify::ServerCertVerified,
                           sig_verified: verify::HandshakeSignatureValid,
                           fin_verified: verify::FinishedMessageVerified) -> ExpectTraffic {
        ExpectTraffic {
            handshake,
            key_schedule,
            want_write_key_update: false,
            _cert_verified: cert_verified,
            _sig_verified: sig_verified,
            _fin_verified: fin_verified,
        }
    }
}

impl hs::State for ExpectFinished {
    fn handle(self: Box<Self>, sess: &mut ClientSessionImpl, m: Message) -> hs::NextStateOrError {
        let mut st = *self;
        let finished = require_handshake_msg!(m, HandshakeType::Finished, HandshakePayload::Finished)?;
        st.handshake.print_runtime("RECEIVED FINISHED");

        let suite = sess.common.get_suite_assert();
        let maybe_write_key = if sess.common.early_traffic {
            /* Derive the client-to-server encryption key before key schedule update */
            let key = st.key_schedule
                .client_handshake_traffic_secret(&st.handshake.hash_at_client_recvd_server_hello,
                                                 &*sess.config.key_log,
                                                 &st.handshake.randoms.client);
            Some(key)
        } else {
            None
        };

        // Hash after SFIN
        let handshake_hash = st.handshake.transcript.get_current_hash();
        let (expect_verify_data, key_schedule) = if !st.is_pdk {
            let hash = st.key_schedule.sign_server_finish(&handshake_hash);
            let ks = st.key_schedule.into_traffic_with_client_finished_pending();
            (hash, ks)
        } else {
            let ks = st.key_schedule.into_kemtlspdk_traffic_with_client_finished_pending(st.client_auth_shared_secret.as_deref());
            (ks.sign_server_finished_kemtlspdk(&handshake_hash), ks)
        };

        let fin = constant_time::verify_slices_are_equal(&expect_verify_data, &finished.0)
            .map_err(|_| {
                         sess.common.send_fatal_alert(AlertDescription::DecryptError);
                         TLSError::DecryptError
                    })
            .map(|_| verify::FinishedMessageVerified::assertion())?;

        st.handshake.transcript.add_message(&m);
        trace!("AUTHENTICATED SERVER");
        if st.is_pdk {
            // non-pdk already printed this for CERTV
            st.handshake.print_runtime("AUTHENTICATED SERVER");
        }

        let hash_after_handshake = st.handshake.transcript.get_current_hash();

        /* The EndOfEarlyData message to server is still encrypted with early data keys,
         * but appears in the transcript after the server Finished. */
        if let Some(write_key) = maybe_write_key {
            emit_end_of_early_data_tls13(&mut st.handshake, sess);
            sess.common.early_traffic = false;
            sess.early_data.finished();
            sess.common
                .record_layer
                .set_message_encrypter(cipher::new_tls13_write(suite, &write_key));
        }

        // we will now start sending data
        emit_fake_ccs(&mut st.handshake, sess);

        /* Send our authentication/finished messages.  These are still encrypted
         * with our handshake keys. */
        if st.client_auth.is_some() && !st.is_pdk {
            emit_certificate_tls13(&mut st.handshake,
                                   st.client_auth.as_mut().unwrap(),
                                   sess);
            emit_certverify_tls13(&mut st.handshake,
                                  st.client_auth.as_mut().unwrap(),
                                  sess)?;
        }

        let mut key_schedule_finished = key_schedule;
        // use hash_after_handshake, which is equal to the current hash in KEMTLS(PDK)
        // and equal to the SFIN hash in TLS 1.3
        emit_finished_tls13(&mut st.handshake, &key_schedule_finished, sess, &hash_after_handshake, st.is_pdk);

        /* Now move to our application traffic keys. */
        hs::check_aligned_handshake(sess)?;

        /* Traffic from server is now decrypted with application data keys. */
        let read_key = key_schedule_finished
            .server_application_traffic_secret(
                &hash_after_handshake,
                &*sess.config.key_log,
                &st.handshake.randoms.client);
        sess.common
            .record_layer
            .set_message_decrypter(cipher::new_tls13_read(suite, &read_key));

        key_schedule_finished.exporter_master_secret(&hash_after_handshake,
                                                     &*sess.config.key_log,
                                                     &st.handshake.randoms.client);

        let derivation_hash = if st.is_pdk {
            st.handshake.transcript.get_current_hash().clone()
        } else {
            hash_after_handshake.clone()
        };
        let write_key = key_schedule_finished
            .client_application_traffic_secret(&derivation_hash,
                                               &*sess.config.key_log,
                                               &st.handshake.randoms.client);
        trace!("derived write key from hash {:x?}", &derivation_hash);
        sess.common
            .record_layer
            .set_message_encrypter(cipher::new_tls13_write(suite, &write_key));

        let key_schedule_traffic = key_schedule_finished.into_traffic();
        st.handshake.print_runtime("WRITING TO SERVER");
        st.handshake.print_runtime("HANDSHAKE COMPLETED");
        sess.common.start_traffic();

        let st = Self::into_expect_traffic(st.handshake,
                                           key_schedule_traffic,
                                           st.cert_verified,
                                           st.sig_verified,
                                           fin);
        #[cfg(feature = "quic")] {
            if sess.common.protocol == Protocol::Quic {
                sess.common.quic.traffic_secrets = Some(quic::Secrets {
                    client: write_key,
                    server: read_key,
                });
                return Ok(Box::new(ExpectQUICTraffic(st)));
            }
        }

        Ok(Box::new(st))
    }
}


/// KEMTLS finished
struct ExpectKEMTLSFinished {
    handshake: HandshakeDetails,
    key_schedule: KeyScheduleTrafficWithServerFinishedPending,
    client_auth: bool,
}

impl ExpectKEMTLSFinished {
    fn into_expect_traffic(self, fin: verify::FinishedMessageVerified) -> hs::NextState {
        Box::new(ExpectTraffic {
            handshake: self.handshake,
            key_schedule: self.key_schedule.into_traffic(),
            want_write_key_update: false,
            _cert_verified: verify::ServerCertVerified::assertion(),
            _sig_verified: verify::HandshakeSignatureValid::assertion(),
            _fin_verified: fin,
        })
    }
}

impl hs::State for ExpectKEMTLSFinished {
    fn handle(mut self: Box<Self>, sess: &mut ClientSessionImpl, m: Message) -> hs::NextStateOrError {
        let finished = require_handshake_msg!(m, HandshakeType::Finished, HandshakePayload::Finished)?;
        self.handshake.print_runtime("RECEIVED FINISHED");

        let handshake_hash = self.handshake.transcript.get_current_hash();
        let expect_verify_data = self.key_schedule.sign_server_finish(&handshake_hash);

        let fin = constant_time::verify_slices_are_equal(&expect_verify_data, &finished.0)
            .map_err(|_| {
                         sess.common.send_fatal_alert(AlertDescription::DecryptError);
                         TLSError::DecryptError
                    })
            .map(|_| verify::FinishedMessageVerified::assertion())?;
        self.handshake.transcript.add_message(&m);

        if !self.client_auth {
            // if we had client auth, we'd already have printed this when we received ct.
            self.handshake.print_runtime("AUTHENTICATED SERVER");
        }

        // derive Server's traffic key
        hs::check_aligned_handshake(sess)?;
        let hash = &self.handshake.transcript.get_current_hash();

        self.key_schedule.exporter_master_secret(
            hash, &*sess.config.key_log, &self.handshake.randoms.client);

        let read_key = self.key_schedule.server_application_traffic_secret(
            hash,
            &*sess.config.key_log,
            &self.handshake.randoms.client);

        let suite = sess.common.get_suite_assert();
        sess.common.record_layer.set_message_decrypter(cipher::new_tls13_read(suite, &read_key));

        self.handshake.print_runtime("HANDSHAKE COMPLETED");

        Ok(self.into_expect_traffic(fin))
    }
}

// -- Traffic transit state (TLS1.3) --
// In this state we can be sent tickets, keyupdates,
// and application data.
struct ExpectTraffic {
    handshake: HandshakeDetails,
    key_schedule: KeyScheduleTraffic,
    want_write_key_update: bool,
    _cert_verified: verify::ServerCertVerified,
    _sig_verified: verify::HandshakeSignatureValid,
    _fin_verified: verify::FinishedMessageVerified,
}

impl ExpectTraffic {
    fn handle_new_ticket_tls13(&mut self, sess: &mut ClientSessionImpl, nst: &NewSessionTicketPayloadTLS13) -> Result<(), TLSError> {
        let handshake_hash = self.handshake.transcript.get_current_hash();
        let secret = self.key_schedule
            .resumption_master_secret_and_derive_ticket_psk(&handshake_hash, &nst.nonce.0);

        let mut value = persist::ClientSessionValue::new(ProtocolVersion::TLSv1_3,
                                                         sess.common.get_suite_assert().suite,
                                                         &SessionID::empty(),
                                                         nst.ticket.0.clone(),
                                                         secret,
                                                         &sess.server_cert_chain);
        value.set_times(ticketer::timebase(),
                        nst.lifetime,
                        nst.age_add);

        if let Some(sz) = nst.get_max_early_data_size() {
            value.set_max_early_data_size(sz);
            #[cfg(feature = "quic")] {
                if sess.common.protocol == Protocol::Quic {
                    if sz != 0 && sz != 0xffff_ffff {
                        return Err(TLSError::PeerMisbehavedError("invalid max_early_data_size".into()));
                    }
                }
            }
        }

        let key = persist::ClientSessionKey::session_for_dns_name(self.handshake.dns_name.as_ref());
        #[allow(unused_mut)]
        let mut ticket = value.get_encoding();

        #[cfg(feature = "quic")] {
            if sess.common.protocol == Protocol::Quic {
                PayloadU16::encode_slice(sess.common.quic.params.as_ref().unwrap(), &mut ticket);
            }
        }

        let worked = sess.config.session_persistence.put(key.get_encoding(),
                                                         ticket);

        if worked {
            debug!("Ticket saved");
        } else {
            debug!("Ticket not saved");
        }
        Ok(())
    }

    fn handle_key_update(&mut self, sess: &mut ClientSessionImpl, kur: &KeyUpdateRequest) -> Result<(), TLSError> {
        #[cfg(feature = "quic")]
        {
            if let Protocol::Quic = sess.common.protocol {
                sess.common.send_fatal_alert(AlertDescription::UnexpectedMessage);
                let msg = "KeyUpdate received in QUIC connection".to_string();
                warn!("{}", msg);
                return Err(TLSError::PeerMisbehavedError(msg));
            }
        }

        // Mustn't be interleaved with other handshake messages.
        hs::check_aligned_handshake(sess)?;

        match kur {
            KeyUpdateRequest::UpdateNotRequested => {}
            KeyUpdateRequest::UpdateRequested => {
                self.want_write_key_update = true;
            }
            _ => {
                sess.common.send_fatal_alert(AlertDescription::IllegalParameter);
                return Err(TLSError::CorruptMessagePayload(ContentType::Handshake));
            }
        }

        // Update our read-side keys.
        let new_read_key = self.key_schedule.next_server_application_traffic_secret();
        let suite = sess.common.get_suite_assert();
        sess.common.record_layer.set_message_decrypter(cipher::new_tls13_read(suite, &new_read_key));

        Ok(())
    }
}

impl hs::State for ExpectTraffic {
    fn handle(mut self: Box<Self>, sess: &mut ClientSessionImpl, mut m: Message) -> hs::NextStateOrError {
        if m.is_content_type(ContentType::ApplicationData) {
            self.handshake.print_runtime("RECEIVED SERVER REPLY");
            sess.common.take_received_plaintext(m.take_opaque_payload().unwrap());
        } else if let Ok(ref new_ticket) = require_handshake_msg!(m, HandshakeType::NewSessionTicket, HandshakePayload::NewSessionTicketTLS13) {
            self.handle_new_ticket_tls13(sess, new_ticket)?;
        } else if let Ok(ref key_update) = require_handshake_msg!(m, HandshakeType::KeyUpdate, HandshakePayload::KeyUpdate) {
            self.handle_key_update(sess, key_update)?;
        } else {
            check_message(&m,
                          &[ContentType::ApplicationData, ContentType::Handshake],
                          &[HandshakeType::NewSessionTicket, HandshakeType::KeyUpdate])?;
        }

        Ok(self)
    }

    fn export_keying_material(&self,
                              output: &mut [u8],
                              label: &[u8],
                              context: Option<&[u8]>) -> Result<(), TLSError> {
        self.key_schedule.export_keying_material(output, label, context)
    }

    fn perhaps_write_key_update(&mut self, sess: &mut ClientSessionImpl) {
        if self.want_write_key_update {
            self.want_write_key_update = false;
            sess.common.send_msg_encrypt(Message::build_key_update_notify());

            let write_key = self.key_schedule.next_client_application_traffic_secret();
            let scs = sess.common.get_suite_assert();
            sess.common.record_layer.set_message_encrypter(cipher::new_tls13_write(scs, &write_key));
        }
    }
}

#[cfg(feature = "quic")]
pub struct ExpectQUICTraffic(ExpectTraffic);

#[cfg(feature = "quic")]
impl hs::State for ExpectQUICTraffic {
    fn handle(mut self: Box<Self>, sess: &mut ClientSessionImpl, m: Message) -> hs::NextStateOrError {
        let nst = require_handshake_msg!(m, HandshakeType::NewSessionTicket, HandshakePayload::NewSessionTicketTLS13)?;
        self.0.handle_new_ticket_tls13(sess, nst)?;
        Ok(self)
    }

    fn export_keying_material(&self,
                              output: &mut [u8],
                              label: &[u8],
                              context: Option<&[u8]>) -> Result<(), TLSError> {
        self.0.export_keying_material(output, label, context)
    }
}

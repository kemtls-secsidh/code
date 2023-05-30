# OPTLS for OpenSSL 3.0.0

This folder provides patches for OpenSSL 3.0.0 to support Semi-static
Diffie-Hellman Key Establishment for TLS 1.3, similarly to the
[tls-semistatic-dh ID][tls-semistatic-dh] and, in a way, to the
[original-OPTLS design][original-OPTLS].

This work is inspired to a patchset by W. Kuhnen (supervised by
P. Schwabe) and described in his [thesis][]:
<https://github.com/dqi/openssl/tree/OPTLS-InternetDraft>.

## Caveats

At the moment, this work

- targets `openssl-3.0.0-beta1`
- works only with static certificates embedding a NIKE public key for
  the Subject (an example of such certificates is included in
  `demo_certs/`). These certificates are not common in the web, and it
  looks like [Delegated Credentials for TLS][DC] will be the preferred
  way to support this kind of handshakes
- does not aim to provide support for [DC][] in OpenSSL
- OpenSSL's `make test` still shows some failures that needs to be
  further investigated and smoothed out (it should be just corner cases
  in which the OPTLS changes gets triggered outside the expected
  parameters)

## Installation

~~~sh
export WORKDIR=~/openoptls
export SRC=$WORKDIR/src/openssl
export PFX=$WORKDIR

mkdir -p $WORKDIR $SRC $PFX
cp -a demo_certs $WORKDIR/
git clone --depth 1 --branch openssl-3.0.0-beta1 https://github.com/openssl/openssl.git $SRC
cp -a patches $SRC/
cd $SRC
cat patches/* | patch -p1
./config --prefix=$PFX '-Wl,-rpath,$(LIBRPATH)' \
    enable-ec_nistp_64_gcc_128 \
    --debug -g -ggdb3 --strict-warnings -DPEDANTIC
make -s update # this will take some time
make -s -j # this will take even more time
make -s -j build_tests # this will take some time
# We skip tests for now: there are some corner cases failures
# make VF=1 HARNESS_JOBS=4 test # This will take a long time
make install_sw install_ssldirs
~~~

Optionally you can install also our custom CA certificates so they are
picked up by our custom OpenSSL installation:

~~~sh
mkdir -p $PFX/local/share/ca-certificates
cp -a $WORKDIR/demo_certs/romen_CA_*.crt $PFX/local/share/ca-certificates/
update-ca-certificates \
    --localcertsdir $PFX/local/share/ca-certificates \
    --etccertsdir $PFX/ssl/certs \
    --fresh --verbose
~~~

## Demo

You need 2 shells, one will run the server, and the other will run the
client.

### Server side

~~~sh
export WORKDIR=~/openoptls
export PFX=$WORKDIR
export PATH=$PFX/bin:$PATH

openssl s_server -tls1_3 -www \
    -cert $WORKDIR/demo_certs/leaf_NIKE.cert.chain.pem \
    -key $WORKDIR/demo_certs/leaf_NIKE.key.priv.pem
~~~

### Client side

~~~sh
export WORKDIR=~/openoptls
export PFX=$WORKDIR
export PATH=$PFX/bin:$PATH

echo "GET /" | openssl s_client -tls1_3 -verify_return_error -crlf \
    -verifyCAfile $WORKDIR/demo_certs/CA_cert.chain.pem
~~~

The `-verifyCAfile` option can be omitted if you installed our CA
certificates.

[original-OPTLS]: <https://mailarchive.ietf.org/arch/msg/tls/ma_T1AL5_jMarTB8Ci0vdfYCoVM/>
[tls-semistatic-dh]: <https://datatracker.ietf.org/doc/html/draft-ietf-tls-semistatic-dh-01>
[thesis]: <https://www.ru.nl/publish/pages/769526/thesis-final.pdf>
[DC]: <https://datatracker.ietf.org/doc/html/draft-ietf-tls-subcerts>


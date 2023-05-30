#!/bin/zsh -e

EASYRSA_VERSION=3.1.2
EASYRSA=EasyRSA-${EASYRSA_VERSION}


export EASYRSA_CA_EXPIRE=10000
export EASYRSA_CERT_EXPIRE=10000
export EASYRSA_KEY_SIZE=2048
export EASYRSA_NO_TEXT=1

rm -rf rsas-root rsas-int


wget https://github.com/OpenVPN/easy-rsa/releases/download/v${EASYRSA_VERSION}/${EASYRSA}.tgz -O easyrsa.tgz

mkdir rsas-root
mkdir rsas-int

tar xzvf easyrsa.tgz --strip-components=1 -C rsas-root
tar xzvf easyrsa.tgz --strip-components=1 -C rsas-int

rm -rf easyrsa.tgz


pushd rsas-root
./easyrsa --batch init-pki
./easyrsa --batch --req-cn="ThomCert CA" build-ca nopass
popd

pushd rsas-int
./easyrsa --batch init-pki
./easyrsa --batch --req-cn="ThomCert SubCA" build-ca subca nopass
popd

pushd rsas-root
./easyrsa --batch import-req ../rsas-int/pki/reqs/ca.req int
./easyrsa --batch sign-req ca int
cp pki/issued/int.crt ../rsas-int/pki/ca.crt
popd

pushd rsas-int
./easyrsa --no-pass --batch --subject-alt-name=DNS:servername gen-req servername
./easyrsa --no-pass --batch --req-cn=client gen-req client
./easyrsa --no-pass --batch sign-req server servername
./easyrsa --no-pass --batch sign-req client client
popd

#!/bin/bash

set -e

pushd ../../../mk-cert
pipenv install
env ROOT_SIGALG=dilithium2 INT_SIGALG=dilithium2 LEAF_ALG=kyber512 \
    CLIENT_ALG="kyber512" CLIENT_CA_ALG="dilithium2" \
    HOSTNAMES=testserver.com,second.testserver.com,localhost \
    pipenv run python encoder.py
popd

cp ../../../mk-cert/kem.crt end.cert
cp ../../../mk-cert/kem.key end.key
cp ../../../mk-cert/kem-int.crt inter.cert
cp ../../../mk-cert/kem-int.key inter.key
cp ../../../mk-cert/kem-ca.crt ca.cert
cp ../../../mk-cert/kem-ca.key ca.key
cp ../../../mk-cert/client-ca.crt client-ca.cert
cp ../../../mk-cert/client.key client.key
cp ../../../mk-cert/client.crt client.cert
cat inter.cert ca.cert > end.chain
cp end.chain client.chain
cat end.cert {inter,ca}.cert > end.fullchain
cat client.cert client-ca.cert > client.fullchain

#!/bin/bash

set -e

pushd ../../../mk-cert
pipenv install
env ROOT_SIGALG=dilithium2 INT_SIGALG=dilithium2 LEAF_ALG=dilithium2 \
    CLIENT_CA_ALG=dilithium2 CLIENT_ALG=dilithium2 \
    HOSTNAMES=testserver.com,second.testserver.com,localhost \
    pipenv run python encoder.py
popd

cp ../../../mk-cert/signing.crt end.cert
cp ../../../mk-cert/signing.key end.key
cp ../../../mk-cert/signing-int.crt inter.cert
cp ../../../mk-cert/signing-int.key inter.key
cp ../../../mk-cert/signing-ca.crt ca.cert
cp ../../../mk-cert/signing-ca.key ca.key
cp ../../../mk-cert/client.crt client.cert
cp ../../../mk-cert/client.key client.key
cp ../../../mk-cert/client-ca.crt client-ca.cert
cat inter.cert ca.cert > end.chain
cat end.cert {inter,ca}.cert > end.fullchain
cat client.cert client-ca.cert > client.fullchain


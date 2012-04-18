#!/bin/sh
#
# Usage: download_ssl_certs.sh
# Downloads pop.gmail.com cert and CA cert to ~/.ssl/certs

CERTDIR=$HOME/.ssl/certs

mkdir -p $CERTDIR
pushd $CERTDIR

# Extract GMail and root cert.
echo | openssl s_client -connect pop.gmail.com:995 2>&1 |\
    sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > gmailpop.pem
wget -O equifax.pem "https://www.geotrust.com/resources/root_certificates/certificates/Equifax_Secure_Certificate_Authority.cer"

# Rehash certs.
c_rehash $CERTDIR
popd

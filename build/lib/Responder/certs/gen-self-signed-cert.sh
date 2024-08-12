#!/bin/bash
CERT_PATH=$1
openssl genrsa -out "$CERT_PATH/certs/responder.key" 2048
openssl req -new -x509 -days 3650 -key "$CERT_PATH/certs/responder.key" -out "$CERT_PATH/certs/responder.crt" -subj "/"

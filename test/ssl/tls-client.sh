#!/bin/sh
export OPENSSL_CONF=./etc/pkcs11-linux.cfg
export OPENAAA_PROTOCOL=aaa
export OPENAAA_HANDLER=/usr/local/bin/aducid
export OPENAAA_VERBOSE=4
#openssl s_client -tlsextdebug -no_ticket -connect www.cyberciti.biz:443 <<<EOF | grep -i 'pkcs\|SSL\|Session\|Protocol\|key\|tls\|extension\|aaa'
#openssl s_client -tlsextdebug -no_ticket -connect www.cyberciti.biz:443 <<<EOF 
openssl s_client -connect localhost:4443


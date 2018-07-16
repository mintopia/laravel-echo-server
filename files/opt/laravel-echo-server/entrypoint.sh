#!/bin/sh
set -e

if ! [ -e laravel-echo-server.json ]; then
  cp laravel-echo-server.example.json laravel-echo-server.json
fi

sed -i -e "s%{{ ECHO_CLIENTS }}%$ECHO_CLIENTS%g" laravel-echo-server.json
sed -i -e "s%{{ ECHO_REDIS_PORT }}%$ECHO_REDIS_PORT%g" laravel-echo-server.json
sed -i -e "s%{{ ECHO_REDIS_HOSTNAME }}%$ECHO_REDIS_HOSTNAME%g" laravel-echo-server.json
sed -i -e "s%{{ ECHO_DEVMODE }}%$ECHO_DEVMODE%g" laravel-echo-server.json
sed -i -e "s%{{ ECHO_PROTOCOL }}%$ECHO_PROTOCOL%g" laravel-echo-server.json
sed -i -e "s%{{ ECHO_SSL_CERT_PATH }}%$ECHO_SSL_CERT_PATH%g" laravel-echo-server.json
sed -i -e "s%{{ ECHO_SSL_KEY_PATH }}%$ECHO_SSL_KEY_PATH%g" laravel-echo-server.json
sed -i -e "s%{{ ECHO_SSL_CHAIN_PATH }}%$ECHO_SSL_CHAIN_PATH%g" laravel-echo-server.json
sed -i -e "s%{{ ECHO_SSL_PASSPHRASE }}%$ECHO_SSL_PASSPHRASE%g" laravel-echo-server.json
sed -i -e "s%{{ ECHO_ALLOW_CORS }}%$ECHO_ALLOW_CORS%g" laravel-echo-server.json
sed -i -e "s%{{ ECHO_ALLOW_ORIGIN }}%$ECHO_ALLOW_ORIGIN%g" laravel-echo-server.json
sed -i -e "s%{{ ECHO_ALLOW_METHODS }}%$ECHO_ALLOW_METHODS%g" laravel-echo-server.json
sed -i -e "s%{{ ECHO_ALLOW_HEADERS }}%$ECHO_ALLOW_HEADERS%g" laravel-echo-server.json

$@
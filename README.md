# Laravel Echo Server

## Introduction

This is a simple docker container for the [Laravel Echo Server](https://github.com/tlaverdure/laravel-echo-server).

## Configuration

The container is configured to want to use Redis by default. Most configuration can be changed by setting the appropriate environment variables. If you want a more complex config, you can mount it into the container to `/opt/laravel-echo-server/laravel-echo-server.json`.

### Environment Variables

The variables you can modify are:

 - **LARAVEL_ECHO_SERVER_AUTH_HOST** - The host of the server that authenticates private and presence channels
 - **LARAVEL_ECHO_SERVER_HOST** - The host of the server
 - **LARAVEL_ECHO_SERVER_PORT** - The port for the server
 - **LARAVEL_ECHO_SERVER_DEBUG** - Debug mode
 - **ECHO_CLIENTS** - JSON representing the clients for the server
 - **ECHO_DEVMODE** - Same as debug mode?

### Running with SSL

The server supports either HTTP or HTTPS (not both simultaenously). If you want to use HTTPS, set the protocol appropriately and specify the certificate, key and any chain certificate using environment variables.

 - **ECHO_PROTOCOL** - `http` or `https` depending on what you want to use
 - **ECHO_SSL_CERT_PATH** - Path to an SSL certificate if using HTTPS
 - **ECHO_SSL_KEY_PATH** - Path to the private key for the SSL certificate
 - **ECHO_SSL_CHAIN_PATH** - Path to a chain certificate file
 - **ECHO_SSL_PASSPHRASE** - The passphrase for the private key if required

### API Access

There is a simple HTTP API built in, cross-domain access can be configured using environment variables:

 - **ECHO_ALLOW_CORS** - `true` or `false` if you want to allow CORS or not
 - **ECHO_ALLOW_ORIGIN** - The allowed origin for cross-domain comms
 - **ECHO_ALLOW_METHODS** - HTTP methods that are allowed cross-domain
 - **ECHO_ALLOW_HEADERS** - The headers that will be accepted with CORS
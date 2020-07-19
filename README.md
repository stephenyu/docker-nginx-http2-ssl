# Supported tags and respective Dockerfile links

* `1.19.1`, `latest` [_Dockerfile_](https://github.com/stephenyu/docker-nginx-http2-ssl/blob/master/Dockerfile)

Test HTML content in a Docker Container.  Based on the official Nginx Images, the configuration has been
setup to also include includes HTTP2 and SSL support.

## Setup

### SSL Certificate Authority
To create the SSL Key and Certificate Files, we use _mkcert_.

> mkcert is a simple tool for making locally-trusted development certificates. It requires no configuration.

#### Steps
1. Install [mkcert](https://github.com/FiloSottile/mkcert).

2. Create and Install SSL Key and Certificate.

```
$ mkcert -install -key-file key.pem -cert-file cert.pem localhost.dev "*.localhost.dev" localhost 127.0.0.1 ::1

Created a new certificate valid for the following names 📜
 - "localhost.dev"
 - "*.localhost.dev"
 - "localhost"
 - "127.0.0.1"
 - "::1"

The certificate is at "cert.pem" and the key at "key.pem" ✅
```

These files need to be mounted into container.

# Usage

To host files in your the current directory.

```
$ docker run -ti \
   -v (path to cert.pem):/ssl/cert.pem \
   -v (path to key.pem):/ssl/key.pem \
   -v $PWD:/usr/share/nginx/html \
   -p 80:80 -p 443:443 \
   stephenyu/nginx-http2-ssl
```

Navigate to [https://localhost](https://localhost) (or any of the above names, the certificate was generated for) and you should be able to see your content.

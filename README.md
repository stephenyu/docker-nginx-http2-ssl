# Supported tags and respective Dockerfile links

* `1.15.3`, `latest` [_Dockerfile_](https://github.com/stephenyu/docker-nginx-http2-ssl/blob/master/Dockerfile)

Based on the official Nginx Images, this is includes HTTP2 support and SSL for the following domains:
 - `localhost.dev`
 - `*.localhost.dev`
 - `localhost`
 - `127.0.0.1`
 - `::1`
 
# Hosting some simple static content
```
$ docker run -ti -v $PWD:/usr/share/nginx/html -p 80:80 -p 443:443 stephenyu/nginx-http2-ssl
```


# SSL Certificate Authority
SSL Files have been generated using [mkcert](https://github.com/FiloSottile/mkcert) using the following command
```
$ mkcert -install localhost.dev "*.localhost.dev" localhost 127.0.0.1 ::1
```

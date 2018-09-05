FROM nginx:1.15.3

LABEL maintainer="Stephen Yu <s.yu@less3.com>"

COPY nginx.conf /etc/nginx/nginx.conf

COPY ssl-key.pem /ssl/ssl-key.pem
COPY ssl.pem /ssl/ssl.pem

EXPOSE 80
EXPOSE 443

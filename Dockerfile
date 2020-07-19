FROM nginx:1.19.1-alpine

LABEL maintainer="Stephen Yu <s.yu@less3.com>"

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
EXPOSE 443

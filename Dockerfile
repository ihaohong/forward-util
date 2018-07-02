FROM nginx:1.9.0

RUN mkdir -p etc/nginx/logs/

ADD  nginx.conf      /etc/nginx/nginx.conf

EXPOSE 8080

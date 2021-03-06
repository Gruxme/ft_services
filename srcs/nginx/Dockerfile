FROM alpine

EXPOSE 80 443 22

RUN apk update &&\
    apk add nginx openrc openssl openssh &&\
    apk add telegraf --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted && \
    openrc reboot && mkdir /etc/telegraf/

RUN openssl req -x509 -nodes -days 365 -subj "/C=MA/ST=BG/O=1337/CN=localhost" -addext "subjectAltName=DNS:localhost" \
    -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

RUN addgroup sshgroup \
    && adduser -D admin \
    && echo "admin:admin" | chpasswd \
    && ssh-keygen -A
COPY srcs/sshd_config /etc/ssh/sshd_config

COPY srcs/default.conf /etc/nginx/conf.d/default.conf
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY srcs/index.html /var/www/localhost/htdocs/
COPY srcs/telegraf.conf /etc/telegraf/

COPY srcs/probe.sh /
RUN chmod +x /probe.sh

COPY srcs/startup.sh /
RUN chmod +x /startup.sh
ENTRYPOINT sh startup.sh
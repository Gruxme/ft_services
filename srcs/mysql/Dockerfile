FROM alpine

RUN apk update &&\
    apk add mariadb mariadb-common mariadb-client openrc &&\
    apk add telegraf --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted && \
    openrc reboot && mkdir /etc/telegraf/

COPY srcs/setup.sh /
RUN chmod +x /setup.sh
COPY srcs/probe.sh /
RUN chmod +x /probe.sh
COPY srcs/my.cnf /etc/mysql/my.cnf
COPY srcs/telegraf.conf /etc/telegraf/
COPY srcs/wordpress.sql /
ENTRYPOINT sh /setup.sh
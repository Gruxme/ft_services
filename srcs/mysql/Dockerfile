FROM alpine

RUN apk update &&\
    apk add mariadb mariadb-common mariadb-client openrc &&\
    openrc reboot

COPY srcs/setup.sh /
RUN chmod +x /setup.sh
COPY srcs/probe.sh /
RUN chmod +x /probe.sh
COPY srcs/my.cnf /etc/mysql/my.cnf
COPY srcs/wordpress.sql /
CMD sh /setup.sh
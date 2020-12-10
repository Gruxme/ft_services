FROM alpine

RUN apk update &&\
    apk add mariadb mariadb-common mariadb-client openrc &&\
    openrc reboot

COPY srcs/setup.sh /
COPY srcs/my.cnf /etc/mysql/my.cnf
COPY srcs/wordpress.sql /
RUN chmod +x /setup.sh
CMD sh /setup.sh
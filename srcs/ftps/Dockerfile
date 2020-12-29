FROM alpine

EXPOSE 21 10090-10092

RUN apk update &&\
apk add telegraf --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted && \
apk add openssl vsftpd openrc && openrc reboot && mkdir /etc/telegraf/

COPY srcs/setup.sh /
COPY srcs/startup.sh /
COPY srcs/probe.sh /
COPY srcs/telegraf.conf /etc/telegraf/
COPY srcs/vsftpd.conf /etc/vsftpd/
RUN chmod +x /setup.sh
RUN chmod +x /startup.sh
RUN sh setup.sh

ENTRYPOINT sh /startup.sh
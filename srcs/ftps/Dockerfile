FROM alpine

EXPOSE 21 10090-10092

RUN apk update &&\
    apk add openssl vsftpd openrc && openrc reboot

COPY srcs/setup.sh /
COPY srcs/startup.sh /
COPY srcs/telegraf.conf /etc/telegraf/
COPY srcs/vsftpd.conf /etc/vsftpd/
RUN chmod +x /setup.sh
RUN chmod +x /startup.sh
RUN sh setup.sh

CMD sh /startup.sh
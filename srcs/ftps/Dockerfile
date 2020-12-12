FROM alpine

RUN apk update &&\
    apk add openssl vsftpd

COPY srcs/setup.sh /
RUN chmod +x /setup.sh
RUN sh setup.sh
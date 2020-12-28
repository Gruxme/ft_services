FROM alpine

EXPOSE 8086 8088

RUN apk update && \
apk add telegraf --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted && \
apk add openrc influxdb && openrc reboot && mkdir /etc/telegraf/
COPY srcs/telegraf.conf /etc/telegraf/telegraf.conf

COPY srcs/probe.sh /
RUN chmod +x /probe.sh

COPY srcs/startup.sh /
RUN chmod +x /startup.sh

CMD sh /startup.sh
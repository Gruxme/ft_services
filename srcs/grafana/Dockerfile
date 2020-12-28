FROM alpine

EXPOSE 3000

RUN apk update && \
apk add grafana --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted && \
apk add telegraf --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted && \
apk add openrc && openrc reboot && mkdir /etc/telegraf/
COPY srcs/telegraf.conf /etc/telegraf/telegraf.conf

WORKDIR /usr/share/grafana

COPY srcs/setup.sh /
RUN chmod +x /setup.sh

COPY srcs/probe.sh /
RUN chmod +x /probe.sh

COPY srcs/startup.sh /
RUN chmod +x /startup.sh
RUN sh /setup.sh

CMD sh /startup.sh
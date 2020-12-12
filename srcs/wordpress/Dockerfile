FROM alpine

EXPOSE 5050

RUN apk update &&\
    apk add nginx openrc wget&&\
    apk add php7-common php7-fpm php7-opcache php7-gd php7-mysqli php7-zlib \
    php7-curl php7-mbstring php7-json php7-session php7-phar php7-cli php7-zip \
    php7-iconv php7-xml php7-imap php7-cgi fcgi php7-pdo php7-pdo_mysql php7-soap \
    php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom &&\
    openrc reboot
COPY srcs/default.conf /etc/nginx/conf.d/default.conf

COPY srcs/setup.sh /
RUN chmod +x /setup.sh
COPY srcs/probe.sh /
RUN chmod +x /probe.sh
COPY srcs/startup.sh /
RUN chmod +x /startup.sh
RUN sh /setup.sh
COPY srcs/wp-config.php /var/www/localhost/htdocs/wordpress/wp-config.php
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
CMD sh /startup.sh
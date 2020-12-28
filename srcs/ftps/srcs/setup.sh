#!/bin/sh

adduser admin -D && echo "admin:admin" | chpasswd
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/C=MA/ST=BG/L=BG/O=1337/CN=localhost" -keyout /etc/ssl/private/vsftpd.key -out /etc/ssl/certs/vsftpd.crt
mkdir -p /home/admin/ftp/upload
chmod 550 /home/admin/ftp && chmod 750 /home/admin/ftp/upload
chown -R admin: /home/admin/ftp
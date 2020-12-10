#!/bin/sh

wget https://wordpress.org/latest.tar.gz
tar xvf latest.tar.gz
mv /wordpress/ /var/www/localhost/htdocs/
rm -rf latest.tar.gz

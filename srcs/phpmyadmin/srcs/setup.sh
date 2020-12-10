#!/bin/sh
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-english.tar.gz
tar xvf phpMyAdmin-5.0.4-english.tar.gz
mkdir /var/www/localhost/htdocs/phpmyadmin
mv /phpMyAdmin-5.0.4-english/* /var/www/localhost/htdocs/phpmyadmin/
rm -rf phpMyAdmin-5.0.4-english.tar.gz phpMyAdmin-5.0.4-english

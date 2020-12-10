#!/bin/sh

/etc/init.d/mariadb setup
rc-service mariadb start
mysql -u root -e "CREATE USER 'wpuser'@'%' IDENTIFIED BY 'wppassword';"
mysql -u root -e "CREATE DATABASE wordpress;"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'%'; FLUSH PRIVILEGES;"
mysql -u root wordpress < /wordpress.sql
rc-service mariadb restart
tail -f /dev/null
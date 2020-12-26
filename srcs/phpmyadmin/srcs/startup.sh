#!/bin/sh

rc-service php-fpm7 start
rc-service telegraf start
rc-service nginx start
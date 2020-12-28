#!/bin/sh

rc-service php-fpm7 start
telegraf & rc-service nginx start
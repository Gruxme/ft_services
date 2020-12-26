#!/bin/sh

/usr/sbin/sshd
rc-service telegraf start
rc-service nginx start
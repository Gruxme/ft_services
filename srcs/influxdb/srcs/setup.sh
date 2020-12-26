#!/bin/sh

influx -execute "create database telegraf"
influx -execute "create user "telegraf" with password 'telegrafpass' with all privileges"
influx -execute "grant all on "telegraf" to "telegraf""
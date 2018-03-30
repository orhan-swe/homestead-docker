#!/usr/bin/env bash

#lets add some php debug help config:
echo "xdebug.remote_connect_back=0" >> /etc/php/7.1/fpm/conf.d/20-xdebug.ini
echo "xdebug.remote_autostart=1" >> /etc/php/7.1/fpm/conf.d/20-xdebug.ini
echo "xdebug.remote_host=docker.for.win.localhost" >> /etc/php/7.1/fpm/conf.d/20-xdebug.ini

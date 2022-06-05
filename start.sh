#!/bin/bash

certbot certonly --nginx -d example.com

echo "Starting PHP-FPM..."
sudo /usr/sbin/php-fpm7.0 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Nginx..."
sudo /sbin/nginx -c /home/container/nginx/nginx.conf

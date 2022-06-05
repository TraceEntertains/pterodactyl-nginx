#!/bin/bash

echo "Starting PHP-FPM..."
/usr/sbin/php-fpm7.0 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Nginx..."
/sbin/nginx -c /home/container/nginx/nginx.conf

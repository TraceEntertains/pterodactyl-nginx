#!/bin/bash

ls

echo "Starting PHP-FPM..."
/php-fpm7 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Nginx..."
/nginx -c /home/container/nginx/nginx.conf

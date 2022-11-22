#!/bin/bash

echo "Updating certificates..."
certbot certonly --test-cert --standalone -d ${TARGET_DOMAIN} --config-dir /home/container/certconfig --work-dir /home/container/certs --logs-dir /home/container/logs

echo "Starting PHP-FPM..."
/usr/sbin/php-fpm7.0 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Nginx..."
/sbin/nginx -c /home/container/nginx/nginx.conf

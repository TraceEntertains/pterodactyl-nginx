#!/bin/bash

echo "Updating certificates..."
certbot certonly --keep-until-expiring --manual --preferred-challenges dns -d ${TARGET_DOMAIN} --config-dir /home/container/certconfig --work-dir /home/container/certs --logs-dir /home/container/logs
chmod 755 /home/container/certconfig/live/${TARGET_DOMAIN}/cert.pem
chmod 755 /home/container/certconfig/live/${TARGET_DOMAIN}/privkey.pem

echo "Starting PHP-FPM..."
/usr/sbin/php-fpm7.0 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "Starting Nginx..."
/sbin/nginx -c /home/container/nginx/nginx.conf

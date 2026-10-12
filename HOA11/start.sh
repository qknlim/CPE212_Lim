#!/bin/bash
source /etc/apache2/envvars
mkdir -p "$APACHE_RUN_DIR" "$APACHE_LOCK_DIR" "$APACHE_LOG_DIR"
chown www-data:www-data "$APACHE_RUN_DIR" "$APACHE_LOCK_DIR" "$APACHE_LOG_DIR"
service mariadb start
exec /usr/sbin/apache2 -D FOREGROUND

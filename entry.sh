#!/bin/sh

source /usr/bin/setup

cd $APP_DIR

exec /sbin/su-exec $USERNAME /usr/bin/php7 "$@"

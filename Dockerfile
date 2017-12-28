FROM gnkz/base:0.2.0
MAINTAINER gnkz.dev@gmail.com

ENV PHP_VERSION 7.1.12-r0
ENV PHP_REDIS_VERSION 3.1.4-r0

RUN apk --no-cache add php7=$PHP_VERSION \
        php7-openssl=$PHP_VERSION \
        php7-sqlite3=$PHP_VERSION \
        php7-tokenizer=$PHP_VERSION \
        php7-pdo_mysql=$PHP_VERSION \
        php7-redis=$PHP_REDIS_VERSION \
        php7-mbstring=$PHP_VERSION \
        php7-pdo_sqlite=$PHP_VERSION \
        php7-opcache=$PHP_VERSION \
        php7-gd=$PHP_VERSION \
        php7-json=$PHP_VERSION \
        php7-xml=$PHP_VERSION \
        php7-pdo_pgsql=$PHP_VERSION \
        php7-iconv=$PHP_VERSION \
        php7-zip=$PHP_VERSION \
        php7-mcrypt=$PHP_VERSION \
        php7-pdo=$PHP_VERSION \
        php7-mysqli=$PHP_VERSION \
        php7-xmlwriter=$PHP_VERSION \
        php7-zlib=$PHP_VERSION \
        php7-bcmath=$PHP_VERSION \
        php7-ctype=$PHP_VERSION \
        php7-dom=$PHP_VERSION \
        php7-simplexml=$PHP_VERSION \
        php7-phar=$PHP_VERSION \
        php7-curl=$PHP_VERSION \
        php7-pcntl=$PHP_VERSION && \
        sed -i "s/^memory_limit = 128M/memory_limit = -1/g" /etc/php7/php.ini && \
        sed -i "s/^;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g" /etc/php7/php.ini

COPY entry.sh /usr/bin/entry
RUN chmod +x /usr/bin/entry

ENTRYPOINT ["/usr/bin/entry"]
CMD ["-v"]

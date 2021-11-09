FROM php:8.0-fpm-alpine

ENV TERM=linux

RUN apk add libzip icu acl
RUN apk add --no-cache --virtual .build-deps curl-dev libxml2-dev icu-dev libedit-dev libzip-dev
RUN docker-php-ext-install intl
RUN docker-php-ext-install pdo
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install curl
RUN docker-php-ext-install opcache
RUN docker-php-ext-install readline
RUN docker-php-ext-install xml
RUN docker-php-ext-install zip

RUN apk del -f .build-deps && rm -rf /tmp/* /var/cache/apk/*
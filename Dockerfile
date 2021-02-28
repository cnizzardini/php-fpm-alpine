FROM php:7.4-fpm-alpine

ENV TERM=linux

RUN apk add libzip icu
RUN apk add --no-cache --virtual .build-deps curl-dev libxml2-dev icu-dev libedit-dev libzip-dev
RUN docker-php-ext-install intl pdo pdo_mysql curl json opcache readline xml zip

RUN apk del -f .build-deps && rm -rf /tmp/* /var/cache/apk/*
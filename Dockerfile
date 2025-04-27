FROM php:8.4.7RC1-fpm-alpine

ENV TERM=linux

RUN apk add libzip icu acl
RUN apk add --no-cache --virtual .build-deps curl-dev libxml2-dev icu-dev libedit-dev libzip-dev
RUN docker-php-ext-install intl pdo pdo_mysql curl opcache xml zip

RUN apk del -f .build-deps && rm -rf /tmp/* /var/cache/apk/*
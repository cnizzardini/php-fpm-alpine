#
# PHP
#
FROM php:7.4-fpm-alpine

ARG ENVIRONMENT
ARG USER_ID
ARG USERNAME
ARG APP_DIR

WORKDIR /var/www/$APP_DIR

ENV TERM=linux

# Core dependencies
RUN apk add libzip icu
RUN apk add --no-cache --virtual .build-deps curl-dev libxml2-dev icu-dev libedit-dev libzip-dev
RUN docker-php-ext-install intl pdo pdo_mysql curl json opcache readline xml zip

# Dev dependencies
RUN if [[ "$ENVIRONMENT" != "prod" ]]; then \
    apk add git \
    && apk add --no-cache --virtual .php-deps file re2c autoconf make zlib zlib-dev g++ \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && apk del -f .php-deps; \
fi

# Cleanup
RUN apk del -f .build-deps && rm -rf /tmp/* /var/cache/apk/*

# Add user
RUN if [[ "$USERNAME" != "root" ]]; then \
    adduser --disabled-password --gecos '' -u $USER_ID --ingroup www-data $USERNAME; \
fi

USER $USERNAME

COPY . .
COPY --from=composer:2.0 /usr/bin/composer /usr/bin/composer
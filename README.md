# CakePHP Dockerfile

[![Build](https://github.com/cnizzardin/cakephp-fpm-alpine/workflows/Image/badge.svg?branch=master)](https://github.com/cnizzardin/cakephp-fpm-alpine/actions)
[![CakePHP](https://img.shields.io/badge/cakephp-^4-red?logo=cakephp)](https://book.cakephp.org/4/en/index.html)
[![Docker](https://img.shields.io/badge/docker-0db7ed.svg?logo=docker)](https://www.docker.com)
[![PHP](https://img.shields.io/badge/php-7.4-8892BF.svg?logo=php)](https://php.net/)

A Dockerfile for CakePHP based on PHP-FPM-ALPINE

## Build Arguments

- ARG ENVIRONMENT
- ARG USER_ID
- ARG USERNAME
- ARG APP_DIR

Example:

```console
docker build --build-arg USER_ID=$(id -u) --build-arg USERNAME=cakephp --build-arg APP_DIR=app --build-arg ENVIRONMENT=dev . 
```
# CakePHP Dockerfile

A Dockerfile for CakePHP based on PHP-FPM-ALPINE

## Build Arguments

ARG ENVIRONMENT
ARG USER_ID
ARG USERNAME
ARG APP_DIR

Example:

```console
docker build --build-arg USER_ID=$(id -u) --build-arg USERNAME=cakephp --build-arg APP_DIR=app --build-arg ENVIRONMENT=dev . 
```
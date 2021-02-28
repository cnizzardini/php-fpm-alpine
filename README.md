# PHP-FPM Alpine Dockerfile

[![Build](https://github.com/cnizzardini/cakephp-fpm-alpine/actions/workflows/docker-image.yml/badge.svg)](https://github.com/cnizzardini/cakephp-fpm-alpine/actions/workflows/docker-image.yml)
[![PHP](https://img.shields.io/badge/php-8.0-8892BF.svg?logo=php)](https://php.net/)
[![Docker](https://img.shields.io/badge/docker-0db7ed.svg?logo=docker)](https://hub.docker.com/repository/docker/cnizzardini/php-fpm-alpine)

A Dockerfile for CakePHP based on the official [PHP 8.0](https://hub.docker.com/_/php) FPM Alpine image with the following extensions:

Pull from dockerhub: https://hub.docker.com/repository/docker/cnizzardini/php-fpm-alpine

Includes:

- intl 
- pdo 
- pdo_mysql 
- curl 
- opcache 
- readline 
- xml 
- zip

## PHP Versions

| Version     | Branch 		|
| ----------- | ----------- |
| 8.0      	| https://github.com/cnizzardini/php-fpm-alpine/tree/master |
| 7.4   	| https://github.com/cnizzardini/php-fpm-alpine/tree/php-7.4 |

Revision tags for this image do not reflect PHP revisions, they are for bug fixes and minor changes to the image.
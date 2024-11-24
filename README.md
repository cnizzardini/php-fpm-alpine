# &#127856; CakePHP-FPM Alpine Dockerfile

[![Image](https://github.com/cnizzardini/php-fpm-alpine/actions/workflows/docker-image.yml/badge.svg)](https://github.com/cnizzardini/php-fpm-alpine/actions/workflows/docker-image.yml)
[![PHP](https://img.shields.io/badge/php-8.3-8892BF.svg?logo=php)](https://php.net/)
[![Docker](https://img.shields.io/badge/docker-0db7ed.svg?logo=docker)](https://hub.docker.com/repository/docker/cnizzardini/php-fpm-alpine)

A Dockerfile for PHP based on the official [PHP 8.3](https://hub.docker.com/_/php) FPM Alpine image. This is built for 
CakePHP compatibility with the following extensions:

- intl 
- pdo 
- pdo_mysql 
- curl 
- opcache 
- xml 
- zip

## PHP Versions

| Version | Branch 		                                                  |
|---------|------------------------------------------------------------|
| 8.3     | https://github.com/cnizzardini/php-fpm-alpine/tree/master  |
| 8.2     | https://github.com/cnizzardini/php-fpm-alpine/tree/php-8.2 |
| 8.1     | https://github.com/cnizzardini/php-fpm-alpine/tree/php-8.1 |
| 8.0     | https://github.com/cnizzardini/php-fpm-alpine/tree/php-8.0 |
| 7.4     | https://github.com/cnizzardini/php-fpm-alpine/tree/php-7.4 |

Revision tags for this image do not reflect PHP revisions, they are for bug fixes and minor changes to the image.

Docker builds and pushes are handled via GitHub actions: [.github/workflows](.github/workflows)

## Update Steps

1. Update `Dockerfile`
2. Update `.github/workflows/docker-image.yml` with the new tags
3. Update ReadME
4. Create PR
5. Merge
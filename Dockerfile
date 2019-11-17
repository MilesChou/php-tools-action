FROM php:7.3-alpine

COPY phpcs/docker-install-phpcs /usr/local/bin/
COPY phpunit/docker-install-phpunit /usr/local/bin/
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

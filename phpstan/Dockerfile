FROM php:7.3-alpine

COPY docker-install-phpstan /usr/local/bin/
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh", "phpstan"]

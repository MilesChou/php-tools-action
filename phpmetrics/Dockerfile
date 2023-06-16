FROM php:8.2-alpine

COPY docker-install-phpmetrics /usr/local/bin/
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh", "phpmetrics"]

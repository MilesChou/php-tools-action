ARG PHP_IMAGE
FROM $PHP_IMAGE

COPY docker-install-phpstan /usr/local/bin/
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh", "phpstan"]

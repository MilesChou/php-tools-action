ARG PHP_IMAGE
FROM $PHP_IMAGE

COPY docker-install-phpmd /usr/local/bin/
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh", "phpmd"]

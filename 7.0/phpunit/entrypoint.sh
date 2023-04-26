#!/bin/sh -l

set -e

docker-install-phpunit ${INPUT_PHPUNIT_VERSION}

exec "$@"

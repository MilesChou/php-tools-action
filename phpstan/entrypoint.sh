#!/bin/sh -l

set -e

docker-install-phpstan

exec "$@"

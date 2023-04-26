#!/bin/sh -l

set -e

docker-install-phpmetrics

exec "$@"

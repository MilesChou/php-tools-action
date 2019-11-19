#!/bin/sh -l

set -e

docker-install-phpcs

exec $@

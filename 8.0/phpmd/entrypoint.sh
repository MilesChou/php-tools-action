#!/bin/sh -l

set -e

docker-install-phpmd

exec $@

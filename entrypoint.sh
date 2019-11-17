#!/bin/sh -l

echo "Use PHPUnit ${INPUT_PHPUNIT_VERSION}"

phpunit/docker-install-phpunit ${INPUT_PHPUNIT_VERSION}

exec $@

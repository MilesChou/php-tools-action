#!/usr/bin/env bash

generated_warning() {
	cat <<-EOH
		#
		# NOTE: THIS DOCKERFILE IS GENERATED VIA "update.sh"
		#
		# PLEASE DO NOT EDIT IT DIRECTLY.
		#
	EOH
}

build_dockerfile() {
    echo "Build ./${1}/Dockerfile ..."
    generated_warning > ./${1}/Dockerfile
    cat ./${1}/Dockerfile.template | sed -e 's!%%PHP_VERSION%%!'"${LATEST_VERSION}-alpine"'!' >> ./${1}/Dockerfile

    for version in ${VERSIONS}; do
        echo "Build ./${version}/${1}/Dockerfile ..."
        mkdir -p ${version}/${1}

        generated_warning > ./${version}/${1}/Dockerfile
        cat ./${1}/Dockerfile.template | sed -e 's!%%PHP_VERSION%%!'"${version}-alpine"'!' >> ./${version}/${1}/Dockerfile

        cp ./${1}/entrypoint.sh ${version}/${1}/entrypoint.sh
        cp ./${1}/docker-install-${1} ${version}/${1}/docker-install-${1}
    done
}

LATEST_VERSION=7.3

VERSIONS="
5.5
5.6
7.0
7.1
7.2
7.3
7.4
8.0
"

echo "Build Dockerfile for PHP CodeSniffer ..."
build_dockerfile phpcs

echo "Build Dockerfile for PHP Mess Detector ..."
build_dockerfile phpmd

echo "Build Dockerfile for PhpMetrics ..."
build_dockerfile phpmetrics

echo "Build Dockerfile for PHPUnit ..."
build_dockerfile phpunit

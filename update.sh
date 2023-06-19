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
  declare PHP_IMAGES

  echo "Build ./${1}/Dockerfile ..."
  generated_warning > ./${1}/Dockerfile

  for version in "${versions[@]}"; do
    echo "Building for $version"
    # append the container images to use in testing each version
    quote="'"
    delimeter=', '
    PHP_IMAGES+="$quote$version$quote$delimeter"

    # Build the Dockerfile from the supplied template
    echo "Build ./${version}/${1}/Dockerfile ..."
    mkdir -p ${version}/${1}

    rm -f ./${version}/${1}/Dockerfile
    generated_warning > ./${version}/${1}/Dockerfile
    cat ./${1}/Dockerfile.template | sed -e 's!%%PHP_VERSION%%!'"${version}-alpine"'!' >> ./${version}/${1}/Dockerfile
    git add ./${version}/${1}/Dockerfile

    rm -f ./${version}/${1}/entrypoint.sh
    cp ./${1}/entrypoint.sh ./${version}/${1}/entrypoint.sh
    git add ./${version}/${1}/entrypoint.sh

    rm -f ./${version}/${1}/docker-install-${1}
    cp ./${1}/docker-install-${1} ./${version}/${1}/docker-install-${1}
    git add ./${version}/${1}/docker-install-${1}

    LATEST_VERSION=${version}
  done

  echo "Build ./${1}/Dockerfile using latest version (${LATEST_VERSION})..."

  rm -f ./${1}/Dockerfile
  generated_warning >> ./${1}/Dockerfile
  cat ./${1}/Dockerfile.template | sed -e 's!%%PHP_VERSION%%!'"${LATEST_VERSION}-alpine"'!' >> ./${1}/Dockerfile
  git add ./${1}/Dockerfile

  # Update testing GitHub Workflow to include all supported versions
  PHP_IMAGES=$( printf "%s" "${PHP_IMAGES/%', '/}")

  declare php_image_string="php-image: [${PHP_IMAGES}]"
  sed -i '' "s/php-image:.*$/$php_image_string/g" .github/workflows/testing.yaml
}

versions=('5.5' '5.6' '7.0' '7.1' '7.2' '7.3' '7.4' '8.0' '8.1' '8.2')

echo "Build Dockerfile for PHP CodeSniffer ..."
build_dockerfile phpcs

echo "Build Dockerfile for PHP Mess Detector ..."
build_dockerfile phpmd

echo "Build Dockerfile for PhpMetrics ..."
build_dockerfile phpmetrics

echo "Build Dockerfile for PHPUnit ..."
build_dockerfile phpunit

echo "Build Dockerfile for PHPStan ..."
build_dockerfile phpstan

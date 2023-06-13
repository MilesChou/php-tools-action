#!/usr/bin/env bash

versions=('5.5' '5.6' '7.0' '7.1' '7.2' '7.3' '7.4' '8.0' '8.1' '8.2')

declare PHP_IMAGES

for i in "${versions[@]}"
do
  PHP_IMAGES="$PHP_IMAGES""$seperator""php:$i-alpine"
  seperator=', '
done

declare php_image_string="php-image: [${PHP_IMAGES}]"
cd .github/workflows || exit
sed -i '' "s/php-image:.*$/$php_image_string/g" testing.yaml

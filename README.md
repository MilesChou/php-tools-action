# PHP tool action

[![GitHub Release](https://img.shields.io/github/tag/MilesChou/php-tools-action.svg)](https://github.com/MilesChou/php-tools-action/releases)
[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](LICENSE)
[![](https://github.com/MilesChou/php-tools-action/workflows/Testing/badge.svg)](https://github.com/MilesChou/php-tools-action/actions)

PHP tool integrate in GitHub Actions.

## Usage

Following is some example.

### `phpcs`

> See https://github.com/squizlabs/PHP_CodeSniffer

Run with default config.

```yaml
- uses: MilesChou/php-tools-action/phpcs@master
```

With another PHP version

```yaml
- uses: MilesChou/php-tools-action/5.5/phpcs@master
```

With args

```yaml
- uses: MilesChou/php-tools-action/phpcs@master
  with:
    args: some.php
```

### `phpmd`

> See https://github.com/phpmd/phpmd

Run with default config.

```yaml
- uses: MilesChou/php-tools-action/phpmd@master
```

With another PHP version

```yaml
- uses: MilesChou/php-tools-action/5.6/phpmd@master
```

With args

```yaml
- uses: MilesChou/php-tools-action/phpmd@master
  with:
    args: some.php
```

### `phpmetrics`

> See https://github.com/phpmetrics/PhpMetrics

Run with default config.

```yaml
- uses: MilesChou/php-tools-action/phpmetrics@master
```

With another PHP version

```yaml
- uses: MilesChou/php-tools-action/7.0/phpmetrics@master
```

With args

```yaml
- uses: MilesChou/php-tools-action/phpmetrics@master
  with:
    args: some.php
```

### `phpstan`

> See https://github.com/phpstan/phpstan

Run with default config.

```yaml
- uses: MilesChou/php-tools-action/phpstan@master
```

With args

```yaml
- uses: MilesChou/php-tools-action/phpstan@master
  with:
    args: some.php
```

> PHPStan require PHP ^7.1, so just support PHP 7.3.

### `phpunit`

> See https://github.com/sebastianbergmann/phpunit

Run with default config

```yaml
- uses: MilesChou/php-tools-action/phpunit@master
```

With another PHP version

```yaml
- uses: MilesChou/php-tools-action/7.2/phpunit@master
```

With args

```yaml
- uses: MilesChou/php-tools-action/phpunit@master
  with:
    args: --configuration my-phpunit.xml
```

With PHPUnit version

```yaml
- uses: MilesChou/php-tools-action/phpunit@master
  with:
    phpunit_version: 7.5.0
```

## Credits

* [MilesChou](https://github.com/MilesChou)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

# PHP tool action

[![GitHub Release](https://img.shields.io/github/tag/MilesChou/php-tools-action.svg)](https://github.com/MilesChou/php-tools-action/releases)
[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](LICENSE)
[![](https://github.com/MilesChou/php-tools-action/workflows/Testing/badge.svg)](https://github.com/MilesChou/php-tools-action/actions)

PHP tool integrate in GitHub Actions.

## Usage

Following is some example.

### `phpcs`

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

### `phpunit`

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

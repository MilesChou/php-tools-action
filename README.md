# PHP tool action

[![GitHub Release](https://img.shields.io/github/tag/MilesChou/php-tools-action.svg)](https://github.com/MilesChou/php-tools-action/releases)
[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](LICENSE)
![](https://github.com/MilesChou/php-tools-action/workflows/Testing/badge.svg)

PHP tool integrate in GitHub Actions.

## Usage

Following is some example.

### `phpcs`

Run with default config.

```yaml
- uses: MilesChou/php-tools-action/phpcs@master
```

With args

```yaml
- uses: MilesChou/php-tools-action/phpcs@master
  with:
    args: some.php
```

### `phpunit`

Run with default config.

```yaml
- uses: MilesChou/php-tools-action/phpunit@master
```

With args

```yaml
- uses: MilesChou/php-tools-action/phpunit@master
  with:
    args: --configuration my-phpunit.xml
```

With version

```yaml
- uses: MilesChou/php-tools-action/phpunit@master
  with:
    phpunit_version: 7.5.0
```

## Credits

* [MilesChou](https://github.com/MilesChou)

## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.

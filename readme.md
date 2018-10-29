# The Goal
Sistem Status Kerusakan IT Support PT XYZ - with Laravel 5.5

# Table of Contents
- [requirements](#requirements)
- [installasi](#installasi)
- [Basic Usage](#basic-usage)
- [Features Sugestion](#features-sugestion)
- [Contributing](#contributing)
- [License](#license)

## Requirements
* [Latest PHP 7](http://php.net)
* [Composer](http://getcomposer.org)
* [NodeJS/NPM](http://nodejs.org)
* [Git](http://git-scm.com)
* [Mysql](http://mysql.com)
* [Bower](http://bower.com)

## installasi
Clone atau Download repository
```
$ git clone https://github.com/aanfaisal/status.git
```

Lakukan composer install/update

```
$ composer install

or

$ composer update
```

Ganti .env.example ke .env dan ganti setting environment secukupnya :smile:

Generate application key
```
$ php artisan key:generate
```

Laukan Migration and Seeder atau Import status.sql
```
$ php artisan migrate
$ php artisan db:seed
```

Kalau-Kalau Ada yg ga bener lakukan dumping dan ulangi process
```
$ composer dump-autoload
```
## Basic Usage

Ada 3 Role dan 3 Username default yang Ada di App ini
```php
    1. admin
    2. manajer
    3. karyawan
```
Semuanya default password adalah ==>"   rahasia    "<==

## Features Suggestion

Fell free to add any feature suggestion by creating new **Issues**, and we can start discussing it

## Contributing

Start contributing by joining the team

## License

App is released under the MIT Licence. See the bundled LICENSE file for details.
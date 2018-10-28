# The Goal
Sistem Status Kerusakan IT Support PT XYZ - with Laravel 5.5

# Requirements
* [Latest PHP 7](http://php.net)
* [Composer](http://getcomposer.org)
* [NodeJS/NPM](http://nodejs.org)
* [Git](http://git-scm.com)
* [Mysql](http://mysql.com)
* [Bower](http://bower.com)

# Instalasi
Clone repository
```
$ git clone https://github.com/aanfaisal/status.git
```

Do composer install/update

```
$ composer install

or

$ composer update
```

Rename the .env.example to .env and change setting accordingly.

Generate application key
```
$ php artisan key:generate
```

Do Migration and Seeder
```
$ php artisan migrate
$ php artisan db:seed
```

If something seem not right maybe try to dump-autoload and redo the process
```
$ composer dump-autoload
```

# Features Suggestion
Fell free to add any feature suggestion by creating new **Issues**, and we can start discussing it

# Contributing
Start contributing by joining the team

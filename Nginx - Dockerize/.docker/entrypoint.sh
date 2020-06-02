#!/bin/bash

composer install
php artisan key:generate
php artisan migrate
php artisan cache:clear
chmod -R 777 storage

php-fpm
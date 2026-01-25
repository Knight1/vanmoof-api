#!/bin/bash

set -e

if ! command -v php &> /dev/null; then
    echo "PHP is not installed. Please install PHP and try again."
    exit 1
fi

if ! command -v composer &> /dev/null; then
    echo "Composer is not installed. Please install Composer and try again."
    exit 1
fi

# If we're in temp_app directory, go to git root first
if [[ $(pwd) == */temp_app ]]; then
    cd $(git rev-parse --show-toplevel)
fi

# Delete temp_app if it exists
if [ -d "temp_app" ]; then
    rm -rf temp_app
fi

# same as GitHub Actions script
composer create-project laravel/laravel temp_app --prefer-dist --quiet
cd temp_app
composer require knuckleswtf/scribe --dev
php artisan vendor:publish --tag=scribe-config
cp ../scribe.php config/scribe.php
cp -r ../.scribe .scribe
php artisan scribe:generate --no-extraction --verbose
#!/bin/bash

cd /var/www/html/app/

##Cache
echo "#### Cache API ####"
php artisan config:cache >> /var/log/artisanconfig.log

##Configuration
echo "#### Migrate ####"
php artisan migrate --force >> /var/log/artisanconfig.log

# ##Documentação
# echo "#### Documentação API"
# php artisan scribe:generate >> /var/log/artisanconfig.log

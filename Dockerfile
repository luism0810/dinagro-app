#FROM composer:1.9.3 

#WORKDIR /tmp/

#COPY composer.json composer.json
#COPY composer.lock composer.lock


#RUN composer install \
#    --ignore-platform-reqs \
#    --no-interaction \
#    --no-plugins \
#    --no-scripts \
#    --prefer-dist

FROM php:7.4-apache
EXPOSE 80

# copy the Composer PHAR from the Composer image into the PHP image
COPY --from=composer:1.9.3 /usr/bin/composer /usr/bin/composer

#RUN apt-get update -y \
#  && apt-get install -y libxml2-dev

RUN apt-get update && apt-get install -y \
        zlib1g-dev \
        libicu-dev \
        libxml2-dev \
        libpq-dev \
        libzip-dev \
        && docker-php-ext-install mysqli pdo pdo_mysql zip intl xmlrpc soap opcache dom \
        && docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd


RUN apt-get install -y openssl zip unzip git libonig-dev  libxml2-dev libpng-dev libjpeg-dev libfreetype6-dev libonig-dev curl mcrypt gnupg build-essential software-properties-common wget vim libwebp-dev --fix-missing

RUN  docker-php-ext-configure gd 

RUN docker-php-ext-install mysqli mbstring pdo pdo_mysql tokenizer xml bcmath opcache pcntl intl soap exif gd

RUN apt-get update -y 
 
#RUN docker-php-ext-install mysqli pdo pdo_mysql mbstring dom zip gd
RUN a2enmod rewrite

#COPY . /var/www/html
#COPY --from=vendor /tmp/vendor/ /var/www/html/vendor/

ENV COMPOSER_ALLOW_SUPERUSER=1

WORKDIR /var/www/html/

RUN chown -R www-data:www-data /var/www/html  
#RUN composer install  && composer dumpautoload 



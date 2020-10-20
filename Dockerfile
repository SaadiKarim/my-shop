FROM php:7.2-apache-buster

ARG DEBIAN_FRONTEND=noninteractive

# APACHE CONF
RUN a2enmod rewrite

# SYS DEP
RUN apt-get update
RUN apt-get -y install apt-transport-https ca-certificates curl libxml2 zlib1g-dev libpng-dev libicu-dev g++ 
# RUN curl -sSL -o /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
# RUN sh -c 'echo "deb https://packages.sury.org/php/ buster main" > /etc/apt/sources.list.d/php.list'

# PHP EXTENSIONS
RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-install intl
RUN docker-php-ext-install zip
RUN docker-php-ext-install gd
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install fileinfo

# COMPOSER
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
COPY . /var/www/html
WORKDIR /var/www/html
RUN composer install -n
RUN chown -R www-data:www-data /var/www
EXPOSE 80
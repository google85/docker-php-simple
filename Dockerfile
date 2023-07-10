ARG PHP_VERSION 8.1.18

FROM php:$PHP_VERSION-fpm-alpine
ARG PORT_INT

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN docker-php-ext-install pdo pdo_mysql

EXPOSE ${PORT_INT}

WORKDIR /var/www/html

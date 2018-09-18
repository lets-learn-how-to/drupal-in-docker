FROM php:fpm

RUN apt-get update -y && \
        apt-get install -y \
            git \
        && apt-get clean

RUN apt-get update -y && \
        apt-get install -y \
            zlib1g-dev \
        && apt-get clean && \
    docker-php-ext-install zip

RUN apt-get update -y && \
        apt-get install -y \
            libpng-dev \
        && apt-get clean && \
    docker-php-ext-install gd

RUN docker-php-ext-configure opcache --enable-opcache && \
    docker-php-ext-install opcache

RUN docker-php-ext-install pdo_mysql

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/bin/composer

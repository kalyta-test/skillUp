FROM php:7.4-cli
MAINTAINER liuba.kalyta@gmail.com
RUN apt-get update
        && apt install -y git \
                curl \
                wget \
                grep \
                unzip \
                php-mbstring \
        && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
        && HASH="$(wget -q -O - https://composer.github.io/installer.sig)" \
        && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
        && apt install -y redis \
                memcached \
                php-pgsql \
                php-pear \
                libcurl3-openssl-dev \
                pecl_http


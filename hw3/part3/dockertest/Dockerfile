FROM ubuntu:latest
MAINTAINER liuba.kalyta@gmail.com
ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get clean && apt-get update \
        && apt-get install -y git \
                curl \
                wget \
                grep \
                unzip \
                php \
                php-cli \
                php-fpm \
                php-json \
                php-common \
                php-mysql \
                php-zip \
                php-gd \
                php-mbstring \
                php-curl \
                php-xml \
                php-pear \
                php-pgsql \
                php-raphf \
                php-propro \
                php-dev \
        && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
        && HASH="$(wget -q -O - https://composer.github.io/installer.sig)" \
        && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
        && apt-get install -y redis \
                memcached \
                libcurl3-openssl-dev \
#       && pecl install pecl_http

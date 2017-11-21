FROM php:7.0-fpm

MAINTAINER Vinicius Feitosa Da Silva <viniciusfesil@gmail.com>

RUN apt-get update

RUN echo "[ ***** ***** ***** ] - Installing each item in new command to use cache and avoid download again ***** ***** ***** " \
	&& apt-get install -y apt-utils \
	&& apt-get install -y libfreetype6-dev \
	&& apt-get install -y libjpeg62-turbo-dev \
	&& apt-get install -y libcurl4-gnutls-dev \
	&& apt-get install -y libxml2-dev \
	&& apt-get install -y freetds-dev \
	&& apt-get install -y git
	&& echo "[ ***** ***** ***** ] - Installing PHP Dependencies ***** ***** ***** " \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install gd \
	&& docker-php-ext-install soap \
	&& apt-get install -y libpq-dev \
	&& docker-php-ext-install calendar \
	&& docker-php-ext-install pdo_mysql
	&& docker-php-ext-install mysqli
	&& docker-php-ext-configure pgsql --with-pgsql=/usr/local/pgsql
	&& docker-php-ext-configure pdo_pgsql --with-pgsql
	&& docker-php-ext-install pgsql pdo_pgsql
	&& usermod -u 1000 www-data
	&& chmod 0777 -R /var/www

WORKDIR /var/www/html

COPY ./docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]
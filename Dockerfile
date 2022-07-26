FROM public.ecr.aws/pixelvide/php:7.4

MAINTAINER DevOps <ops@pixelvide.com>

RUN mkdir -p /var/www/html/api

# Set working directory
WORKDIR /var/www/html/api

COPY . /var/www/html/api

RUN chown -R www-data:www-data /var/www/html/api
RUN chown -R nginx:nginx /var/www/html/api/storage
RUN chown -R nginx:nginx /var/www/html/api/bootstrap

RUN chmod -R 777 /var/www/html/api/storage
RUN chmod -R 777 /var/www/html/api/bootstrap

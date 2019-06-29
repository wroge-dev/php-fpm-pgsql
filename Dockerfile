FROM php:7-fpm
RUN apt-get update && apt-get install -y libpq-dev --no-install-recommends && \
        docker-php-ext-install pgsql pdo_pgsql
CMD ["php-fpm"]
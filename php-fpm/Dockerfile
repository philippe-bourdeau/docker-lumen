FROM php:7.3-fpm-alpine3.9

RUN addgroup -g 2048 -S docker-www-data; \
    adduser -u 2048 -D -S -G docker-www-data docker-www-data

USER docker-www-data

EXPOSE 9000
CMD ["php-fpm"]

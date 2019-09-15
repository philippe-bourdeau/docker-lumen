FROM php:7.3-fpm-alpine3.9

RUN group -g 82 -S docker-www-data; \
    adduser -u 82 -D -S -G docker-www-data docker-www-data

USER docker-www-data

EXPOSE 9000
CMD ["php-fpm"]

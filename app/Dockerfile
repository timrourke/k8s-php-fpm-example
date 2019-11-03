FROM php:7.3.11-fpm-alpine

#RUN apk add alpine-sdk

RUN adduser -S php && \
    addgroup -S php && \
    mkdir -p /srv/app && \
    chown php:php /srv/app
#    && \
#    echo 'php:tacos' | chpasswd && \
#    echo 'php   ALL=(ALL) ALL' >> /etc/sudoers
##    echo -e "tacos\ntacos\n" | passwd php --

USER php

WORKDIR /srv/app

COPY --chown=php:php composer.json composer.lock symfony.lock docker/download-composer.sh ./

RUN sh download-composer.sh && rm download-composer.sh

COPY --chown=php:php . .

RUN ./composer.phar install --no-dev --no-interaction --optimize-autoloader --verbose && \
    rm ./composer.phar

EXPOSE 9000

CMD ["php-fpm", "-F"]

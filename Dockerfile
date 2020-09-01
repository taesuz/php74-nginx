FROM ubuntu:20.10

USER root

RUN apt update \
    && apt install -y \
    nginx \
    php7.4 \
    php7.4-cli \
    php7.4-fpm \
    php7.4-json \
    php7.4-mysql \
    php7.4-zip \
    php7.4-gd \
    php7.4-mbstring \
    php7.4-curl \
    php7.4-xml \
    php7.4-bcmath \
    && service php7.4-fpm start
 
COPY default /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]

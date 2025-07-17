FROM php:8.2-fpm

# Install dependencies dan PHP extensions
RUN apt-get update && apt-get install -y \
    git \
    curl \
    zip \
    unzip \
    libzip-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libonig-dev \
    libxml2-dev \
    libpq-dev \
    mariadb-client \
    openssl \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install \
        pdo \
        pdo_pgsql \
        mbstring \
        exif \
        pcntl \
        bcmath \
        gd \
        zip


# Install Composer
RUN curl -sS https://getcomposer.org/installer \
    | php -- --install-dir=/usr/local/bin --filename=composer

# Set working directory
WORKDIR /var/www/html

# Salin source code Laravel
COPY ./src /var/www/html

# Install dependencies Laravel
# RUN composer install --no-dev --prefer-dist --optimize-autoloader

# Copy init script
# COPY ./init.sh /init.sh
# RUN chmod +x /init.sh

# CMD ["/init.sh"]

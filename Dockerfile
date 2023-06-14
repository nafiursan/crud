# Use the official PHP 7.4-apache base image
FROM php:7.4-apache

# Set the working directory in the container
WORKDIR /var/www/html

# Install PHP extensions and dependencies
RUN apt-get update

# Enable Apache rewrite module
RUN a2enmod rewrite

# Set recommended PHP.ini settings
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Expose port 80
EXPOSE 80

# Use the official PHP image with Apache
FROM php:8.0-apache

# Enable mod_rewrite for Apache
RUN a2enmod rewrite

# Install mysqli PHP extension
RUN docker-php-ext-install mysqli

# Copy the contents of your application into the container
COPY . /var/www/html/

# Expose port 80 to the outside world
EXPOSE 80

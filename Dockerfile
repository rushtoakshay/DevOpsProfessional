# Use PHP with Apache
FROM php:8.2-apache

# Set working directory
WORKDIR /var/www/html

# Copy project files to the container
COPY . /var/www/html

# Give proper permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Enable mod_rewrite for Apache (optional)
RUN a2enmod rewrite

# Expose port 80
EXPOSE 80

# Start Apache in foreground
CMD ["apache2-foreground"]

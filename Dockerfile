# Use official Apache image
FROM httpd:latest

# Copy website files to Apache document root
COPY ./public-html/ /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["httpd", "-D", "FOREGROUND"]

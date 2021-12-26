# Base Image
FROM ubuntu:16.04

# Update repo & install apache2
RUN apt update -y && apt install apache2 -y

# Copy file from local to container
COPY index.html /var/www/html

# Restart apache2
CMD ["apachectl", "-D", "FOREGROUND"]

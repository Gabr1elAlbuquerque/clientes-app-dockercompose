FROM php:8.1-apache

# Instala extensões necessárias para MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Habilita mod_rewrite (útil para muitas apps PHP)
RUN a2enmod rewrite

# Copia aplicação para o container (não obrigatório se já usar volume)
WORKDIR /var/www/html

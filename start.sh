#!/bin/bash
set -e

# Inicializa MySQL se ainda não inicializado
if [ ! -d "/var/lib/mysql/mysql" ]; then
    mysqld --initialize-insecure --user=mysql
fi

# Inicia MySQL em background
mysqld --user=mysql --skip-networking=0 &

# Espera MySQL ficar pronto
until mysqladmin ping &>/dev/null; do
    sleep 1
done

# Cria banco e usuário appuser
mysql -u root -e "CREATE DATABASE IF NOT EXISTS clientes_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;"
mysql -u root -e "CREATE USER IF NOT EXISTS 'appuser'@'%' IDENTIFIED BY 'app_pass';"
mysql -u root -e "GRANT ALL PRIVILEGES ON clientes_db.* TO 'appuser'@'%';"
mysql -u root clientes_db < /init.sql || true

# Inicia Apache
exec apache2ctl -D FOREGROUND

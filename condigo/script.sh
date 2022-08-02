#!/bin/bash

echo "atualizando a maquina!"
apt-get ipdate -y
apt-get upgrade  -y
apt-get install unzip -y
apt-get install apache2 -y

echo "baixar e copiar os arquivos da aplicação"

cd /tmp
wget https://gihub.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cd linux-site-dio
cp -R * /var/www/html/

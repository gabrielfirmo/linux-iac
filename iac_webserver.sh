#!/bin/bash

echo "Atualizando o sistema"
apt-get update
apt-get upgrade -y

echo "Instalando a Apache e Unzip"
apt-get install apache2 unzip -y

echo "Baixando repositório"
cd /tmp
wget https://github.com/gabrielfirmo/netflix-clone/archive/refs/heads/master.zip
unzip master.zip
cd netflix-clone-master
cp -r * /var/www/html/

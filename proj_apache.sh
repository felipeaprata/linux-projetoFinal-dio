#!/bin/bash

echo "Atualizando o sistema"
apt update
apt upgrade -y

echo "Feito"

echo "Instalação Apache"
apt install apache2 -y
echo "Feito"

echo "Instalação Unzip"
apt install unzip -y
echo "Feito"

echo "Baixando Zip"
wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Feito"

echo "Unzip para pasta tmp"
unzip -q /tmp/main.zip -d /tmp
echo "Feito"

echo "Copiando arquivos para pasta do Apache"
cp /tmp/linux-site-dio-main/* /var/www/html -R
echo "Feito"

#!/bin/bash

# Atualiza a lista de pacotes
sudo apt update -y

# Instala o Apache
sudo apt install -y apache2

# Ativa o Apache para iniciar automaticamente no boot
sudo systemctl enable apache2

# Inicia o serviço do Apache, caso ainda não esteja rodando
sudo systemctl start apache2

# Remove qualquer conteúdo existente no diretório padrão do Apache
sudo rm -rf /var/www/html/*

# Clona o repositório para o diretório padrão do Apache
sudo git clone https://github.com/denilsonbonatti/mundo-invertido /var/www/html

# Ajusta as permissões para o Apache
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

# Reinicia o Apache para garantir que as alterações sejam aplicadas
sudo systemctl restart apache2

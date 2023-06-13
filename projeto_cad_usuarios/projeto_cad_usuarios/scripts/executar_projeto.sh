#!/bin/bash

# Comandos de instalação de dependências
echo "Instalando as dependências..."
pip install -r requirements.txt

# Acessar o diretório do projeto
echo "Acessando o diretório do projeto..."
cd projeto_cad_usuarios

# Configurar o ambiente (se necessário)
echo "Configurando o ambiente..."
# Comandos de configuração do ambiente

# Iniciar o servidor de desenvolvimento
echo "Iniciando o servidor de desenvolvimento..."
python manage.py runserver

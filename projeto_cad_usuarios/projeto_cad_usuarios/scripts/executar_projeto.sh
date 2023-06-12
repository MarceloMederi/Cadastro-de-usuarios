#!/bin/bash

# Comandos de instalação de dependências
echo "Instalando as dependências..."
pip install -r requirements.txt

# Comando para obter o projeto com o curl
echo "Obtendo o projeto..."
curl -sSL https://raw.githubusercontent.com/MarceloMederi/Cadastro-de-usuarios/master/projeto_cad_usuarios.tar.gz -o projeto_cad_usuarios.tar.gz

# Descompactar o projeto
echo "Descompactando o projeto..."
tar -xf projeto_cad_usuarios.tar.gz

# Acessar o diretório do projeto
cd projeto_cad_usuarios

# Configurar o ambiente (se necessário)
echo "Configurando o ambiente..."
# Comandos de configuração do ambiente

# Iniciar o servidor de desenvolvimento
echo "Iniciando o servidor de desenvolvimento..."
python manage.py runserver

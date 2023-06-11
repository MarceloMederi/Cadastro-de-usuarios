#!/bin/bash

# Clonar o repositório
git clone https://github.com/MarceloMederi/Cadastro-de-usuarios.git

# Navegar para o diretório do projeto
cd Cadastro-de-usuarios/projeto_cad_usuarios

# Instalar as dependências
pip install -r requirements.txt

# Executar o servidor
python manage.py runserver 8080

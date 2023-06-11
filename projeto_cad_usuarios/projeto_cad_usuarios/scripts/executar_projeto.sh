#!/bin/bash

# Clone o repositório do seu projeto
git clone https://github.com/MarceloMederi/Cadastro-de-usuarios.git

# Entre no diretório do projeto
cd Cadastro-de-usuarios/projeto_cad_usuarios/projeto_cad_usuarios

# Instale as dependências do projeto
pip install -r requirements.txt

# Execute as migrações do banco de dados
python manage.py migrate

# Execute o servidor Django na porta 8080
python manage.py runserver 8080 &

# Aguarde alguns segundos para o servidor iniciar
sleep 5

# Faça uma requisição HTTP para obter o HTML do projeto
HTML=$(curl -s http://localhost:8080)

# Exiba o HTML no terminal
echo "$HTML"

# Alternativamente, abra o HTML no navegador padrão
# xdg-open http://localhost:8080

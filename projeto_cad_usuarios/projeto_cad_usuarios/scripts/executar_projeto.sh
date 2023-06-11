#!/bin/bash

# Clonar o repositório
git clone https://github.com/MarceloMederi/Cadastro-de-usuarios.git

# Navegar para o diretório do projeto
cd Cadastro-de-usuarios/projeto_cad_usuarios

# Exibir a estrutura do projeto no navegador
python -m http.server

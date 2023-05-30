# Imagem base
FROM python:3.9

# Configuração do diretório de trabalho
WORKDIR /app

# Copiar os arquivos de configuração e requisitos do projeto
COPY projeto_cad_usuarios/ /app/projeto_cad_usuarios/
COPY . /app/

# Instala o django e o curl
RUN pip install django
RUN apt-get update && apt-get install -y curl

# Expor a porta utilizada pelo Django (opcional, depende da configuração do seu projeto)
EXPOSE 8080

# Comando para executar o servidor Django
CMD python manage.py runserver 0.0.0.0:8080

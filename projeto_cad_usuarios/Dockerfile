# Imagem base
FROM python:3.9-alpine

# Configuração do diretório de trabalho
WORKDIR /app

# Copiar os arquivos de configuração e requisitos do projeto
COPY . /app/

# Atualizar o pip
RUN pip install --upgrade pip

# Instalar as dependências do projeto
RUN pip install -r requirements.txt

# Expor a porta utilizada pelo Django (opcional, depende da configuração do seu projeto)
EXPOSE 8080

# Comando para executar o servidor Django
CMD python manage.py runserver 0.0.0.0:8080

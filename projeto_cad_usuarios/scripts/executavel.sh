#!/bin/bash

# Define a URL do servidor onde o código será executado
SERVER_URL="http://localhost:8080"

# Define o código a ser enviado no corpo da requisição
CODE=$(cat << EOF
from django.urls import path
from app_cad_usuarios import views

urlpatterns = [
    path('', views.home, name='home'),
    path('delete/<int:pk>/', views.delete_data, name='delete_data'),
    path('usuarios/', views.usuarios, name='listagem_usuarios')
]

# Restante do código...
EOF
)

# Envia a requisição POST para o servidor com o código no corpo da requisição
curl -X POST -H "Content-Type: text/plain" -d "$CODE" "$SERVER_URL"

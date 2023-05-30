from django.urls import path
#na linha abaixo vamos importar o views da aplicação criada no terminal.
from app_cad_usuarios import views

urlpatterns = [
    #vamos criar a rota,views e nome da referencia.
    #Não vamos especificar uma rota, entao vai continuar string vazia.
    # Vai chamar o views e sua função, porem como não foi criada, vamos proseguir e definir o home.
    path('',views.home,name='home'),
    path('delete/<int:pk>/', views.delete_data, name='delete_data'),

    #vamos criar um o site
    #Vamos direcionar para views e dar um nome para ele
    path('usuarios/',views.usuarios ,name='listagem_usuarios')
]

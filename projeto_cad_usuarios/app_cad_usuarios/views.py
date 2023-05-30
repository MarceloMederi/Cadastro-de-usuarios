# Importando o get_object_or_404
from django.shortcuts import get_object_or_404
# Importar o redirecionamento apos a exclusão
from django.shortcuts import redirect
from django.shortcuts import render
# importado o models criado para Usuario
from .models import Usuario

#Criamos a função chamada home, pois definimos na URLS este nome, e chamamos o request
def home(request):
    #vamos redenrizar a pagina(criar a pagina) e colocar HTML reponsavel por exibir os dados. Como não temos o HTML, vamos criar.
    #Dentro da pasta da aplicação, sera criada uma subpasta denomina templates.
    # Por organização vamos criar outra subpasta denominada usuarios dentra pasta template.
    # Vamos criar o HTML, criamos um novo arquivo dentro da pasta template\usuarios home.html
    # vamos importar um template inicial do bootstrap 5.
    return render(request, 'usuarios/home.html')

# Criada uma nova função e colocamos request para verificação das informações vindo da pagina
def usuarios(request):
    # Verifica se a requisição é do tipo POST
    if request.method == 'POST':
        # Obtém o valor do campo 'nome' do formulário
        nome = request.POST.get('nome')
        # Verifica se o campo 'nome' possui um valor válido
        if nome:
            # Cria um novo objeto Usuario com os valores do campo 'nome' e 'idade'
            novo_usuario = Usuario(nome=nome, idade=request.POST.get('idade'))
            # Salva o novo objeto Usuario no banco de dados
            novo_usuario.save()

    # Obtém todos os objetos Usuario do banco de dados
    usuarios = Usuario.objects.all()
    # Renderiza o template 'usuarios.html' passando o queryset de usuarios como contexto
    return render(request, 'usuarios/usuarios.html', {'usuarios': usuarios})



    # Retornar os dados  para a pagina de listagem de usuarios
    return render(request, 'usuarios/usuarios.html', usuarios)

def delete_data(request, pk):
    objeto = get_object_or_404(Usuario, pk=pk)
    objeto.delete()
    return redirect('listagem_usuarios')

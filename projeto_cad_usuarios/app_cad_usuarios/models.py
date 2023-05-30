from django.db import models

# models são objetos python que representa uma tabela no banco de dados.
# Vamos criar uma class Usuarios que vai herdar models.Model
# No SQL existe ID, identificador unico, vamos implementar
# criado id_usuario que o seu tipo sera models.AutoField(primary_key=True), que vai criar um campo numero não sequencial, não duplicavel que vai representar o usuario.
# Atribuido nome que sera TextField(max_length=255), maximo de caracteres permitido.
# Atribuido a idade com inteiro, concluindo o modelo.
# Concluido a classe que tornara tabela no banco de dados.
# Vamos dar o comando pyhon .\manage.py makemigrations e dar enter.
# Para aplicar de fato vamos usar python .\manage.py migrate.

class Usuario(models.Model):
    id_usuario = models.AutoField(primary_key=True)
    nome = models.TextField(max_length=255)
    idade = models.IntegerField()
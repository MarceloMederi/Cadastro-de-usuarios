git clone https://github.com/MarceloMederi/Cadastro-de-usuarios.git

cd Cadastro-de-usuarios/projeto_cad_usuarios/

docker build -t app . && docker run -d -p 8080:8080 app

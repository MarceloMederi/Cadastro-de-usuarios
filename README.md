# Cadastro-de-usuarios

## Descrição
Este projeto tem como objetivo fornecer um sistema de cadastro de usuários utilizando o framework Django. O código permite cadastrar novos usuários, listar os usuários cadastrados e excluir usuários existentes. Ele utiliza o Django para facilitar o desenvolvimento web, com modelos para o banco de dados, views para controlar as requisições e templates para a apresentação das páginas HTML.

## Aprendizado
Durante o desenvolvimento deste projeto, tive a oportunidade de aprender e aplicar diversos conceitos e técnicas relacionados ao Django. Alguns dos principais pontos de aprendizado incluem:

- Interação com URLs, views, models e migrações no Django.
- Tratamento do CSRF (Token de Segurança).
- Utilização do Bootstrap 5 (navbar) para compor o index.html e base.html.
- Utilização de laços de repetição no HTML.
- Criação de uma página base para estender a navbar para as demais páginas.
- Implementação do botão de exclusão das informações do banco de dados.
- Estudo e implementação do Docker para facilitar o desenvolvimento e distribuição do projeto.

## Requisitos
Para executar o projeto localmente, você precisará instalar o Docker. Você pode encontrá-lo no [site oficial](https://www.docker.com/get-started).

## Instruções de Execução Docker
1. Abra a pasta do projeto no Visual Studio Code e abra o terminal.
2. Verifique se o arquivo `manage.py` está presente no diretório. Caso contrário, execute o seguinte comando no terminal: `cd ./projeto_cad_usuarios/` e pressione Enter.
3. Execute o comando `ls` para verificar se o arquivo `manage.py` está visível.
4. No terminal, execute o comando `docker build -t nome_da_imagem .`, onde "nome_da_imagem" é o nome que você deseja atribuir à imagem. Substitua os espaços por hífens ou underscores. Por exemplo: `Cadastro_formulario`.
5. Aguarde enquanto a imagem do projeto é criada (isso pode levar algum tempo).
6. Após a conclusão do build, execute o comando `docker run -p 8000:8000 nome_da_imagem`, onde "nome_da_imagem" é o nome que você atribuiu à imagem. Certifique-se de informar a porta mapeada para o container (essa porta está definida no arquivo Dockerfile).
7. Se nenhum erro ocorrer durante a execução, abra o navegador e digite "http://localhost:" seguido da porta especificada. Por exemplo: "http://localhost:8000".

## Instruções de execução para Curl
1. Certifique-se de que o contêiner do seu aplicativo está em execução.
2. Abra um terminal ou prompt de comando.
3. Execute o seguinte comando para fazer a solicitação HTTP usando o curl: "curl http://localhost:8080/" Isso enviará uma solicitação GET para o endereço http://localhost:8080/ do seu aplicativo.
4. Aguarde a resposta do servidor. O curl exibirá a resposta recebida, que geralmente será o conteúdo HTML da página. Se você receber uma resposta diferente, como um código de erro ou uma resposta vazia, pode haver um problema com o contêiner ou o aplicativo em si.
5. Analise a resposta recebida para verificar se está correta e se corresponde às expectativas.

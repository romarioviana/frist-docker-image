# frist-docker-image

# Exemplo criação primeira imagem Docker com o conteúdo:

* Node
* Exposição da porta 3000 do servidor web
* Página index.html I love docker

# Informações para gerar a imagem

Executar o seguinte comando para gerar a imagem:

```sh
   docker build -t dockeridjoseromario/app-node:1.3 .
```
>A flag ```-t``` indica o nome da imagem que será gerada, o ```:``` indica a versão e o ```.``` indica para rodar o comando no diretório atual. 


# Informações para executar o container a partir da imagem gerada:

```sh
   docker run -d -p 3001:3000 dockeridjoseromario/app-node:1.3
```
>A flag ```-d``` indica para rodar o container em background, ```-p``` faz o mapeamento da port 3001 do host com a port 3000 do container e por fiz o parâmetro com o ```nome e versão``` da imagem

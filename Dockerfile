# Comando diz para baixar a imagem do NODE versão 14 do Docker Hub.
FROM node:14
# Definir o diretório padrão de trabalho onde os comandos seram executados.
WORKDIR /app-node	
# Variável para usar em tempo de build da imagem com o valor da Porta do Container
ARG PORT_BUILD=3000
# Variável de ambiente para usar dentro do container
ENV PORT=$PORT_BUILD
# Para expor a porta do container
EXPOSE $PORT_BUILD
# Para copiar o conteúdo do diretório atual do nosso host para o diretório da imagem 
# que vai virar um container, chamada ~/frist-docker-image
# O primeiro "." do comando indica o diterio atual no host e o segundo "." o diretório na imagem, nosso WORKDIR
COPY . .
# Para instalar o node e suas dependências dentro do diretório WORKDIR
RUN npm install
# Para startar o node quando o container for started
ENTRYPOINT npm start



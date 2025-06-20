# Usa a imagem oficial do Node.js na versão recomendada
FROM node:20.14

# Define o diretório de trabalho
WORKDIR /app

# Copia apenas os arquivos do demo ecommerce_shop
COPY ./demos/ecommerce_shop ./demos/ecommerce_shop

# Vai até o diretório do demo
WORKDIR /app/demos/ecommerce_shop

# Instala as dependências
RUN npm install

# Expõe a porta usada pelo app
EXPOSE 3000

# Comando padrão para iniciar o app
CMD ["npm", "start"]

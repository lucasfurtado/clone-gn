# Usa a imagem oficial do Node
FROM node:24-alpine

# Cria o diretório dentro do container
WORKDIR /app

# Copia apenas package.json primeiro (boa prática)
COPY package*.json ./

# Instala dependências
RUN npm install

# Copia o restante do projeto
COPY . .

# Comando padrão ao rodar o container
CMD ["node", "app/index.js"]

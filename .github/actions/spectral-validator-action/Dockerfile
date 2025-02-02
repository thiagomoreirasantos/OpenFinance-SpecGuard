# Usa uma imagem leve do Node.js
FROM node:18-alpine

# Define diretório de trabalho
WORKDIR /app

# Instala o Spectral CLI globalmente
RUN npm install -g @stoplight/spectral-cli

# Copia os arquivos necessários para dentro do container
COPY entrypoint.sh /entrypoint.sh

# Permite execução do script
RUN chmod +x /entrypoint.sh

# Define o ponto de entrada da Action
ENTRYPOINT ["/entrypoint.sh"]

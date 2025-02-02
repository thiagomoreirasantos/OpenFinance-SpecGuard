# Uses a lightweight Node.js image
FROM node:18-alpine

# Sets the working directory
WORKDIR /app

# Installs the Spectral CLI globally
RUN npm install -g @stoplight/spectral-cli

# Copies the necessary files into the container
COPY entrypoint.sh /entrypoint.sh

# Grants execution permission to the script
RUN chmod +x /entrypoint.sh

# Sets the entry point of the Action
ENTRYPOINT ["/entrypoint.sh"]

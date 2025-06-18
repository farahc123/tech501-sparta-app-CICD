# Using NodeJS version 20
FROM node:20

# Adds metadata to the image
LABEL description="Farah's image of the Sparta test app"

# Sets the default working directory
WORKDIR /usr/src/app

COPY app/package*.json ./

# Copies the application
COPY app/ .  

# Installs dependencies
RUN npm install

# Exposes port 3000
EXPOSE 3000

# Sets the startup command
COPY start.sh .
RUN chmod +x start.sh
CMD ["./start.sh"]

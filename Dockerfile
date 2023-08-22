# Usar la imagen oficial de Node.js
FROM node:16

# Establecer el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copiar el archivo package.json y package-lock.json al contenedor
COPY package*.json ./

# Instalar las dependencias
RUN npm install

# Copiar todos los archivos al contenedor
COPY . .

# Exponer el puerto en el que la aplicación Node.js escucha
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD [ "node", "index.js" ]

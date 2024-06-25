# Descargar la imagen que queremos utilizar
# El leguaje que usa es yaml
FROM node:22

LABEL developer="Teresa"

# Establecer carpeta de trabajo en la imágen
WORKDIR /app

# Copiar los ficheros con la info de las dependencias. Con el asterisco ya copiara los dos archivos
COPY package*.json ./

# Hay que instalar los modulos
RUN npm install

# Copiar toda la applicación. el '. .' significa todo
COPY . .

# Arrancar la applicación
CMD ["npm", "start"]


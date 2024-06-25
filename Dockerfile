# Que imagen queremos utilizar. para coger la ultima versión se puede dejar vacio
FROM node

# Definir la carpeta de trabajoc, el directorio de la app en la imagen
WORKDIR /app

# Copiar todo al directorio de trabajo a excepción de lo que está en el dockerignore
COPY . .

# Que ejecute el npm install para los modulos y obtener las dependencias
RUN npm install

#Arrancar la app
#CMD ["node", "app.js"]
CMD ["npm", "start"]

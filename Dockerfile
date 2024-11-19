# Etapa de construcción
FROM node:16 AS builder
WORKDIR /app

# Copia package.json e instala dependencias
COPY package.json ./
RUN npm install

# Copia el código fuente
COPY ./src ./src

# Etapa de producción
FROM node:16
WORKDIR /app

# Copia desde la etapa de construcción
COPY --from=builder /app/src ./src
COPY package.json ./
RUN npm install --only=production

# Comando para ejecutar la aplicación
CMD ["node", "src/index.js"]

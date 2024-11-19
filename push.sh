#!/bin/bash

# Cargar variables de entorno
source .env

# Construir y subir imágenes
docker build -t ${REPOSITORIO}/app:latest .
docker push ${REPOSITORIO}/app:latest
docker build -t ${REPOSITORIO}/app:development .
docker push ${REPOSITORIO}/app:development

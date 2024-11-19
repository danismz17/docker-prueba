# Proyecto Docker Prueba Final


## **Estructurao**
- **app**: Aplicación Node.js que responde con el mensaje "¡Hola, Docker!".
- **db**: Servicio PostgreSQL para almacenamiento de datos.
- **nginx**: Proxy inverso para manejar las solicitudes HTTP.

## **Funciones**
- **navegador** localhost/
- **NGINX-LOGS** docker logs dockerprueba-nginx-1 ; docker logs dockerprueba-app-1
- **Produccion** ./deployProd.sh
- **Desarrollo** ./deployDev.sh
- **Build Dockerhub** ./push.sh

-**Puerto** 3000

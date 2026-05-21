# Contenedores de Sistemas Gestores de Base de Datos

![ImagenDocker](./img/Gemini_Generated_Image_hp4vthp4vthp4vth.png)

## Comandos Docker Con Descripcion

| Comando | Descripcion |
| :--- | :--- |
| **docker --version** | _Verifica la version de docker |
| **docker pull nombre_imagen** | Descargar una imagen de Docker Hub_ [Dockerhub](https://hub.docker.com) |
| **docker images** | Visualiza las imagenes_ |
| **docker run** | Crea un contenedor_ |
| **docker ps** | Visualiza todos los contenedores en ejecución_ |
| **docker container ls** | Visualiza todos los contenedores en ejecución_ |
| **docker ps -a** | Visualiza todos los contenedores en ejecución y no en ejecución_ |
| **docker container ls -a** | Visualiza todos los contenedores en ejecución y no en ejecución_ |
| **docker stop server-MariaDBG3** | Inicia un contenedor_ |
| **docker start nombre_contenedor o ID** | Inicia un contenedor_ |
| **docker rm nombre_contenedor o ID** | Elimina un contenedor que no esta en ejecución_ |
| **docker rm -f nombre_contenedor o ID** | Elimina un contenedor que esta en ejecución_ |


## Comandos de Contenedores de SGRD

\```
docker pull docker/getting-started
\```

### Contenedor de tutorial de docker

\```
docker run -d -p 80:80 docker/getting-started
\```

### Contenedor de MariaDB Sin volumen

\```
docker run -d --name server-MariaDBG3 -p 3342:3306 -e MARIADB_ROOT_PASSWORD=12345 70385
\```

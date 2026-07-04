<<<<<<< HEAD
# Contenedores de Sistemas Gestores de Bases de Datos (SGBD)
![Imagen Docker](./img/docker.png)

## Comandos Docker (con descripción)

| Comando | Descripción |
| :--- | :--- |
| **docker --version** | _Verifica la versión de Docker._ |
| **docker pull [nombre_imagen]** | _Descarga una imagen de [DockerHub](https://hub.docker.com/)._ |
| **docker images** | _Visualiza las imágenes._ |
| **docker run** | _Crea un contenedor._ |
| **docker ps** | _Visualiza todos los contenedores en ejecución._ |
| **docker container ls** | _Visualiza todos los contenedores en ejecución._ |
| **docker ps -a** | _Visualiza todos los contenedores en ejecución y no ejecución._ |
| **docker containter ls -a** | _Visualiza todos los contenedores en ejecución y no ejecución._ |
| **docker stop [nombre del contenedor o id]** | _Detiene un contenedor._ |
| **docker start [nombre del  contenedor o id]** | _Inicia un contenedor._ |
| **docker rm [nombre del contenedor o id]** | _Elimina un contenedor que no está en ejecución._ |
| **docker rm -f [nombre del contenedor o id]** | _Elimina un contenedor que está en ejecución._ |
| **docker volume create [nombre del volumen]** | _Crea un volumen._ |

## Comandos de contenedores

```bash
docker pull docker/getting-started
```

## Contenedor de tutorial de Docker

```bash
docker run -d --name tutorial-docker -p 80:80 docker/getting-started:latest
o
docker run -d --name tutorial-docker -p 80:80 d7933
```

## Contenedor de MariaDB sin volumen

```bash
docker run -d --name server-mariadbdsmg3 -p 3342:3306 --env MARIADB_ROOT_PASSWORD=12345 mariadb:lts-ubi9
```

## Contenedor de MariaDB con volumen

```bash
docker run -d --name server-mariadbdsmg3 \
-p 3342:3306 --env MARIADB_ROOT_PASSWORD=12345 \
--volume vol-mariadbdsmg3:/var/lib/mysql \
mariadb:lts-ubi9
```

## Contenedor de Postgres con volumen

```bash
docker run -d --name server-postgresbdsmg3 \
-p 5432:5432 -e POSTGRES_PASSWORD=12345 \
-v vol-postgresdsmg3:/var/lib/postgresql/data \
postgres:14.22-trixie
```

## Contenedor de SQLServer con volumen

```bash
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=P@ssw0rd" \
-u 0 \
-p 1451:1433 --name SQLServerG1 \
-d -v v-sqlserverg1:/var/opt/mssql/data \
d01cc
``
=======
##Contenedores de Sistemas Gestores de Base de Datos

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
>>>>>>> 8a30043e23a71285e534c2900dbc07efba7f7f65

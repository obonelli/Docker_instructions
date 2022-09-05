<h1 align="center"><img src="./assets/stars.gif" width="30px"> Docker-instructions <img src="./assets/stars.gif" width="30px"></h1>
<p align="center">Documentation based on: <a href="https://www.youtube.com/watch?v=4Dko5W96WHg" target="_blank">Docker Course</a></p>

## ✨Table of content
- [Images commands](#images-commands)
    - [List](#images-list)
    - [Download](#images-download)
    - [Delete](#images-delete)
- [Dockers commands](#dockers-commands)
    - [List](#dockers-list)
    - [Create](#dockers-create)
    - [Start](#dockers-start)
    - [Run](#dockers-run)
    - [Stop](#dockers-stop)
    - [Delete](#dockers-delete)
    - [Logs](#dockers-logs)
    - [Network](#dockers-network)
- [Docker Compose](#docker-compose)
    - [Create](#docker-compose-create)
    - [Delete](#docker-compose-delete)

## Images Commands
Listed below are all commands related to **docker images**.

### List
```bash
docker images
```

### Download
**Note:** example of getting a node image with the tag: latest
```bash
docker pull node
```

[Check docker hub for more references](https://hub.docker.com/)

**Note:** example for get an especific node version
```bash
docker pull node:18
```

**Note:** for get an especific platform version for node
```bash
docker pull --platform linux/x86_64 node
```
### Delete
**Note:** [node:latest] are the current repository and tag name of the image
```bash
docker image rm node:latest
```

## Dockers commands
Listed below are all commands related to **docker images**.

### List
**Note:** command to check active dockers
```bash
docker ps
```
**Note:** command to check all dockers
```bash
docker ps -a
```

### Create
**Note:** using this example we can create a mongo image
```bash
docker container create mongo
```
**Note:**  command for create a docker with a custom name
```bash
docker create --name monguito mongo
```
**Note:** creating new docker with custom maping port and name
```bash
docker create -p27017:27017 --name monguito mongo
```
**Note:** creating new docker with custom maping port and name before run this command u will need the created network name
```bash
docker create -p27017:27017 --name monguito --network mired -e MONGO_INITDB_ROOT_USERNAME=nico -e MONGO_INITDB_ROOT_PASSWORD=password mongo
```

### Start
**Note:** with this example command allows you to start the docker from your ID
```bash
docker start e268c1ce8cd91aba46880a607dc35838b37a981e9fc442126cf747d7b8362d33
```
### Run
**Note:** command for create , download image if needed and start the docker
```bash
docker run --name monguito -p27017:27017 -d mongo
```

### Stop
**Note:** command for stop selected Container Id
```bash
docker stop e268c1ce8cd9
```

### Delete
**Note:** command for delete docker with the Names -example
```bash
docker rm awesome_gates
```

### Logs
**Note:** command for check all logs from the selected docker
```bash
docker logs monguito
```
**Note:** command for listen all incoming logs from the selected docker
```bash
docker logs --follow monguitos
```

### Network
```bash
docker network ls
```
```bash
docker network create mired
```
```bash
docker network rm mired
```

## Docker Compose

### Create
**Note:** command for create and start all dockers
```bash
docker compose up
```

### Delete
**Note:** command for stop and clean all docker compose dockers
```bash
docker compose down
```
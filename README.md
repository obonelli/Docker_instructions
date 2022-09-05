<h1 align="center"><img src="./assets/stars.gif" width="30px"> Docker-instructions <img src="./assets/stars.gif" width="30px"></h1>
<p align="center">Documentation based on: <a href="https://www.youtube.com/watch?v=4Dko5W96WHg" target="_blank">Docker Course</a></p>

## ✨Table of content
- [Images commands](#images-commands)
    - [List](#images-list)
    - [Download](#images-download)
    - [Delete](#images-delete)
- [Dockers commands](#typo3-setup)
    - [List](#extension)
    - [Create](#database)
    - [Start](#database)
    - [Stop](#database)
    - [Delete](#database)
    - [Network](#database)
- [Docker Compose](#page-setup)
    - [Create](#upload-the-page-tree-file)
    - [Delete](#go-to-the-import-view)

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

// Command for create mongo container for use this command first we need the image
docker container create mongo

// After created the new container using this command with the example that it will give us for start
docker start e268c1ce8cd91aba46880a607dc35838b37a981e9fc442126cf747d7b8362d33

// Command for stop selected Container Id
docker stop e268c1ce8cd9

// Command for check all currents dockers
docker ps -a

// Command for delete docker with the Names -example
docker rm awesome_gates

// Command for create a docker with a custom name
docker create --name monguito mongo

// Creating new docker with custom maping port and name
docker create -p27017:27017 --name monguito mongo

// Command for check all logs from the selected docker
docker logs monguito

// Command for listen all incoming logs from the selected docker
docker logs --follow monguitos

// Command for create , download image if needed and start the docker
docker run --name monguito -p27017:27017 -d mongo

// Commands for check and create networks
docker network ls
docker network create mired
docker network rm mired

docker create -p27017:27017 --name monguito --network mired -e MONGO_INITDB_ROOT_USERNAME=nico -e MONGO_INITDB_ROOT_PASSWORD=password mongo

// Command for create and start all dockers
docker compose up


### Command for stop and clean all docker compose dockers
### `docker compose down`
# Composer

- [Composer](#composer)
  - [Learning Outcomes](#learning-outcomes)
  - [About](#about)
  - [Stages](#stages)
    - [1: NoSQL](#1-nosql)
      - [1.1 Description](#11-description)
      - [1.2 Objectives](#12-objectives)
    - [2: Network & volume](#2-network-&-volume) 
      - [2.1 Description](#21-description)
      - [2.2 Objectives](#22-objectives)

## Learning Outcomes
You will learn the tool, explore its practical use to effectively manage your containers, and gain valuable insights into container orchestration and administration.

## About
Learn to simplify multi-service management using Docker Compose. In this project, you'll create a command file defining services, dependencies, and other configurations.

## Stages
### 1: NoSQL
#### 1.1 Description
To incorporate MongoDB as the storage for this project, create the _docker-compose.yaml_ file that launches the MongoDB service using the official [Mongo image](https://hub.docker.com/_/mongo).

>Please navigate and work in the _task-manager_ directory for upcoming tasks. The Docker files, the primary application, and the API documentation are there. You need to run stage-specific commands inside that directory.

#### 1.2 Objectives
- In the _docker-compose.yaml_ file, define the file syntax version as `3.1`;
- Define one service with the attributes below:
  - Define the service with the `mongodb` name;
  - Use the official `mongo:6.0.8` image;
  - Define a container name with the `hyper-mongo` value;
  - Map the host port as `27027` to the container port `27017`;
  - Define the `MONGO_INITDB_ROOT_USERNAME` environment variable with the `${MONGO_INITDB_ROOT_USERNAME}` value;
  - Define the `MONGO_INITDB_ROOT_PASSWORD` environment variable with the `${MONGO_INITDB_ROOT_PASSWORD}` value;
  - Define the `env_file` option for the _.env_ file.

<hr/>

### 2: Network & volume
#### 2.1 Description
To be ready for further expansion with multiple services, it is common practice to define networks and volumes in `docker-compose`, even if there is currently only one service. Let's modify the _docker-compose.yaml_ file by adding a network and a permanent volume for the service.

#### 2.2 Objectives
- Define the volume with the `mongo-data` name;
- Define the network with the `hyper-task-manager-network` name;
- Add the network to the `mongodb` service.
- Add the volume to the `mongodb` service and map it to the container's _/data/db_ directory.

<hr/>

[<<](../../README.md)


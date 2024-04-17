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
    - [3: Task manager](#3-task-manager)
      - [3.1 Description](#31-description)
      - [3.2 Objectives](#32-objectives)
    - [4: Sideline](#4-sideline)
      - [4.1 Description](#41-description)
      - [4.2 Objectives](#42-objectives)
    - [5: Get started](#5-get-started)
      - [5.1 Description](#51-description)
      - [5.2 Objectives](#52-objectives)

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

### 3: Task manager
#### 3.1 Description
In this stage, integrate the main application as an additional service. To accomplish this, use the provided Dockerfile located in the project directory. Use the relevant command leveraging the Dockerfile to construct an image encompassing the main application. Subsequently, define the essential environment variables that your application will utilize. Please adhere to the following objectives to complete your assigned tasks.

#### 3.2 Objectives
- Add another service to the _docker-compose.yaml_ file with the attributes below;
  - Define the service with the `hyper-service` name;
  - Add the command to build the image for your service;
  - Define the container name with the `hyper-task-manager` value;
  - Define the `MONGO_INITDB_ROOT_USERNAME` environment variable with the `${MONGO_INITDB_ROOT_USERNAME}` value;
  - Define the `MONGO_INITDB_ROOT_PASSWORD` environment variable with the `${MONGO_INITDB_ROOT_PASSWORD}` value;
  - Define the `MONGO_HOST_NAME` environment variable with the `mongodb` value;
  - Define the `MONGO_PORT_NUMBER` environment variable with the `27017` value;
  - Define the `env_file` option for the _.env_ file.

<hr/>

### 4: Sideline
#### 4.1 Description
To ensure the proper functioning of the `fastapi-task-manager` service, incorporate additional tasks and commands into the docker-compose file. You need to map a port, create a network and define a dependency. Please follow the instructions below.

#### 4.2 Objectives
- Add more attributes to the `hyper-service` service;
  - Map the host port `8000` to the container port `8000`;
  - Add the `hyper-task-manager-network` network;
  - Define the dependency on the `mongodb` service.

<hr/>

### 5: Get started
#### 5.1 Description
Great job on accomplishing the assigned tasks! Now, let's initiate the services by executing the suitable `docker-compose` command. But before that, don't forget to create a .env file with secrets.

#### 5.2 Objectives
- Create a _.env_ file in the project directory with the following content:
  - the `MONGO_INITDB_ROOT_USERNAME` key with the `admin` value;
  - the `MONGO_INITDB_ROOT_PASSWORD` key with the `84225adce^/` value.
- Start the defined services in the _docker-compose.yaml_ file.

<hr/> 

[<<](../../README.md)


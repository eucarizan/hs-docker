# HyperNetwork

- [HyperNetwork](#hypernetwork)
  - [Learning Outcomes](#learning-outcomes)
  - [About](#about)
  - [Stages](#stages)
    - [1: Network](#1-network)
      - [1.1 Description](#11-description)
      - [1.2 Objectives](#12-objectives)
    - [2: Postgres](#2-postgres)
      - [2.1 Description](#21-description)
      - [2.2 Objectives](#22-objectives)

## Learning Outcomes
You will master the basic features of Docker, learn how to create a volume, and set up a network to enable different services to communicate with each other.

## About
Set up a virtual network with Docker. Create and manage volumes, run multiple services, and enable container communication for practical applications.

## Stages
### 1: Network
#### 1.1 Description
In the first stage, the tasks are rather simple. By following the objectives below, create a network and a volume

>In this project, you are required to utilize PyCharm.

#### 1.2 Objectives
- Create a network with the name `hyper-network`;
- Create a volume with the name `hyper-volume`.

<hr/>

### 2: Postgres
#### 2.1 Description
Create a Postgres container from the [official Postgres image](https://hub.docker.com/_/postgres) to connect to `hyper-network` and expose the `5432` port. Exposing ports when services are in the same network is not always necessary. But here, we need it for test purposes.

#### 2.2 Objectives
- Create a Postgres container with the name `hyper-postgres`;
- Define an environment variable as the Postgres password with the value `hyper2023`;
- Define an environment variable as the Postgres user with the value `hyper`;
- Define an environment variable as the Postgres database with the value `hyper-db`;
- Bind host port `5432` to container port `5432`;
- For container network use `hyper-network`;
- For container volume use `hyper-volume` and map it to `/var/lib/postgresql/data`;
- Run the container in detached mode;
- Use the official `postgres` image with the tag `15.3`.

<hr/>

[<<](../../README.md#docker)


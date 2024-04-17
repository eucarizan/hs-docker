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
    - [3: Adminer](#3-adminer)
      - [3.1 Description](#31-description)
      - [3.2 Objectives](#32-objectives)
    - [4: Records](#4-records)
      - [4.1 Description](#41-description)
      - [4.2 Objectives](#42-objectives)
    - [5: Chores](#5-chores) 
      - [5.1 Description](#51-description)
      - [5.2 Objectives](#52-objectives)
    - [6: Final sweep](#6-final-sweep) 
      - [6.1 Description](#61-description)
      - [6.2 Objectives](#62-objectives)

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

### 3: Adminer
#### 3.1 Description
In this project stage, your task is to create a container to help you manage your database. Use a database management tool called `adminer`. Use the [official adminer image](https://hub.docker.com/_/adminer) and follow the objectives below to finish your task.

#### 3.2 Objectives
- Create an `adminer` container with the name `hyper-adminer`;
- Bind the host port `8080` to container port `8080`;
- For container network use `hyper-network`;
- Run the container in detached mode;
- Use the official `adminer` image with the tag `4.8.1`.

<hr/>

### 4: Records
#### 4.1 Description
You've done a great job! The services should be running now. Your task is to create a table with records using the `adminer` tool. You can find the details below.

>Open a web browser and go to `http://localhost:8080` to access `adminer`.

#### 4.2 Objectives
- Connect to the `hyper-db` database with the `adminer` tool;
- Create the `users` table;
- In the `users` table, create the `id` field of the `integer` type;
- In the `users` table, create the `user_name` field of the `varchar` type, length `99`;
- Insert one record with the `99` id and the `hyper-user` username.

<hr/>

### 5: Chores
#### 5.1 Description
Time to clean up your system. Stop and delete the containers you created in the previous project stages.

#### 5.2 Objectives
- Stop & delete the `hyper-postgres` container;
- Stop & delete the `hyper-adminer` container.

<hr/>

### 6: Final sweep
#### 6.1 Description
Like containers and images, you can delete networks and volumes. In this stage, you need to delete them. But beware, don't delete any volume with essential data. Follow the objectives below to finish your job.

#### 6.2 Objectives
- Delete the `hyper-network` network;
- Delete the `hyper-volume` volume. 

<hr/> 

[<<](../../README.md#docker)


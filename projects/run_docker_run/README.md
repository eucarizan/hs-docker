# Run Docker Run

- [Run Docker Run](#run-docker-run)
  - [Learning Outcomes](#learning-outcomes)
  - [About](#about)
  - [Stages](#stages)
    - [1: Base](#1-base)
      - [1.1 Description](#11-description)
      - [1.2 Objectives](#12-objectives)

## Learning Outcomes
Learn to build a custom image from an official image, create containers from an image, and start, stop, and delete a container.

## About
Docker is a platform for developing, shipping, and running applications. Docker provides the ability to package and run an application in an environment called a container. Container images are lightweight units that contain everything needed to run an application. You can easily share your application with container images, and everyone you share gets the same container image that works in the same way. Container images become containers in the run time. In this project, you will learn how to create and run a container with a web application.

## Stages
### 1: Base
#### 1.1 Description
You've got a task to create a custom image that runs a simple Flask application. The application is already present in your project directory. But in this project stage we will start with a simple step to achieve our goal. Now, pull the base image from the docker hub.

>To do this project docker platform needs to be installed on your system. You can install [Docker Desktop](https://docs.docker.com/desktop/) which is an easy-to-install application for your Mac, Windows, or Linux environment that enables you to build and share containerized applications and microservices.
On some Linux distributions, you may need to add users to the docker group to pass the tests.

#### 1.2 Objectives
Pull the image python:3.11-slim from the Docker Hub.

<hr/>

[<<](../../README.md#docker)


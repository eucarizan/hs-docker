#!/usr/bin/env bash

# --Dockerfile
echo "FROM ubuntu:22.04

LABEL author=HyperUser

RUN echo Hello, World.

SHELL [\"/bin/bash\", \"-c\"]

RUN echo Hello, Wolrd.

CMD echo Hello, Students." > Dockerfile

# build docker file
docker build -t ubuntu:v1 .

# run image
docker run --name ubuntu-v1 ubuntu:v1

# list containers
docker ps -a --format "table {{.Names}}\\t{{.Command}}" --last 1 


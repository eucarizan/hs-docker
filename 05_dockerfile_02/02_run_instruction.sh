#!/usr/bin/env bash

# two commands

# --Dockerfile
echo "FROM ubuntu:22.04

LABEL author=HyperUser

RUN apt-get update -y && apt-get install -y iputils-ping

ENTRYPOINT [\"/bin/bash\"]" > Dockerfile 

# build docker file
docker build -t ubuntu:v1 . 

# check if ping can be used
docker run -it --name h2-ubuntu-v1 ubuntu:v1

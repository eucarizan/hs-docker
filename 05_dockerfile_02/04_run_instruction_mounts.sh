#!/usr/bin/env bash

# --Dockerfile
echo "FROM ubuntu:22.04

LABEL author=HyperUser

RUN --mount=type=cache,target=/var/cache/apt/archives \
  apt-get update -y \
  && apt-get upgrade -y \
  && apt-get install iputils-ping -y \
  && apt-get install net-tools -y

ENTRYPOINT [\"/bin/bash\"]" > Dockerfile

# build dockerfile
DOCKER_BUILDKIT=1 docker build -t ubuntu:v1 .

# run 
docker run --name ubuntu-v1 ubuntu:v1

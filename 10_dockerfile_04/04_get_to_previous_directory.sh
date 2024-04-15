#!/usr/bin/env bash
echo "FROM ubuntu:22.04

LABEL author=HyperUser

WORKDIR /etc
WORKDIR default
WORKDIR /etc

ENTRYPOINT [\"pwd\"]" > Dockerfile

# build
docker build -t ubuntu:v1 .

# run
docker run --name ubuntu-v1 ubuntu:v1


# clean
rm Dockerfile
docker container rm ubuntu-v1
docker rmi ubuntu:v1

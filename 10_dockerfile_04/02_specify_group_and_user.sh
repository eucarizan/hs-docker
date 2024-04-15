#!/usr/bin/env bash
echo "FROM ubuntu:22.04

LABEL author=HyperUser

# USER UID:GID
USER 2:0

ENTRYPOINT [\"id\"]" > Dockerfile

# build
docker build -t ubuntu:v1 .

# run
docker run --name ubuntu-v1 ubuntu:v1


# clean
rm Dockerfile
docker container rm ubuntu-v1
docker rmi ubuntu:v1

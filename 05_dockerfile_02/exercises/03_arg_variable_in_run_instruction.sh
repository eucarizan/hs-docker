#!/usr/bin/env bash

# --Dockerfile
echo "FROM ubuntu:22.04

LABEL author=HyperUser

ARG GREETING
RUN echo \$GREETING World! > /tmp/demo.txt

ENTRYPOINT [\"cat\", \"/tmp/demo.txt\"]" > Dockerfile

# build
docker build --build-arg GREETING=Hello, -t ubuntu:v1 .

# run
docker run --name ubuntu-v1 ubuntu:v1

# clean
rm Dockerfile
docker container rm ubuntu-v1 
docker rmi ubuntu:v1

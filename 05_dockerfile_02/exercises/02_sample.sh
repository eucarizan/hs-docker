#!/usr/bin/env bash

# create demo.txt
echo "Hello!" > demo.txt

# --Dockerfile
echo "FROM ubuntu:22.04

LABEL author=HyperUser

COPY demo.txt /tmp
RUN echo Hello, Students! > /tmp/demo.txt
RUN echo Hello, World! >> /tmp/demo.txt

ENTRYPOINT [\"cat\", \"/tmp/demo.txt\"]" > Dockerfile

# build
docker build -t ubuntu:v1 .

# run
docker run --name ubuntu-v1 ubuntu:v1

# clean
rm Dockerfile
rm demo.txt
docker container rm ubuntu-v1
docker rmi ubuntu:v1


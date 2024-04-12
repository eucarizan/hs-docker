#!/usr/bin/env bash

# create demo.txt
touch demo.txt

# --Dockerfile
echo "FROM ubuntu:22.04

LABEL author=HyperUser

# COPY source destination
COPY demo.txt /

ENTRYPOINT [\"ls\"]" > Dockerfile

# build
docker build -t ubuntu:v1 .

# run
docker run --name ubuntu-1 ubuntu:v1

# clean
rm Dockerfile
rm demo.txt
docker container rm ubuntu-1
docker rmi ubuntu:v1

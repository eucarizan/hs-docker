#!/usr/bin/env bash

# create demo.txt
touch demo.txt

# --Dockerfile
echo "FROM ubuntu:22.04

LABEL author=HyperUser

# can specify different users and groups explicitly
# COPY --chown=0:1 demo.txt /
# OR
# COPY --chown=root:bin demo.txt /
COPY --chown=bin demo.txt /

ENTRYPOINT [\"ls\", \"-l\", \"demo.txt\"]" > Dockerfile

# build
docker build -t ubuntu:v1 .

# run
docker run --name ubuntu-v1 ubuntu:v1

# clean
rm Dockerfile
rm demo.txt
docker container rm ubuntu-v1
docker rmi ubuntu:v1


#!/usr/bin/env bash

# single command

# --Dockerfile
echo -e "FROM ubuntu:22.04

LABEL author=HyperUser

RUN mkdir /tmp/demo

ENTRYPOINT [\"ls\", \"/tmp\"]" > Dockerfile

# build dockerfile
docker build -t ubuntu:v1

# run image
docker run --name ubuntu-v1 ubuntu:v1



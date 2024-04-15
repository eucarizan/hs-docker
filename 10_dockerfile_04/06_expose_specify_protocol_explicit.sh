#!/usr/bin/env bash

# --Dockerfile
echo "FROM ubuntu:22.04

LABEL author=HyperUser

EXPOSE 80/tcp
EXPOSE 80/udp

ENTRYPOINT [\"/bin/bash\"]" > Dockerfile

# build
docker build -t ubuntu:v1 .

# run
docker run -d -it --name ubuntu-v1 ubuntu:v1

# inspect
docker ps --format "tablel {{.ID}}\t{{.Image}}\t{{.Names}}\t{{.Ports}}" --last=1

# stop container
docker stop ubuntu-v1

# clean
rm Dockerfile
docker container rm ubuntu-v1
docker rmi ubuntu:v1


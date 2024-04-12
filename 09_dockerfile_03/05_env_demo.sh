#!/usr/bin/env bash

# create demo.txt
touch demo.txt

# --Dockerfile
echo "FROM ubuntu:22.04

LABEL author=HyperUser

ENV HOST_FILE=demo.txt
ENV IMAGE_DESTINATION=\"/tmp\"
COPY \$HOST_FILE \$IMAGE_DESTINATION

ENTRYPOINT [\"ls\", \"/tmp\"]" > Dockerfile

# build
docker build -t ubuntu:v1 .

# run
docker run --name ubuntu-v1 ubuntu:v1

# clean
rm Dockerfile
rm demo.txt
docker container rm ubuntu-v1
docker rmi ubuntu:v1


#!/usr/bin/env bash

# create demo.txt
touch demo.txt

# --Dockerfile
# can assign a default value in ARG
# but will be overriden by passing the value when building the image
echo "ARG VERSION
FROM ubuntu:\$VERSION

LABEL author=HyperUser

ENV HOST_FILE=demo.txt
ENV IMAGE_DESTINATION=\"/tmp\"
COPY \$HOST_FILE \$IMAGE_DESTINATION

ENTRYPOINT [\"ls\", \"/tmp\"]" > Dockerfile

# build
docker build --build-arg VERSION=22.04 -t ubuntu:v1 .

# run
docker run --name ubuntu-v1 ubuntu:v1

# clean
rm Dockerfile
rm demo.txt
docker container rm ubuntu-v1
docker rmi ubuntu:v1

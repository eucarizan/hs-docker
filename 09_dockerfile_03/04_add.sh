#!/usr/bin/env bash

# create demo.txt
touch demo.txt

# archive demo.txt
tar -czf demo.txt.tar.gz demo.txt

# --Dockerfile
echo "FROM ubuntu:22.04

LABEL author=HyperUser

ADD demo.txt.tar.gz /

ENTRYPOINT [\"ls\", \"-l\", \"demo.txt\"]" > Dockerfile

# build
docker build -t ubuntu:v1 .

# run
docker run --name ubuntu-v1 ubuntu:v1

# clean
rm Dockerfile
rm demo.txt
rm demo.txt.tar.gz
docker container rm ubuntu-v1
docker rmi ubuntu:v1


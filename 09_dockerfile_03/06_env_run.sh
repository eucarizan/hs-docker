#!/usr/bin/env bash

# --Dockerfile
echo "FROM ubuntu:22.04

LABEL author=HyperUser

ENTRYPOINT [\"/bin/bash\"]" > Dockerfile

# build
docker build -t ubuntu:v1 .

# run
docker run -e ENV=my_env -it --name hs-ubuntu-1 ubuntu:v1

# clean
rm Dockerfile
docker container rm hs-ubuntu-1
docker rmi ubuntu:v1

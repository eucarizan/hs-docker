#!/usr/bin/env bash

# delete the container
docker container rm hyper-web-app

# delete the image
docker rmi hyper-web-app:latest

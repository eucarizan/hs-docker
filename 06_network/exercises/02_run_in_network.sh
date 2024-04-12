#!/usr/bin/env bash

# run my-ubuntu container in my-bridge network
docker run -d -it --name my-ubuntu --network my-bridge ubuntu:v1


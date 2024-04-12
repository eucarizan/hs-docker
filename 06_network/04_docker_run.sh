#!/usr/bin/env bash

# assuming ubuntu:v1 image is already present
docker run -d -it --name hs-ubuntu-v2 --network hs-bridge ubuntu:v1

# check the container's network
docker ps -a --format '{{ .ID }} {{ .Names }} {{ json .Networks }}'


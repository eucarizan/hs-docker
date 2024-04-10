#!/usr/bin/env bash

# --create a docker file
#
# echo -e 'FROM ubuntu:22.04
# LABEL author=HyperUser
# # Shell form
# CMD echo Hello Students.
# # Exec form
# CMD ["echo", "Hello World."]

# --if image is built and run a container on it
# --the output will only be Hello Students

# --pass the command when running the container
docker run {image_id} echo Hi



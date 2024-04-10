#!/usr/bin/env bash

# --Dockerfile
# FROM ubuntu:22.04
# LABEL author=HyperUser
# # exec form
# ENTRYPOINT ["/bin/echo", "Hello Students."]

# run docker container by passing an argument to it
docker run --name hs-ubuntu-3 ubuntu:v3 `date`


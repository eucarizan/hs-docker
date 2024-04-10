#!/usr/bin/env bash

# --Dockerfile
# FROM ubuntu:22.04
# LABEL author=HyperUser
# # shell form
# ENTRYPOINT echo Hello Students.

# --check what is COMMAND column when listing container
docker ps -a --format "table {{.Names}}\\t{{.Command}}" --last 1

# ENTRYPOINT prevents from passing one more argument to echo when running the container


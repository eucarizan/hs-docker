#!/usr/bin/env bash
# pre-requisite: ubuntu:v1 image is created

# --Dockerfile
# FROM ubuntu:22.04
#
# LABEL author=HyperUser
# LABEL "application_environment"="development"
# LABEL "version"=1.0
# LABEL multi.first-key="first-value" multi.second-key="second-value"
# LABEL first-key=first-value \
#	      second-key=second-value

# ENTRYPOINT ["/bin/bash"]

## --Create image
## docker build -t ubuntu:v1 . 

docker inspect ubuntu:v1 --format='{{json .Config}}' | jq

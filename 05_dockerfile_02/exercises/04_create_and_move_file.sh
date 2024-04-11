#!/usr/bin/env bash

# --Dockerfile
echo "FROM ubuntu:22.04

RUN touch demo.txt
RUN mkdir /tmp/demo
RUN mv demo.txt /tmp/demo

ENTRYPOINT [\"ls\", \"/tmp/demo\"]" > Dockerfile


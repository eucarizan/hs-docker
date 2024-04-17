#!/usr/bin/env bash

# run
docker run -itd --name hyper-adminer \
--network hyper-network -p 8080:8080 \
adminer:4.8.1

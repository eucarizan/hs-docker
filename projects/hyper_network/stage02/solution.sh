#!/usr/bin/env bash

# --Dockerfile
echo "FROM postgres:15.3

EXPOSE 5432"> Dockerfile

# build
docker build -t postgres:15.3 .

# run
docker run -itd --name hyper-postgres \
-v hyper-volume:/var/lib/postgresql/data \
--network hyper-network -p 5432:5432 \
-e POSTGRES_PASSWORD='hyper2023' \ 
-e POSTGRES_USER='hyper' \
-e POSTGRES_DB='hyper-db' \
postgres:15.3

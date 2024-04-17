#!/usr/bin/env bash
docker stop hyper-postgres 
docker stop hyper-adminer 
docker rm hyper-postgres 
docker rm hyper-adminer

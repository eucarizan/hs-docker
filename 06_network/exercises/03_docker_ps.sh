#!/usr/bin/env bash

# command to represent: 43641851add2 - "bridge"
docker ps -a --format '{{ .ID }} - {{ json .Networks }}'

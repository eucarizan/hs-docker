#!/usr/bin/env bash

# assuming docker volume mydata already exists
# -d, flag runs container in the background (detached mode)
# -v mydata:/data, flag mounts the mydata volume to the container's /data directory; allows the container to read and write data to the volume
# busybox sleep 3600, puts the container to sleep for 3600 seconds (1 hour)
docker run -d --name container1 -v mydata:/data busybox sleep 3600


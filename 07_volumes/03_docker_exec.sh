#!/usr/bin/env bash
docker exec -it container1 sh

echo "Data from container 1" > /data/shared.txt

exit


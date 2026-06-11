#!/bin/bash
set -e

echo "Running stop_container.sh"
docker ps

containers=$(docker ps -q)
echo "Containers: $containers"

if [ -n "$containers" ]; then
  docker rm -f $containers
else
  echo "No running containers found"
fi

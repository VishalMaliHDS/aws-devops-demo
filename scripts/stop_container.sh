#!/bin/bash
set -e

echo "Stopping and removing all containers..."
docker rm -f $(docker ps -aq) 2>/dev/null || true

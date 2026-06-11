
#!/bin/bash
set -e

docker rm -f $(docker ps -q) 2>/dev/null || true

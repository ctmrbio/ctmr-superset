#!/bin/bash
# Initalize Superset container
# 1. Create admin user
# 2. Upgrade DB model
# 3. Run initalizaton

set -eou pipefail

if [[ $# -eq 0 ]]; then
  echo "ERROR: Container name required"
  echo "usage: initialize_superset.sh CONTAINER_NAME"
  exit 1
fi

container_name="$1"

docker exec -it ${container_name} superset \
  fab create-admin \
  --username admin \
  --firstname Superset \
  --lastname Admin \
  --email superset@c1-ctmr-orch.ki.se \
  --password admin

docker exec -it ${container_name} superset db upgrade

#docker exec -it ${container_name} superset load_example

docker exec -it ${container_name} superset init

#!/bin/bash
set -eou pipefail

image_id="cdbdd3bb1093"
port=9099
container_name="superset_dev"

docker run \
  --restart unless-stopped \
  --detach \
  --volume /data/ss_testdata:/app/superset_home \
  --publish ${port}:8088 \
  --name ${container_name} \
  ${image_id}

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

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

./initialize_superset.sh ${container_name}

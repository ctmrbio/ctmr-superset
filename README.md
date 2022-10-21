# ctmr-superset
![Superset logo](https://superset.apache.org/img/superset-logo-horiz-apache.svg)

Custom Docker image for deploying Apache Superset at CTMR.

## Build Docker image
```
docker build .
```
Make a note of the image ID so you can use it in the `deploy.sh` script later.

## Deploy
1. Edit the `deploy.sh` script with the image ID of the Docker image you built
   earlier.
2. Run the `deploy.sh` script to deploy the container.

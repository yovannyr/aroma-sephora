#!/bin/bash
set -e

DB_INSTANCE=aroma_db
DB_PORT=25432
WEB_INSTANCE=aroma_web
WEB_PORT=28080

## For Mac and Linux
#WEB_DIR_DEPLOYMENTS=/Users/eric/dev/docker_data/jboss-as/standalone/deployments
#WEB_DIR_AROMA=/Users/eric/dev/workspace/aroma

## For Windows
WEB_DIR_DEPLOYMENTS=//c/Users/eric/Documents/docker_data/jboss-as/standalone/deployments
WEB_DIR_AROMA=//c/Users/eric/Documents/workspace/aroma


echo "start db instance: $DB_INSTANCE"
docker run -d \
  --name $DB_INSTANCE \
  -e POSTGRES_USER=fortytwo \
  -e POSTGRES_DB=fortytwo_local \
  -e POSTGRES_PASSWORD=fortytwo \
  -p $DB_PORT:5432 \
  aroma-dev:5000/arvato/postgres

echo "pls wait 20 seconds for db preparing..."
sleep 20

echo "start web instance: $WEB_INSTANCE"
## For Mac and Linux
#docker run -d \
#  --name $WEB_INSTANCE \
#  -v $WEB_DIR_DEPLOYMENTS:/opt/jboss-as/standalone/deployments \
#  -v $WEB_DIR_AROMA:/aroma \
#  --link $DB_INSTANCE:postgres \
#  -p $WEB_PORT:8080 \
#  aroma-dev:5000/arvato/jboss7

## For Windows
docker run -d \
  --name $WEB_INSTANCE \
  -v $WEB_DIR_DEPLOYMENTS://opt/jboss-as/standalone/deployments \
  -v $WEB_DIR_AROMA://aroma \
  --link $DB_INSTANCE:postgres \
  -p $WEB_PORT:8080 \
  aroma-dev:5000/arvato/jboss7

# echo "port forwarding..."
# for i in {$DB_PORT,$WEB_PORT}; do
#   VBoxManage modifyvm "boot2docker-vm" --natpf1 "tcp-port$i,tcp,,$i,,$i";
#   VBoxManage modifyvm "boot2docker-vm" --natpf1 "udp-port$i,udp,,$i,,$i";
# done

echo "done!"
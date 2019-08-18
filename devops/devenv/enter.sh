#!/bin/bash

COMPONENT=nfl-collision-api
CONTAINERS=$(docker ps --no-trunc -f "name=${COMPONENT}" --format "{{.Names}}"| \
sed "s/^${COMPONENT}_//" | sed "s/_1$//" | tr '\n' ' ')

printf "
  Enter the name of the service that you want to access.  Choices are:
  ${CONTAINERS}
  Service name: " && read -r SERVICE

docker exec -ti ${COMPONENT}_${SERVICE}_1 /bin/bash; history -c; history -r;
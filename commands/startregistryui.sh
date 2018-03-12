#!/bin/bash

docker run -d \
  --restart=always \
  --name registryui \
  -p 5080:80 \
  -e REGISTRY_URL=http://192.168.1.33:5000 \
  -e DELETE_IMAGES=true \
  joxit/docker-registry-ui:static


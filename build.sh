#!/usr/bin/env bash

source source.sh

# build the docker image for linux/arm64 platform
docker buildx build \
  --tag ${REGISTRY}${IMAGE_TAG} \
  --build-arg HOMEBRIDGE_VERSION="${HOMEBRIDGE_VERSION}" \
  --build-arg HOMEBRIDGE_PLUGINS="${HOMEBRIDGE_PLUGINS}" \
  --platform linux/arm64 \
  --output type=docker .

# push to the remote registry if specified
if [ $REGISTRY ]; then
  docker push ${REGISTRY}${IMAGE_TAG}
fi

# generate docker-compose.yml
echo "Updating docker-compose.yml"

cat <<EOF > docker-compose.yml
# Use this file to create a custom app template in Portainer
version: '2'
services:
  homebridge:
    image: ${REGISTRY}${IMAGE_TAG}
    restart: unless-stopped
    network_mode: host
    environment:
      - ENABLE_AVAHI=${ENABLE_AVAHI}
      - TZ=${TZ}
    volumes:
      - homebridge:/homebridge
    logging:
      driver: json-file
      options:
        max-size: "10mb"
        max-file: "1"
volumes:
  homebridge:
EOF

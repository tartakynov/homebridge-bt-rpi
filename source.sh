#!/usr/bin/env bash

HOMEBRIDGE_VERSION=1.6.0

# comment out this variable if you don't want to bake plugins into the image
HOMEBRIDGE_PLUGINS="homebridge-mi-flora-care homebridge-tplink-smarthome"

# comment out this variable if you don't want to push to a remote registry
# or change to your own
REGISTRY="gcr.io/artem-gcloud/"

IMAGE_TAG="homebridge-bt-rpi:${HOMEBRIDGE_VERSION}"

# Params below are used only to generate the docker-compose.yml
# you can read about them in https://hub.docker.com/r/oznu/homebridge/
ENABLE_AVAHI=0
TZ="America/Toronto"

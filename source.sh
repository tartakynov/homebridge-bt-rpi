#!/usr/bin/env bash

# Raspberry Pi 3/4
TARGET_PLATFORM="linux/arm64"

# comment out this variable if you don't want to bake additional apt
# packages into the image
ADDITIONAL_APT_PACKAGES="bluetooth bluez libbluetooth-dev libudev-dev"

HOMEBRIDGE_VERSION=1.6.0

# comment out this variable if you don't want to bake plugins into the image
HOMEBRIDGE_PLUGINS="homebridge-mi-flora-care homebridge-tplink-smarthome"

# # uncomment this variable if you want to push the image to a remote registry
# # and change its value to your own. The value has to end with a forward slash (/)
# REGISTRY="localhost:5000/"

IMAGE_TAG="homebridge-standalone:${HOMEBRIDGE_VERSION}"

# Params below are used only to generate the docker-compose.yml
# you can read about them in https://hub.docker.com/r/oznu/homebridge/
ENABLE_AVAHI=0
TZ="America/Toronto"

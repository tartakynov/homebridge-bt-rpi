# HomeBridge with Bluetooth for Docker on Raspberry Pi

This repository contains scripts and instructions for building HomeBridge docker image to run on a Raspberry Pi. The image is based on [oznu/homebridge](https://hub.docker.com/r/oznu/homebridge) and includes the following additional features:

- Installs Bluetooth libraries
- Bakes HomeBridge itself with specified plugins into the image, because it takes forever to install some plugins on Raspberry Pi. The original docker image installs HomeBridge at runtime during the first run.

The goal of this repo is to build the image that is ready to run from the go.

## Steps to run

1. Create an arm64 docker builder by running `./init_builder.sh` script
2. Edit `source.sh` script
3. Build the image by running `./build.sh` script.

It will build the image to run on your Raspberry Pi.

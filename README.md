# Self-contained HomeBridge Docker Image Builder

This repo contains scripts to build a self-contained [HomeBridge](https://github.com/homebridge/homebridge) docker image. This is based on [oznu/homebridge](https://hub.docker.com/r/oznu/homebridge) image, but bakes HomeBridge itself, along with specified APT packages and plugins, directly into the image. This is especially helpful for Raspberry Pi users, as installing certain plugins can take forever on these devices.

The image should be ready to run straight out of the box, even without an internet connection. In contrast, the original [oznu/homebridge](https://hub.docker.com/r/oznu/homebridge) image installs HomeBridge at runtime during the first run and pulls updates every time you restart the device, which takes time on RPis and requires the device to be connected to the Internet.

## Steps to run

1. Edit the `source.sh` script to specify the parameters of your image
2. Build the image by running the `./build.sh` script

And that's it! You should now have a HomeBridge image that's ready to go.

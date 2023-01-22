# HomeBridge with Bluetooth for Docker on Raspberry Pi

This repo contains scripts to build a HomeBridge docker image to run on Raspberry Pi.

The image is based on [oznu/homebridge](https://hub.docker.com/r/oznu/homebridge) image, but with some added features. Specifically
- includes Bluetooth libraries for [noblejs](https://github.com/noble/noble)
- bakes HomeBridge itself, along with specified plugins, directly into the image. This is especially helpful for Raspberry Pi users, as installing certain plugins can take forever on these devices.

The goal of this repo is to build the image that's ready to run straight out of the box, even without an internet connection. In contrast, the original [oznu/homebridge](https://hub.docker.com/r/oznu/homebridge) image installs HomeBridge at runtime during the first run, which takes time on RPis and requires the device to be connected to the Internet.

## Steps to run

1. Run the `./init_builder.sh` script to create an arm64 docker builder
2. Edit the `source.sh` script to specify the plugins you want to include in your image, and the registry where you want to push the image after building.
3. Build the image by running the `./build.sh` script

And that's it! You should now have a HomeBridge image that's ready to go.

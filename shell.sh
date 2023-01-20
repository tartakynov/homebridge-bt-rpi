#!/usr/bin/env bash

source source.sh

docker run --rm -it --entrypoint bash --platform=linux/arm64 ${REGISTRY}${IMAGE_TAG}

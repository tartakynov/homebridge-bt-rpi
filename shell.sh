#!/usr/bin/env bash

source source.sh

docker run --rm -it --entrypoint bash --platform="${TARGET_PLATFORM}" "${REGISTRY}${IMAGE_TAG}"

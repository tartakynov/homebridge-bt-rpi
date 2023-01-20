#!/usr/bin/env bash

docker buildx build --platform linux/arm64 -t tartakynov/homebridge-bt:latest .

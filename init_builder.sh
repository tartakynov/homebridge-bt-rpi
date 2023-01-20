#!/usr/bin/env bash

docker buildx create --name mybuilder
docker buildx use mybuilder

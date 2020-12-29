#!/bin/bash

set -e

shopt -s expand_aliases

alias docker='podman'

sed "s/myuser/${USER}/g" Dockerfile.template > Dockerfile.current

docker image rm csc-container | true
docker build -t csc-container:latest -f Dockerfile.current


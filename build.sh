#!/bin/bash

set -e

shopt -s expand_aliases

if ! type docker > /dev/null; then
  alias docker='podman'
fi

sed "s/myuser/${USER}/g" Dockerfile.template > Dockerfile.current

docker image rm csc-container | true
docker build -t csc-container:latest -f Dockerfile.current


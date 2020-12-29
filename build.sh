#!/bin/bash

set -e

alias podman docker

docker image rm csc-container | true
docker build -t csc-container:latest .


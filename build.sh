#!/bin/bash

set -e

shopt -s expand_aliases

alias podman='docker'

docker image rm csc-container | true
docker build -t csc-container:latest .


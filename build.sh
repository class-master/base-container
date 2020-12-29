#!/bin/bash

set -e

shopt -s expand_aliases

alias docker='podman'

docker image rm csc-container | true
docker build -t csc-container:latest .


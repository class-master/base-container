#!/bin/bash

set -e

docker image rm csc-container | true
docker build -t csc-container:latest .


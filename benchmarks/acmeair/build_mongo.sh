#!/bin/bash

set -e -u -o pipefail

dir="$(dirname "$(readlink -f "${BASH_SOURCE}")")"


export DOCKER_BUILDKIT=1

docker build -t "mongo-acmeair" "${dir}/mongo"

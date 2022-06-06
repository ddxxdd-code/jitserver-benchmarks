#!/bin/bash

set -e -u -o pipefail

dir="$(dirname "$(readlink -f "${BASH_SOURCE}")")"


docker build -t "mongo-acmeair" "${dir}/mongo"

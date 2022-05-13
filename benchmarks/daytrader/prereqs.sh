#!/bin/bash

set -e -u -o pipefail


packages=("docker.io" "python3-pip" "wget")

apt-get update
apt-get install -y "${packages[@]}"
rm -rf "/var/lib/apt/lists/"*


# Allow docker without sudo
groupadd "docker" || true
usermod -aG "docker" "${USER}"

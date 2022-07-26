#!/usr/bin/env bash

set -e
image_name="${1}"
image_tag="mac_picgo2.3.0"
wget https://github.com/Molunerfinn/PicGo/releases/download/v2.3.0/PicGo-2.3.0.dmg
cp ../Dockerfile ./

docker build . -t ${image_name}:${image_tag}
docker push ${image_name}:${image_tag}

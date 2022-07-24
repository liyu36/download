#!/usr/bin/env bash

set -e
image_name="${1}"
image_tag="ubuntu1804_proxysql_2.4.1"
wget https://github.com/sysown/proxysql/releases/download/v2.4.1/proxysql_2.4.1-ubuntu18_amd64.deb
cp ../Dockerfile ./

docker build . -t ${image_name}:${image_tag}
docker push ${image_name}:${image_tag}
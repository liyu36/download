#!/usr/bin/env bash
__Author__="liyu36"

SERVER=${1}

for software in $(grep -Pv "(^#|^$)" software.txt)
do
    cd ${software}
    echo "=======================Start download ${software}======================="
    bash download.sh "${SERVER}/liy36/download"
    echo "=======================download ${software} complete======================="
    cd ..
done
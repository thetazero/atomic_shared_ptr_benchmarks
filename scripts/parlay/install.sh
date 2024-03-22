#!/bin/bash

mkdir -p install/parlaylib
sh scripts/submodules.sh
cd parlaylib
git checkout main
git pull
mkdir -p build
cd build
echo $(pwd)
NUM_CORES=$(nproc)
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=../../install/parlaylib .. && make -j $NUM_CORES all install

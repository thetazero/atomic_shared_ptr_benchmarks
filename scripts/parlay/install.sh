#!/bin/bash

cd parlaylib
git checkout main
git pull
mkdir -p build
NUM_CORES=$(nproc)
cmake .. & make -j $NUM_CORES

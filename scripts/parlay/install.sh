#!/bin/bash

git clone https://github.com/cmuparlay/parlaylib
cd parlaylib
mkdir -p build
NUM_CORES=$(nproc)
cmake .. & make -j $NUM_CORES

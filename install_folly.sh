#!/bin/bash

cd folly
git pull
sudo ./build/fbcode_builder/getdeps.py install-system-deps --recursive
python3 ./build/fbcode_builder/getdeps.py --allow-system-packages build
# python3 ./build/fbcode_builder/getdeps.py --allow-system-packages test
FOLLY_PATH=$(python3 ./build/fbcode_builder/getdeps.py show-build-dir)
cp $FOLLY_PATH/libfolly.a ..

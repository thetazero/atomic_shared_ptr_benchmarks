#!/bin/bash

mkdir -p install/folly
mv install/folly /tmp
mv install/fmt /tmp
mv install/googletest /tmp
cd folly
git checkout main
git pull
mkdir -p install
# ./build/fbcode_builder/getdeps.py install-system-deps --recursive
python3 ./build/fbcode_builder/getdeps.py --allow-system-packages build --install-dir=../install/folly
# python3 ./build/fbcode_builder/getdeps.py --allow-system-packages test
FOLLY_PATH=$(python3 ./build/fbcode_builder/getdeps.py show-build-dir)
cp -r $FOLLY_PATH/../../installed/ ../install
cd ../install

mv installed/fmt*/ fmt
mv installed/googletest* googletest

rmdir installed

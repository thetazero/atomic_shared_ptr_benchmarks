#!/bin/bash

mkdir -p test_install
mv install /tmp
cd folly
git checkout main
git pull
mkdir -p install
sudo ./build/fbcode_builder/getdeps.py install-system-deps --recursive
python3 ./build/fbcode_builder/getdeps.py --allow-system-packages build --install-dir=../test_install
# python3 ./build/fbcode_builder/getdeps.py --allow-system-packages test
FOLLY_PATH=$(python3 ./build/fbcode_builder/getdeps.py show-build-dir)
cp -r $FOLLY_PATH/../../installed/ ../install

cd ..
mv install/fmt*/ install/fmt
mv install/googletest* install/googletest

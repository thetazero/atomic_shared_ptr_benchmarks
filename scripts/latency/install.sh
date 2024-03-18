#!/bin/bash

sh scripts/submodules.sh

cd atomic_shared_ptr
git checkout ivo
git pull
mkdir -p build
cd build

#!/bin/bash

sh scripts/submodules.sh

cd concurrent_deferred_rc
git checkout other_benchmarks
git pull
mkdir -p build
cd build
cmake .. -DCDRC_BENCHMARK=On -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH=make -DCMAKE_PREFIX_PATH=../../install/folly/lib/cmake/folly .. && make && echo "Built throughputs benchmarks, see concurrent_deferred_rc/build/benchmarks"

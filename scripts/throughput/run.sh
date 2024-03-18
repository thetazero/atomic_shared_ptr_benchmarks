#!/bin/bash

cd concurrent_deferred_rc/build/
make
./benchmarks/bench_stack -a ivo

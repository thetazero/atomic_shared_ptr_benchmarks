# ???

## Building docker container
```bash
./docker.sh
```
Then once you are in the container, run `cd /usr/app`

## Building Throughput Benchmarks
```sh
sh scripts/submodules.sh
sh scripts/folly/install.sh
sh scripts/parlay/install.sh
sh scripts/throughput/install.sh
cd concurrent_deffered_rc/build && make
```

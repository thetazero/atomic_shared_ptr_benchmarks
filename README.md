# Benchmark Utilities For Our Paper

- See `scripts/*/install.sh` to install *
- See `scripts/*/run.sh` to run * (if applicable)

## Todo:
- Install submodules
- unmerged one, ivo, folly (no SMR), lib stdc++, 
    Mostly from unmerged code
- folly, mine?, ivo, anthony williams free
- Install folly globaly
- Latency distribution plots
- Table of 50% / 99.5%
- Add CAS benchmarks

### Maybe Todo:
- Free anthony williams free


### Run everything
```sh
sh scripts/submodules.sh
sh install_folly.sh
sh scripts/parlay/install.sh
sh scripts/throughput/install.sh
cd concurrent_deffered_rc/build
```

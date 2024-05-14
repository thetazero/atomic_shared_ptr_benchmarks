#!/bin/bash

docker build . -t myubuntu && \
docker run -it \
  --mount type=bind,src=.,dst=/usr/app \
    myubuntu

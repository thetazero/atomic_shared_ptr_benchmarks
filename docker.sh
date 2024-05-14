#!/bin/bash

docker build . -t myubuntu && \
docker run -it \
  --privileged \
  --mount type=bind,src=.,dst=/usr/app \
    myubuntu

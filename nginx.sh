#!/bin/bash

docker run \
  --cpus=0.5 \
  --memory=128m \
  --net=host \
  -v $(pwd)/nginx-conf:/etc/nginx \
  -v $(pwd)/sock:/var/sock \
  --rm nginx

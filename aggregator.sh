#!/bin/bash
set -e

VERSION=${VERSION:-3.0.2}

docker run \
  --cpus=0.5 \
  --memory=128m \
  --net=host \
  -v $(pwd)/aggregator.conf:/fluent-bit/etc/fluent-bit.conf \
  -v $(pwd)/sock:/var/sock \
  --rm fluent/fluent-bit:$VERSION

#!/bin/bash
set -eu

VERSION=${VERSION:-3.0.2}

docker run \
  --cpus=0.5 \
  --memory=256m \
  --net=host \
  -v $(pwd)/collector.conf:/fluent-bit/etc/fluent-bit.conf \
  -v $(pwd)/logs:/logs \
  --rm fluent/fluent-bit:$VERSION \
  $@

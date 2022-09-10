#!/bin/bash
set -e

BLOG_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
HUGO_IMG="klakegg/hugo:latest"
PORT="1313"

docker pull $HUGO_IMG
docker run --rm -it -v $BLOG_DIR/src:/src -p $PORT:1313 $HUGO_IMG \
    server -D \
    -p 1313 \
    -b localhost

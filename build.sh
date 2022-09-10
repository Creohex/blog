#!/bin/bash
set -e

BLOG_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
HUGO_IMG="klakegg/hugo:ubuntu"

rm -rf $BLOG_DIR/src/public/*

docker pull $HUGO_IMG
docker run --rm -v $BLOG_DIR/src:/src $HUGO_IMG

echo "Done!"

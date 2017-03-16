#!/bin/bash

set -x
export PUB_HOSTED_URL="https://20170316t153535-dot-dartlang-pub.appspot.com"

for i in $(seq 1 100); do
  timestamp="$(date '+%Y_%m_%d__%H_%M_%S')"
  curl -v "$PUB_HOSTED_URL/api/packages/appengine?timestamp=$timestamp&iteration=$i" > /dev/null
done

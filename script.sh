#!/bin/bash

set -x

export PUB_HOSTED_URL="https://20170317t162249-dot-dartlang-pub.appspot.com"
export PUB_HOSTED_URL="https://pub.dartlang.org"

for i in $(seq 1 1000); do
  timestamp="$(date '+%Y_%m_%d__%H_%M_%S')"
  curl -v "$PUB_HOSTED_URL/api/packages/appengine?timestamp=$timestamp&iteration=$i" > /dev/null
done

#!/bin/bash

set -x

export PUB_HOSTED_URL="https://20170316t153535-dot-dartlang-pub.appspot.com"
export PUB_CACHE=/tmp/foo-$(date '+%Y-%m-%d__%H:%M:%S')
rm -rf $PUB_CACHE


curl -v "$PUB_HOSTED_URL/hello"

cd app
pub -v get

#!/bin/bash

set -x

export PUB_HOSTED_URL="https://20170316t153535-dot-dartlang-pub.appspot.com"
export PUB_CACHE=/tmp/foo-$(date '+%Y-%m-%d__%H:%M:%S')
rm -rf $PUB_CACHE

curl -v "$PUB_HOSTED_URL/api/packages/_test_"

cd app
for i in $(seq 1 10); do
	pub -v get
done

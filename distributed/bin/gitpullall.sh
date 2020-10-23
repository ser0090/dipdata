#!/bin/bash

set -x

DIR="$(dirname "$0")"

"$DIR/goprivate.sh"

# pull all private remotes
git remote | grep -v public | xargs -I {} git pull {} master

"$DIR/gopublic.sh"

#git remote | grep -v public | xargs -I {} git pull {} public && \
git pull public_repo master

"$DIR/goprivate.sh"

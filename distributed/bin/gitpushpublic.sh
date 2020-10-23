#!/bin/bash

set -x

# Push public branch to public repo if exists
if git show-branch -a --list | sed 's/[^[]*\[\(.*\)].*/\1/' | grep "public"
then
  git push public_repo public:master
else
  echo "You don't have public branch"
  exit 1
fi


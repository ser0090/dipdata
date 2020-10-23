#!/bin/bash

set -x

DIR="$(dirname "$0")"

if ! "$DIR/gopublic.sh"
then
  echo "You have a public branch yet. Execute git show-branch -a --list to see"
  exit 1
fi


if [ -n "$1" ]
then

#      git rm -rf "$1"

    if  git checkout master -- "$@"
    then

      git commit -am "File from private"

      "$DIR/goprivate.sh"

      echo "You need tu push the changes with $DIR/gitpushall.sh"
    else

      "$DIR/goprivate.sh"
      echo "Problen with checkout. Perhaps you are not in base dir of git repo."
      exit 1

    fi

else
      "$DIR/goprivate.sh"
      echo "First param must be a file"
      exit 1
fi


#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo Few arguments!
  echo "Use: $0 <pattern>"
  exit 1
fi

set -x

git fetch origin -p && git branch -a | grep remotes | grep $1 | sed 's/^\s*remotes\/origin\/\(.*\)$/\1/' | xargs git push --delete origin

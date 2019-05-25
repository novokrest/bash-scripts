#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo 'Few arguments!'
  echo 'Use: $0 <line-to-remove>';
  exit 1
fi

set -x 

find . -name "*" -type f | xargs sed -i -e "/$1/d"


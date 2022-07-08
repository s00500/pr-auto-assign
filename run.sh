#!/usr/bin/env bash

# just a wrapper to ensure we always run the correct binary

USAGE="usage: ./run.sh [reviewers]"
if [[ $# -lt 1 ]]; then
  echo "${USAGE}"
  exit 1
fi

if [[ "$(uname -m)" == "x86_64" ]]; then
  echo "Running on 64-bit architecture"
  export a=amd64
else
  echo "Running on 32-bit architecture"
  export a=arm64
fi

./dist/pr-auto-assign-linux-${a} ${1} --debug
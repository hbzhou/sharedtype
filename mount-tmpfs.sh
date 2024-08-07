#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

function tmpfsify() {
  mkdir -p "$DIR/$1"
  mount -t tmpfs -o size="$2" -o noatime tmpfs "$DIR/$1"
}

tmpfsify "target" 64M
tmpfsify "an/target" 128M
tmpfsify "ap/target" 256M

#!/bin/bash

#   Date : 2020-08-26 14:20:06 CST
# Author : movtiv

set -eux
set -o pipefail

DIR=$(cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd -P)
cd "$DIR"


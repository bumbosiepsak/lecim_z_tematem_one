#!/usr/bin/env bash

set -o errexit
set -o errtrace
set -o pipefail
set -o nounset

export PROJECT_ROOT="$(readlink -e $(dirname "${0}"))"

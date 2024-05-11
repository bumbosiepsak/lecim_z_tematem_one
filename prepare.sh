#!/usr/bin/env bash

set -o errexit
set -o errtrace
set -o pipefail
set -o nounset

export PROJECT_ROOT="$(readlink -e $(dirname "${0}"))"

python3 -m venv venv

source venv/bin/activate

pip3 install --upgrade \
    pip \
    setuptools \
    wheel

pip3 install --requirement "${PROJECT_ROOT}/requirements.txt"

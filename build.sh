#!/usr/bin/env bash

set -euo pipefail

source lib-main.sh
source build-gliden64.sh

check_env
build_gliden64

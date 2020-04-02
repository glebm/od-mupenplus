#!/usr/bin/env bash

set -euo pipefail

source ./lib.sh

build_gliden64() {
  cd deps/GLideN64
  cmake -S src -B build "${CMAKE_COMMON_FLAGS[@]}" -DEGL=ON -DSDL=ON -DNOHQ=ON -DMUPENPLUSAPI=ON
  cmake --build build -j "$(getconf _NPROCESSORS_ONLN)"
  cmake --install build --prefix ../../out
  cd -
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  source ./lib-main.sh
  check_env
  build_gliden64
fi

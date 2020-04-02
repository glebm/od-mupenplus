check_buildroot() {
  if ! [[ -d $BUILDROOT ]]; then
    echo "Please set the BUILDROOT environment variable"
    exit 1
  fi
}

check_env() {
  check_buildroot
  # Requires CMake 3.15+ (for the `cmake --install` command)
  mkdir -p out
}

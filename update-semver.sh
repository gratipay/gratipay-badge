#!/bin/bash
# Helper script for update semver in README and other docs
# Echo command and exit on first error
set -e
set -x

# Alias `sort` for consistency across platforms
if which gsort > /dev/null; then
  alias sort="gsort"
fi

# Grab the last semver
last_semver="$(git tag | sort -V | tail -n 1)"
last_minor_variable="$($last_semver | sed "s/(\d+\.\d+\.)\d+/\$1x)/")"
last_patch_variable="

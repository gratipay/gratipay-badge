#!/bin/bash
# Helper script for update semver in README and other docs
# Echo command and exit on first error
set -e
set -x

# Alias `sort` for consistency across platforms
if which gsort > /dev/null; then
  alias sort="gsort"
fi

# If there is no semver provided, complain and leave
semver="$1"
if test "$semver" = ""; then
  echo "No \`$semver\` was provided to \`update-semver.sh\`. Please provide one (e.g. \`./update-semver.sh 1.2.3\`" 1>&2
  exit 1
fi

# Grab the last semver and its branches (1.2.3 -> 1.x.x, 1.2.x)
last_semver="$(git tag | sort -V | tail -n 1)"
last_minor_branch="$(echo $last_semver | sed -r "s/([0-9]+)\.([0-9]+)\.[0-9]+/\1.x.x/")"
last_patch_branch="$(echo $last_semver  | sed -r "s/([0-9]+)\.([0-9]+)\.[0-9]+/\1.\2.x/")"

# Calculate the new branches
minor_branch="$(echo $semver | sed -r "s/([0-9]+)\.([0-9]+)\.[0-9]+/\1.x.x/")"
patch_branch="$(echo $semver  | sed -r "s/([0-9]+)\.([0-9]+)\.[0-9]+/\1.\2.x/")"

# Replace all instances in the README
sed --in-place "s/$last_semver/$semver/g" README.md
sed --in-place "s/$last_minor_branch/$minor_branch/g" README.md
sed --in-place "s/$last_patch_branch/$patch_branch/g" README.md

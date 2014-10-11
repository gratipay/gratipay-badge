#!/bin/bash
# Echo out commands and exit on first failure
set -e
set -x

# Generate our badge
phantomjs lib/gratipay-badge.js

# If there is a tmp/ directory, clean it out
if test -d tmp/; then
  rm -r tmp/
fi

# Minify the badge content
mkdir tmp/
mv dist/gratipay.png tmp/
pngcrush tmp/gratipay.png dist/gratipay.png
cp dist/gratipay.png dist/gittip.png

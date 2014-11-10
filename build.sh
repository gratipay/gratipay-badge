#!/bin/bash
# Echo out commands and exit on first failure
set -e
set -x

# Generate our PNG badge
phantomjs lib/gratipay-badge.js

# If there is a tmp/ directory, clean it out
if test -d tmp/; then
  rm -r tmp/
fi

# Minify the PNG content
mkdir tmp/
mv dist/gratipay.png tmp/
pngcrush tmp/gratipay.png dist/gratipay.png
cp dist/gratipay.png dist/gittip.png

# Minify the SVG content
# DEV: We should use `npm-run-script` but this is more straightforward to those unfamiliar with `npm`
./node_modules/.bin/svgo --disable convertPathData --input lib/gratipay.svg --output dist/gratipay.svg

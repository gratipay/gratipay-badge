#!/bin/bash
# Generate our badge
phantomjs lib/gittip-badge.js

# Minify the badge content
mkdir tmp/
mv dist/gittip.png tmp/
pngcrush tmp/gittip.png dist/gittip.png

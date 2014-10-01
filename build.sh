#!/bin/bash
# Generate our badge
phantomjs lib/gratipay-badge.js

# Minify the badge content
mkdir tmp/
mv dist/gratipay.png tmp/
pngcrush tmp/gratipay.png dist/gratipay.png

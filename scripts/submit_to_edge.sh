#!/bin/bash

echo "::group::Submit to Edge"
pnpm zip
pnpm wxt submit \
  $([ "$1" == 'true' ] && echo "--dry-run") \
  --edge-zip .output/*-chrome.zip
echo "::endgroup::"

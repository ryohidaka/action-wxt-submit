#!/bin/bash

echo "::group::Submit to Chrome"
pnpm zip
pnpm wxt submit \
  $([ "$1" == 'true' ] && echo "--dry-run") \
  --chrome-zip .output/*-chrome.zip
echo "::endgroup::"

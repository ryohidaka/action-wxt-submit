#!/bin/bash

echo "::group::Submit to Edge"
cd "$1" || exit 1
nr zip
nr wxt submit \
  $([ "$2" == 'true' ] && echo "--dry-run") \
  --edge-zip .output/*-chrome.zip
echo "::endgroup::"

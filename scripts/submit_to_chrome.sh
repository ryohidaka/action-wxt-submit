#!/bin/bash

echo "::group::Submit to Chrome"
cd "$1" || exit 1
nr zip
nr wxt submit \
  $([ "$2" == 'true' ] && echo "--dry-run") \
  --chrome-zip .output/*-chrome.zip
echo "::endgroup::"

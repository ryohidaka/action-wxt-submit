#!/bin/bash

echo "::group::Submit to Firefox"
cd "$1" || exit 1
nr zip:firefox
nr wxt submit \
  $([ "$2" == 'true' ] && echo "--dry-run") \
  --firefox-zip .output/*-firefox.zip --firefox-sources-zip .output/*-sources.zip
echo "::endgroup::"

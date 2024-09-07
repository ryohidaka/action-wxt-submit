#!/bin/bash

echo "::group::Submit to Firefox"
pnpm zip:firefox
pnpm wxt submit \
  $([ "$1" == 'true' ] && echo "--dry-run") \
  --firefox-zip .output/*-firefox.zip --firefox-sources-zip .output/*-sources.zip
echo "::endgroup::"

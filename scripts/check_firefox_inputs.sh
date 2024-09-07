#!/bin/bash

echo "::group::Check required inputs for Firefox Addon"

if [ -z "$1" ]; then
  echo "::error:: Firefox Extension ID is required."
  exit 1
fi

if [ -z "$2" ]; then
  echo "::error:: Firefox JWT Issuer is required."
  exit 1
fi

if [ -z "$3" ]; then
  echo "::error:: Firefox JWT Secret is required."
  exit 1
fi

echo "::notice:: All required inputs for Firefox Addon are provided."
echo "::endgroup::"

#!/bin/bash

echo "::group::Check required inputs for Chrome Extension"

if [ -z "$1" ]; then
  echo "::error:: Chrome Extension ID is required."
  exit 1
fi

if [ -z "$2" ]; then
  echo "::error:: Chrome Client ID is required."
  exit 1
fi

if [ -z "$3" ]; then
  echo "::error:: Chrome Client Secret is required."
  exit 1
fi

if [ -z "$4" ]; then
  echo "::error:: Chrome Refresh Token is required."
  exit 1
fi

echo "::notice:: All required inputs for Chrome Extension are provided."
echo "::endgroup::"

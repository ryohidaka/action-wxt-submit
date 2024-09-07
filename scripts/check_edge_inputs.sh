#!/bin/bash

echo "::group::Check required inputs for Edge Extension"

if [ -z "$1" ]; then
  echo "::error:: Edge Product ID is required."
  exit 1
fi

if [ -z "$2" ]; then
  echo "::error:: Edge Client ID is required."
  exit 1
fi

if [ -z "$3" ]; then
  echo "::error:: Edge Client Secret is required."
  exit 1
fi

if [ -z "$4" ]; then
  echo "::error:: Edge Access Token URL is required."
  exit 1
fi

echo "::notice:: All required inputs for Edge Extension are provided."
echo "::endgroup::"

#!/bin/bash

echo "::group::Install dependencies"
cd "$1" || exit 1
pnpm install
echo "::endgroup::"

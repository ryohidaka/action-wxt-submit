#!/bin/bash
set -e

echo "::group::Install dependencies"

ROOT_PATH="${1:-.}"

cd "$ROOT_PATH"

# Install @antfu/ni globally if not already installed
if ! command -v ni &> /dev/null; then
  echo "Installing @antfu/ni..."
  npm install -g @antfu/ni
fi

# Use ni to install dependencies (automatically detects the package manager)
echo "Installing dependencies using ni..."
ni

echo "::endgroup::"

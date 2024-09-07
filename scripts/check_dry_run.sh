#!/bin/bash

if [ "$1" == 'true' ]; then
  echo "::notice:: Dryrun mode is enabled"
else
  echo "::notice:: Dryrun mode is disabled"
fi

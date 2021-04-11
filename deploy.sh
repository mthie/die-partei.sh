#!/bin/bash

set -xe

if [ -d "public" ]; then
  rm -r public
fi

/usr/local/bin/hugo-die-partei-cms
firebase --project die-partei-sh deploy

if [ -d "public" ]; then
  rm -r public
fi

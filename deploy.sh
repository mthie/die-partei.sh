#!/bin/bash

set -xe

if [ -d "public" ]; then
  rm -r public
fi

hugo
firebase --project die-partei-sh deploy

if [ -d "public" ]; then
  rm -r public
fi

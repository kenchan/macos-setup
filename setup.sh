#!/bin/bash

MITAMAE_BIN="mitamae-x86_64-darwin"
MITAMAE_VERSION="1.3.2"

if [ ! -e ./${MITAMAE_BIN} ]; then
  curl -LJO https://github.com/k0kubun/mitamae/releases/download/v${MITAMAE_VERSION}/${MITAMAE_BIN}.tar.gz
  tar -zxf ${MITAMAE_BIN}.tar.gz
fi

./${MITAMAE_BIN} local --node-yaml node.yaml recipe.rb

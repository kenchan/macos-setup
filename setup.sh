#!/bin/bash

MITAMAE_VERSION="1.5.2"

if [ ! -e bin/mitamae ]; then
  curl -LJO https://github.com/k0kubun/mitamae/releases/download/v${MITAMAE_VERSION}/mitamae-x86_64-darwin.tar.gz
  tar -zxf mitamae-x86_64-darwin.tar.gz -C bin
  rm mitamae-x86_64-darwin.tar.gz
  ln -sf mitamae-x86_64-darwin bin/mitamae
fi

bin/mitamae local --node-yaml node.yaml recipe.rb

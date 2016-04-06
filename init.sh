#!/bin/bash
git submodule update --init
pushd bundle/tern_for_vim
npm install
popd

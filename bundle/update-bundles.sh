#!/usr/bin/env bash

find -mindepth 1 -maxdepth 1 -type d -name 'vim-*' | while read -r DIR ; do
    pushd "$DIR" >/dev/null
    git pull
    popd >/dev/null
    echo "UPDATED $DIR"
done 

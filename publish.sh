#!/bin/bash

cd "$(dirname "$0")"
prev=$(git rev-parse HEAD)

git pull -f --no-edit

# build only if we have new commit(s)...
if [ "$prev" != "$(git rev-parse HEAD)" ]; then
    echo "We have new commit(s), building an updated site..."
    rvm . do jekyll build && cp -R _site/* ~/archlinux.tw/
else
    echo "No new commit(s), bye!"
fi

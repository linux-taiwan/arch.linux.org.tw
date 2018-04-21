#!/bin/bash

cd `dirname $0`
git pull -f --no-edit
rvm . do jekyll build
cp -R _site/* ~/archlinux.tw/

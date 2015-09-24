#!/bin/bash

source `dirname $0`/main.sh

git_repo https://github.com/niccokunzmann/learn.opentechschool.org.git overview gh-pages

cd overview

bundle install

rm -rf _site/*

jekyll build


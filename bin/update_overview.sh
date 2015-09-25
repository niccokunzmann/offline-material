#!/bin/bash

source `dirname $0`/main.sh

source ~/.rvm/scripts/rvm
rvm use 1.9.3

git_repo https://github.com/niccokunzmann/learn.opentechschool.org.git overview gh-pages

cd overview

bundle install

rm -rf _site/*

jekyll build

cp $files_folder/tutorials_index.html ../index.html


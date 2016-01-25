#!/bin/bash

source `dirname $0`/main.sh

source ~/.rvm/scripts/rvm
rvm use 1.9.3

git_repo https://github.com/niccokunzmann/learn.opentechschool.org.git overview-repo gh-pages

cd overview-repo

bundle install

rm -rf _site/*
rm -rf ../overview

jekyll build --destination ../overview

cp $files_folder/tutorials_index.html ../index.html


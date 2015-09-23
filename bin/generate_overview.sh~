#!/bin/bash

# 1. install rvm 
#   https://rvm.io/rvm/install
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

sudo apt-get -y install curl

\curl -sSL https://get.rvm.io | bash

PATH=!/.rvm/bin:$PATH

# http://stackoverflow.com/questions/9336596/rvm-installation-not-working-rvm-is-not-a-function
source ~/.rvm/scripts/rvm

rvm install 1.9.3
rvm use 1.9.3
rvm rubygems latest

gem install bundler

source main.sh

git_repo https://github.com/niccokunzmann/learn.opentechschool.org.git overview gh-pages

cd overview

bundle install

rm -rf _site/*

jekyll build



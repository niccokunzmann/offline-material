#!/bin/bash

source `dirname $0`/main.sh

mkdir -p OpenTechSchool
cd OpenTechSchool

# Python
git_repo https://github.com/OpenTechSchool/python-beginners.git python-beginners gh-pages

# Javascript
git_repo https://github.com/OpenTechSchool/js-beginners-4h-workshop-1.git js-beginners-4h-workshop-1 gh-pages
git_repo https://github.com/OpenTechSchool/js-beginners-day2.git js-beginners-day2 gh-pages


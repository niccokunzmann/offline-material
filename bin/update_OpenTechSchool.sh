#!/bin/bash

source `dirname $0`/main.sh

mkdir -p OpenTechSchool
cd OpenTechSchool

git_repo https://github.com/OpenTechSchool/python-beginners.git python-beginners gh-pages
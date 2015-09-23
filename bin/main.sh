#!/bin/bash

cd `dirname $0`
mkdir -p ../tutorials
PATH=`pwd`:$PATH
cd ../tutorials/

if ! type git >> /dev/null
then
   sudo apt-get -y install git
fi

mkdir -p OpenTechSchool

#!/bin/bash

cd `dirname $0`

bin_folder=`pwd`
files_folder=$bin_folder/files

mkdir -p ../tutorials
mkdir -p ../downloads
mkdir -p ../uploads

PATH=`pwd`:$PATH
cd ../tutorials/

if ! type git >> /dev/null
then
   sudo apt-get -y install git
fi

mkdir -p OpenTechSchool

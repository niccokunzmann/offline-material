#!/bin/bash

source `dirname $0`/main.sh

if ! type unzip >> /dev/null
then
  sudo apt-get -y install unzip || exit 1
fi

git_repo https://github.com/google/blockly-games.git blockly-games-repo offline || exit 1

rm -rf blockly-games

mkdir -p blockly-games

for zip_file in blockly-games-repo/generated/*.zip
do
  unzip $zip_file
  rm -f blockly-games/index.html
done

cp -r $files_folder/blockly-games/* ../tutorials/blockly-games

#!/bin/bash

source `dirname $0`/main.sh

mkdir -p ../downloads/HourOfCode

wget -p -k http://lightbot.com/hocflash.html

zip -r ../downloads/HourOfCode/lightbot.com.zip lightbot.com


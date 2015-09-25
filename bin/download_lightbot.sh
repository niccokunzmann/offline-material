#!/bin/bash

source `dirname $0`/main.sh

wget -p -k http://lightbot.com/hocflash.html

zip -r ../downloads/lightbot.com.zip lightbot.com

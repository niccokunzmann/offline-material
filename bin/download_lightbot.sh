#!/bin/bash

source `dirname $0`/main.sh

rm -rf lightbot.com

mkdir -p ../downloads/HourOfCode

wget -p -k http://lightbot.com/hocflash.html

echo "<html>
  <head>
    <meta http-equiv=refresh content='0; url=hocflash.html' />
  </head>
</html>" > lightbot.com/index.html

rm -f ../downloads/HourOfCode/lightbot.com.zip
zip -r ../downloads/HourOfCode/lightbot.com.zip lightbot.com


#!/bin/bash

#ps axf | grep raspivid | grep -v grep | awk '{print "kill -9 " $1}' | sh
#ps axf | grep ffmpeg | grep -v grep | awk '{print "kill -9 " $1}' | sh

# killall ffmpeg
killall raspivid

while true; do
  raspivid -t 99999999 -w 960 -h 540 -fps 25 -b 500000 -o - | ffmpeg -i - -vcodec copy -an -f flv rtmp://pili-in.qiniu.com/livestream/o7hghf8k?stream_key=c0ab7734-2c29-4b76-b982-0fda3f242337
do

##nohup sh run.sh -P run.pid >> run.log 2>&1 &

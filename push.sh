#!/bin/bash

# killall ffmpeg
killall raspivid

while true; do
  raspivid -t 99999999 -w 960 -h 540 -fps 25 -b 500000 -o - | /usr/local/bin/ffmpeg -i - -vcodec copy -an -f flv rtmp://pili-in.qiniu.com/livestream/o7hghf8k?stream_key=c0ab7734-2c29-4b76-b982-0fda3f242337
done

##nohup sh run.sh -P run.pid >> run.log 2>&1 &

## rtmp://ws1.src.rtmp.pili.qiniu.com/livestream/o7hghf8k
## rtmp://pili-in.qiniu.com/livestream/o7hghf8k


### ffmpeg -re -i thinking-in-go.mp4 -acodec copy -vcodec copy -f flv "rtmp://pili-in.qiniu.com/livestream/okf7k64o?nonce=1419432914005&token=r_3ppzBV0go-II63mVTTmXeVhH4="

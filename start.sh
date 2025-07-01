#!/bin/sh

ffmpeg -re -stream_loop -1 -i "$VIDEO_URL" \
-c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k \
-pix_fmt yuv420p -g 60 -c:a aac -b:a 128k \
-f flv "rtmp://a.rtmp.youtube.com/live2/$STREAM_KEY"

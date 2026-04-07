#!/bin/bash

while true
do
ffmpeg -re -stream_loop -1 -i video.mp4 -c:v libx264 -preset veryfast -pix_fmt yuv420p -f flv rtmps://live-api-s.facebook.com:443/rtmp/YOUR_STREAM_KEY

sleep 5
done

#!/bin/bash

while true
do
ffmpeg -re -stream_loop -1 -i video.mp4 -c:v libx264 -preset veryfast -pix_fmt yuv420p -f flv rtmps://live-api-s.facebook.com:443/rtmp/FB-122125607511142480-0-Ab4GG6n1WrurjXG46D6P_5ST

sleep 5
done

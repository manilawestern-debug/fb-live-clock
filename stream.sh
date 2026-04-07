#!/bin/bash

while true
do
ffmpeg -re -stream_loop -1 -i video.mp4 -vf "drawtext=fontfile=digital.ttf:text='Philippines':fontsize=40:fontcolor=white@0.7:x=(w-text_w)/2:y=120,drawtext=fontfile=digital.ttf:text='%{localtime\:%I\\:%M\\:%S}':fontsize=130:fontcolor=white:x=(w-text_w)/2:y=(h-text_h)/2-20,drawtext=fontfile=digital.ttf:text='%{localtime\:%p}':fontsize=50:fontcolor=white@0.9:x=(w-text_w)/2+250:y=(h-text_h)/2+20,drawtext=fontfile=digital.ttf:text='%{localtime\:%A, %d %B %Y}':fontsize=35:fontcolor=white@0.7:x=(w-text_w)/2:y=h-140" -an -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -f flv rtmps://live-api-s.facebook.com:443/rtmp/YOUR_STREAM_KEY

sleep 5
done

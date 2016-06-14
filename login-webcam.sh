#!/bin/bash
time=$(date -I"seconds")
ffmpeg -f video4linux2 -s 640x480 -i /dev/video0 -frames 1 "/var/log/login-webcam/$time.jpg"
exit 0

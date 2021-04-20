@echo off
mkdir "360p"
mkdir "720p"
mkdir "1080p"
ffmpeg -i video.mp4 -profile:v baseline -level 3.0 -s 640x360 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls 360p/video[360P].m3u8
ffmpeg -i video.mp4 -profile:v baseline -level 3.0 -s 1280x720 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls 720p/video[720P].m3u8
ffmpeg -i video.mp4 -profile:v baseline -level 3.0 -s 1920x1080 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls 1080p/video[1080P].m3u8

exit

使用FFMPEG mp4轉M3U8
=============
前置</br>
準備 ffmpeg</br>
準備影片檔案  video.mp4</br>
![image](https://imneverdied.github.io/mp4-to-m3u8/pic/1.png)</br>
按 makem3u8Vedio.bat </br>
自動產出360.720.1080 3種解析度m3u8影片
![image](https://imneverdied.github.io/mp4-to-m3u8/pic/2.png)</br>
![image](https://imneverdied.github.io/mp4-to-m3u8/pic/3.png)</br>




ffmpeg -i "video.mp4" -profile:v baseline -level 3.0 -s 640x360 -start_number 0 -hls_time 10 -hls_list_size 0 -f hls 360p/video[360P].m3u8 </br>
            影片來源                                    產出解析度                                                         產出檔名                    

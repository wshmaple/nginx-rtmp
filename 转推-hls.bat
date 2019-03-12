echo ffmpeg 录制桌面 推送到流媒体服务器（hls） 
echo vlc 访问  rtmp://localhost:1935/hls/t1
echo html 访问  http://localhost:8080/hls/t1/index.m3u8
start ffmpeg -i "rtmp://live.hkstv.hk.lxdns.com/live/hks2" -vcodec libx264 -preset:v ultrafast -tune:v zerolatency -acodec copy -f flv "rtmp://localhost:1935/hls/t1"
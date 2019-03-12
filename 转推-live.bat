echo ffmpeg 录制桌面 推送到流媒体服务器（live） 
echo vlc 访问  rtmp://localhost:1935/live/t1
start ffmpeg -i "rtmp://live.hkstv.hk.lxdns.com/live/hks2" -vcodec libx264 -preset:v ultrafast -tune:v zerolatency -an -f flv "rtmp://localhost:1935/live/t1"
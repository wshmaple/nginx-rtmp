echo ffmpeg 录制桌面 推送到流媒体服务器（live） 
echo vlc 访问  rtmp://localhost:1935/live/t0
start ffmpeg -f gdigrab -i desktop -vcodec libx264 -preset ultrafast -acodec libmp3lame -ar 44100 -ac 1 -s 320x240 -f flv rtmp://localhost:1935/live/t0
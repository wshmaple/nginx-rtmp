echo ffmpeg ¼������ ���͵���ý���������hls�� 
echo vlc ����  rtmp://localhost:1935/hls/t1
echo html ����  http://localhost:8080/hls/t1/index.m3u8
start ffmpeg -i "rtmp://live.hkstv.hk.lxdns.com/live/hks2" -vcodec libx264 -preset:v ultrafast -tune:v zerolatency -acodec copy -f flv "rtmp://localhost:1935/hls/t1"
echo ffmpeg ¼������ ���͵���ý���������live�� 
echo vlc ����  rtmp://localhost:1935/live/t1
start ffmpeg -i "rtmp://live.hkstv.hk.lxdns.com/live/hks2" -vcodec libx264 -preset:v ultrafast -tune:v zerolatency -an -f flv "rtmp://localhost:1935/live/t1"
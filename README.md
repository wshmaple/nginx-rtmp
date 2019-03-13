# nginx-rtmp
nginx-rtmp 流媒体服务器
- 将文件放在非中文路径（路径不要带空格）下。
- 双击nginx-rtmp-win32-dev下的nginx.exe打开流媒体服务。任务管理器里面会有nginx.exe的进程信息。
# 测试
- 可以直接运行    "转推-hls.bat"。
    HLS
```Bash
echo ffmpeg 录制桌面 推送到流媒体服务器（hls） 
echo vlc 访问  rtmp://localhost:1935/hls/t1
echo html 访问  http://localhost:8080/hls/t1/index.m3u8
start ffmpeg -i "rtmp://live.hkstv.hk.lxdns.com/live/hks2" -vcodec libx264 -preset:v ultrafast -tune:v zerolatency -acodec copy -f flv "rtmp://localhost:1935/hls/t1"
```
    Live
```Bash
echo ffmpeg 录制桌面 推送到流媒体服务器（live） 
echo vlc 访问  rtmp://localhost:1935/live/t1
start ffmpeg -i "rtmp://live.hkstv.hk.lxdns.com/live/hks2" -vcodec libx264 -preset:v ultrafast -tune:v zerolatency -an -f flv "rtmp://localhost:1935/live/t1"
```
- 在浏览器中输入 http://localhost:8080/w/
- 在播放器上面的地址输入hls播放地址  http://localhost:8080/hls/t1/index.m3u8
- 点击播放按钮，就能看到播放效果了。
# 效果
https://github.com/wshmaple/nginx-rtmp/blob/master/nginx1.gif
![](https://github.com/wshmaple/nginx-rtmp/blob/master/nginx1.gif)
#可用的网络地址

- 湖南卫视  rtmp://58.200.131.2:1935/livetv/hunantv
- 美国中文电视,rtmp://media3.sinovision.net:1935/live/livestream
- 美国1,rtmp://ns8.indexforce.com/home/mystream
- CCTV6高清：http://ivi.bupt.edu.cn/hls/cctv6hd.m3u8
- CCTV5+高清：http://ivi.bupt.edu.cn/hls/cctv5phd.m3u8
- CCTV3高清：http://ivi.bupt.edu.cn/hls/cctv3hd.m3u8
- CCTV1高清：http://ivi.bupt.edu.cn/hls/cctv1hd.m3u8

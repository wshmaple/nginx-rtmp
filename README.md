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

#!/bin/bash
# 指定Android设备ID
DEVICEID=$ANDROID_DEVICE_ID
# 保存路径
FILE=/mnt/sdcard/Movies/Screenrecords/_temp.mp4
# 保存至本地，默认桌面
if [ $# -ne 1 ]; then
    adb.sh pull $FILE /Users/hayukleung/Desktop/
else 
    adb.sh pull $FILE $1
fi

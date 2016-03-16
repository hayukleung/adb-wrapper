#!/bin/bash
# 指定Android设备ID
DEVICEID=$ANDROID_DEVICE_ID
# 保存路径
FILE=/mnt/sdcard/Pictures/Screenshots/_temp.png
# 截屏
adb -s $DEVICEID shell screencap -p $FILE
# 保存至本地，默认桌面
if [ $# -ne 1 ]; then
    adb -s $DEVICEID pull $FILE /Users/hayukleung/Desktop/
else 
    adb -s $DEVICEID pull $FILE $1
fi

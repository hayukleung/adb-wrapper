#!/bin/bash
# 指定Android设备ID
DEVICEID=$ANDROID_DEVICE_ID
# 保存路径
FILE=/mnt/sdcard/Pictures/Screenshots/_temp.png
# 截屏
if [ $# -ne 1 ]; then
    shell.sh screencap -p $FILE
else
    adb -s $1 shell screencap -p $FILE
fi
# 保存至本地，默认桌面
if [ $# -ne 1 ]; then
    adb.sh pull $FILE /Users/hayukleung/Desktop/
else 
    adb -s $1 pull $FILE /Users/hayukleung/Desktop/
fi

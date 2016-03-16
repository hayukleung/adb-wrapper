#!/bin/bash
# 指定Android设备ID
DEVICEID=$ANDROID_DEVICE_ID
# 保存路径
DIR=/mnt/sdcard/Movies/Screenrecords
FILE=${DIR}/_temp.mp4
# 建立文件夹
adb -s $DEVICEID shell mkdir /mnt/sdcard/Movies
adb -s $DEVICEID shell mkdir /mnt/sdcard/Movies/Screenrecords
# 开始录像，终止录像ctrl+c
adb -s $DEVICEID shell screenrecord $FILE

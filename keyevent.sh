#!/bin/bash
# 指定Android设备ID
DEVICEID=$ANDROID_DEVICE_ID
# 键盘事件
adb -s $DEVICEID shell input keyevent $1

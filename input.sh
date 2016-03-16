#!/bin/bash
# 指定Android设备ID
DEVICEID=$ANDROID_DEVICE_ID
# 输入字符
adb -s $DEVICEID shell input text $1

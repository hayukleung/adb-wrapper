#!/bin/bash
# 指定Android设备ID
DEVICEID=$ANDROID_DEVICE_ID
# adb 封装
adb -s $ANDROID_DEVICE_ID "$@"

#!/bin/bash
# 指定Android设备ID
DEVICEID=$ANDROID_DEVICE_ID
if [ $# -ne 1 ]; then
    echo "请输入APP包名"
else
    # 启动应用
    shell.sh am start $1
fi

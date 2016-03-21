#!/bin/bash
# 安装APK
if [ $# -eq 1 ]; then
    adb.sh install $1
else 
    if [ $# -eq 2 ]; then
        adb.sh install $1 $2
    else 
        echo "install.sh [option] [apk]"
    fi
fi

#!/bin/bash
# TODO 待调试
if [ $# -ne 2 ]; then
    echo "请输入坐标：click.sh x y"
else
    shell.sh sendevent /dev/input/event0 3 0 $1
    shell.sh sendevent /dev/input/event0 3 1 $2
 
    shell.sh sendevent /dev/input/event0 1 330 1
    shell.sh sendevent /dev/input/event0 0 0 0
 
    shell.sh sendevent /dev/input/event0 1 330 0
    shell.sh sendevent /dev/input/event0 0 0 0
fi

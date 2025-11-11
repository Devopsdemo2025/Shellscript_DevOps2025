#!/bin/bash
#
checkprocess=" sshd jenkins "
for i in $checkprocess
do
        ps -C $i
        if [ $? -ne 0 ]
        then
                echo "Service $i not running"
        fi
done

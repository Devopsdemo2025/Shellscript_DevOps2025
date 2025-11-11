#!/bin/bash

#set -x

read top_process cpu_usage <<< "$(ps -eo comm,%cpu --sort=-%cpu | awk 'NR==2 {print $1, $2}')"

if [ -z "$top_process" ]
then
    echo "No process available"
    exit 1
fi

cpu_int=${cpu_usage%.*}

# Check if top process is Jenkins and CPU usage > 75
if [[ "$top_process" == "jenkins" && "$cpu_int" -gt 75 ]]
then
    echo "Jenkins is the top CPU-consuming process, using ${cpu_usage}% CPU"
else
    echo "Not a Jenkins process or CPU usage below 75%"
fi

#!/bin/bash

THRESHOLD=80                # % CPU usage limit
EMAIL="sandeepdevopspractice19@gmail.com"     # Email to notify

# Stress CPU for 1 minute
stress --cpu 4 --timeout 60s &

# Check CPU usage every 5 seconds
while true; do
  CPU=$(mpstat 1 1 | awk '/Average/ && $12 ~ /[0-9.]+/ {print 100 - $12}')
  CPU_INT=${CPU%.*}

  echo "CPU Usage: $CPU%"

  if [ "$CPU_INT" -gt "$THRESHOLD" ]; then
    echo "High CPU usage: $CPU%" | mail -s "CPU Alert!" "$EMAIL"
    echo "Email sent to $EMAIL"
    break
  fi

  sleep 5
done

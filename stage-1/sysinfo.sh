#!/usr/bin/env bash

host="$(uname -n)"
today="$(date +%F)"

echo "Host: $host"
echo "Date: $today"

source /etc/os-release
echo "OC: $PRETTY_NAME"

uptime_str="$(uptime -p)"
disk_usage="$(df -h --output=pcent / | tail -n 1 | tr -d ' ')"
echo "Uptime: $uptime_str"
echo "Usage disk space: $disk_usage"


#!/bin/bash
touch system_stats.log
(while true; do
    echo "Timestamp: $(date)" >> system_stats.log
    echo "CPU Usage:" >> system_stats.log
    top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}' >> system_stats.log
    echo "Memory Usage:" >> system_stats.log
    free -m >> system_stats.log
    echo "Disk Usage:" >> system_stats.log
    df -h >> system_stats.log
    echo "--------------------------------------" >> system_stats.log
    sleep 10
done)&
tail -f system_stats.log
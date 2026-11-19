
#!/bin/bash

# Linux Server Monitoring Script

LOG_DIR="$HOME/linux-monitoring/logs"
LOG_FILE="$LOG_DIR/server_health.log"

mkdir -p "$LOG_DIR"

TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

# CPU Usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
CPU_USAGE=${CPU_USAGE%.*}

# Memory Usage
MEMORY_USAGE=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')

# Disk Usage
DISK_USAGE=$(df -P / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "===================================="
echo "Server Health Report"
echo "Time: $TIMESTAMP"
echo "CPU Usage: ${CPU_USAGE}%"
echo "Memory Usage: ${MEMORY_USAGE}%"
echo "Disk Usage: ${DISK_USAGE}%"

# Threshold Checks
if [ "$CPU_USAGE" -ge 80 ]; then
    echo "WARNING: High CPU Usage!"
fi

if [ "$MEMORY_USAGE" -ge 80 ]; then
    echo "WARNING: High Memory Usage!"
fi

if [ "$DISK_USAGE" -ge 80 ]; then
    echo "WARNING: High Disk Usage!"
fi

echo "===================================="

# Save report to log file
{
    echo "Time=$TIMESTAMP CPU=${CPU_USAGE}% RAM=${MEMORY_USAGE}% DISK=${DISK_USAGE}%"
} >> "$LOG_FILE"


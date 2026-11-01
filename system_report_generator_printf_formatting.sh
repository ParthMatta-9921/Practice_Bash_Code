#!/bin/bash

# Define the output file
report_file="system_report.txt"

# Clear any existing report
> $report_file

# Add formatted header
printf "=======================================\n" >> $report_file
printf "       %s        \n" "SYSTEM INFORMATION REPORT" >> $report_file
printf "       %s        \n" "Generated on: $(date)" >> $report_file
printf "=======================================\n\n" >> $report_file

# CPU Information
printf "%-15s %s\n" "CPU:" "$(grep "model name" /proc/cpuinfo | head -1 | cut -d: -f2 | sed 's/^[ \t]*//')" >> $report_file

# Memory Information
total_mem=$(free -m | grep Mem | awk '{print $2}')
used_mem=$(free -m | grep Mem | awk '{print $3}')
printf "%-15s %d MB (Used: %d MB)\n" "Memory:" $total_mem $used_mem >> $report_file

# Disk Information
disk_info=$(df -h / | tail -1)
disk_size=$(echo $disk_info | awk '{print $2}')
disk_used=$(echo $disk_info | awk '{print $3}')
disk_percent=$(echo $disk_info | awk '{print $5}')
printf "%-15s %s (Used: %s, %s)\n" "Disk Space:" $disk_size $disk_used $disk_percent >> $report_file

# System Uptime
uptime_info=$(uptime -p)
printf "%-15s %s\n" "Uptime:" "$uptime_info" >> $report_file

# Add a table of processes
printf "\n%-6s %-10s %-8s %-6s %s\n" "PID" "USER" "CPU%" "MEM%" "COMMAND" >> $report_file
printf "%-6s %-10s %-8s %-6s %s\n" "--" "----" "----" "----" "-------" >> $report_file
	
# Get top 5 processes by CPU usage
ps aux --sort=-%cpu | head -6 | tail -5 | while read line; do
  pid=$(echo $line | awk '{print $2}')
  user=$(echo $line | awk '{print $1}')
  cpu=$(echo $line | awk '{print $3}')
  mem=$(echo $line | awk '{print $4}')
  cmd=$(echo $line | awk '{print $11}')
  printf "%-6s %-10s %-8.1f %-6.1f %s\n" "$pid" "$user" "$cpu" "$mem" "$cmd" >> $report_file
done

echo "Report generated: $report_file"
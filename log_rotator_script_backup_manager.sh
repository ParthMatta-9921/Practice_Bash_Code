#!/bin/zsh
 
REPORT_FILE=report.txt
LOG_FILES=("/home/labex/project/logs/app1.log" "/home/labex/project/logs/db.log" "/home/labex/project/logs/auth.log")

cleanup(){
        echo "Cleaning up..."
        rm $REPORT_FILE 
}
archive_log(){
        local file_path=$1 # to capture first argument
        local new_name="${file_path/.log/.backup}" # string manipulation
        if [ -f "$file_path" ]; then
          cp "$file_path" "$new_name"
        fi
        echo "Backed up: $file_path" >> $REPORT_FILE
}
for log in "${LOG_FILES[@]}"; do
        if [ -f "$log" ]; then
          archive_log $log #this goes to file_path
        else
         echo "File not found: $log"
        fi
done
trap 'cleanup' EXIT
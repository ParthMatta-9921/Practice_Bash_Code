cat << EOF > process_logs.sh
#!/bin/zsh
for i in {1..1000}; do
    echo "Processing log entry $i" >> output.log
done
sort output.log > sorted_output.log
uniq -c sorted_output.log > final_output.log
rm output.log sorted_output.log
EOF

chmod +x process_logs.sh
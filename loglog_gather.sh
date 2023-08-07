#!/bin/bash

# Define the log directory and output file
LOG_DIR="/path/to/log/directory"
OUTPUT_FILE="/path/to/output/logfile.log"

# List of log files to gather (modify this according to your requirements)
LOG_FILES=(
  "logfile1.log"
  "logfile2.log"
  "logfile3.log"
)

# Function to gather logs
gather_logs() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - Gathering logs..." >> "$OUTPUT_FILE"
  for log_file in "${LOG_FILES[@]}"; do
    cat "$LOG_DIR/$log_file" >> "$OUTPUT_FILE"
  done
  echo "Logs gathered successfully." >> "$OUTPUT_FILE"
}

# Execute the function to gather logs
gather_logs

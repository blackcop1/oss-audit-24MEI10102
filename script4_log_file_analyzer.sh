#!/bin/bash
# Script 4: Log File Analyzer
# Author: TUSHAR SUDARSHEE | Reg No: 24MEI10102
# Usage: ./script4_log_file_analyzer.sh /var/log/syslog [keyword]
# Concepts: args ($1/$2), while read loop, if, counters, retry loop

# Default log file for Ubuntu-style syslog
LOGFILE="${1:-/var/log/syslog}"

# Default keyword is "error" if not provided
KEYWORD="${2:-error}"

# Counter for matching lines
COUNT=0

# Ensure the log file exists
if [ ! -f "$LOGFILE" ]; then
  echo "Error: File '$LOGFILE' not found."
  echo "Try: /var/log/syslog (Ubuntu) or /var/log/messages (some distros)"
  exit 1
fi

# Do-while style retry loop: if file is empty, retry a few times
TRIES=0
MAX_TRIES=3
while [ ! -s "$LOGFILE" ] && [ $TRIES -lt $MAX_TRIES ]; do
  TRIES=$((TRIES + 1))
  echo "Log file is empty. Retry $TRIES/$MAX_TRIES in 2 seconds..."
  sleep 2
done

# If still empty after retries, stop gracefully
if [ ! -s "$LOGFILE" ]; then
  echo "Log file is still empty after $MAX_TRIES retries: $LOGFILE"
  exit 0
fi

# Read file line by line and count matches (case-insensitive)
while IFS= read -r LINE; do
  if echo "$LINE" | grep -iq "$KEYWORD"; then
    COUNT=$((COUNT + 1))
  fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

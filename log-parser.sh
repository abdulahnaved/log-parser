#!/bin/bash

LOGFILE=${1:-nginx-access.log}

echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$LOGFILE" | sort | uniq -c | sort -nr | head -5

echo ""
echo "Top 5 most requested paths:"
awk -F\" '{print $2}' "$LOGFILE" | awk '{print $2}' | sort | uniq -c | sort -nr | head -5

echo ""
echo "Top 5 response status codes:"
awk '{print $9}' "$LOGFILE" | sort | uniq -c | sort -nr | head -5

echo ""
echo "Top 5 user agents:"
awk -F\" '{print $6}' "$LOGFILE" | sort | uniq -c | sort -nr | head -5

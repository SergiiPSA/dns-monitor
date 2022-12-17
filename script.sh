#!/bin/bash

# Set variables for hostname, interval, and substring
hostname="futurestay.com"
interval=5
substring="google-site"

# Use a while loop to continuously monitor the DNS TXT records
while true; do
  # Use the dig command to retrieve the TXT records for the specified hostname
  txt_records=$(dig TXT $hostname)

  # Check if the substring is present in any of the TXT records
  if [[ $txt_records == *"$substring"* ]]; then
    # If the substring is present, print the current date and time
    date
  fi

  # Sleep for the specified interval before checking again
  sleep $interval
done

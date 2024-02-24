#!/bin/bash

# Check if both IP address and record are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <IP_address> <record>"
    exit 1
fi

# Assign arguments to variables
ip_address="$1"
record="$2"

# Define the JSON payload using the provided arguments
json_payload=$(cat <<EOF
{
  "IP": "$ip_address",
  "record": "$record"
}
EOF
)

# Set the URL to which the POST request will be sent
url="http://192.168.10.6:3000/add"  # Replace with your actual endpoint URL

# Send the POST request with the JSON payload
curl -X POST -H "Content-Type: application/json" -d "$json_payload" "$url"

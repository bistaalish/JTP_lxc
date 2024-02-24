#!/bin/bash

# Set the URL to which the POST request will be sent
url="http://192.168.10.6:3000/reset"  # Replace with your actual endpoint URL

# Send the POST request with the JSON payload
curl  "$url"

#!/bin/bash

# Install ngrok using Snap
sudo snap install ngrok

# Authenticate with ngrok using the provided token
sudo ngrok config add-authtoken 3IwjZMmce2fmYCdcKyESHjYpqtT_6YHmkqJj7p8bCkssB8EzE

# Create TCP tunnel for port 22
#ngrok tcp 22 &

# Create TCP tunnel for port 3389
sudo ngrok tcp 22 &

echo "ngrok installed and tunnels created successfully."

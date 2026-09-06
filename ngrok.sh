#!/bin/bash
set -e

# Install ngrok
sudo snap install ngrok

# Create config directory
mkdir -p "$HOME/.config/ngrok"

# Add token (replace with a new token)
ngrok config add-authtoken 3IwjZMmce2fmYCdcKyESHjYpqtT_6YHmkqJj7p8bCkssB8EzE

# Start SSH tunnel
nohup ngrok tcp 22 > ngrok.log 2>&1 &

echo "ngrok tunnel started"

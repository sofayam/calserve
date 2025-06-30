#!/bin/bash

# This script builds the Docker image for the Calibre server.

echo "Building Calibre server Docker image..."
docker build -t calibre-server:latest .
echo "Build complete."

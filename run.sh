#!/bin/bash

# This script runs the Calibre server Docker container.

# Load environment variables from .env file if it exists
if [ -f .env ]; then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi

# Set default values if not provided in .env file
CALIBRE_PORT=${CALIBRE_PORT:-8080}
CALIBRE_LIBRARY_PATH=${CALIBRE_LIBRARY_PATH:-./library}

# Create the library directory if it doesn't exist
mkdir -p ${CALIBRE_LIBRARY_PATH}

echo "Starting Calibre server on port ${CALIBRE_PORT}..."
echo "Library path: ${CALIBRE_LIBRARY_PATH}"

docker run -d \
  -p ${CALIBRE_PORT}:8080 \
  -v "$(pwd)/${CALIBRE_LIBRARY_PATH}":/home/calibre/library \
  --name calibre-server \
  calibre-server:latest

echo "Calibre server started."


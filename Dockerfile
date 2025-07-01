
# Use a base image with Python and necessary tools
FROM python:3.9-slim

# Set environment variables to prevent interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies for Calibre
RUN apt-get update && apt-get install -y --no-install-recommends 
    wget 
    xz-utils 
    libgl1-mesa-glx 
    libegl1-mesa 
    libxkbcommon-x11-0 
    libxcb-icccm4 
    libxcb-image0 
    libxcb-keysyms1 
    libxcb-render-util0 
    libxcb-xinerama0 
    libxcb-xfixes0 
    libgl1-mesa-dev 
    && rm -rf /var/lib/apt/lists/*

# Download and install Calibre
RUN wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sh /dev/stdin

# Create a non-root user for running Calibre
RUN useradd -m -s /bin/bash calibre
USER calibre
WORKDIR /home/calibre

# Set default values for the port and library path

ENV CALIBRE_LIBRARY_PATH=/home/calibre/library

# Expose the default port


# Create the default library directory
RUN mkdir -p ${CALIBRE_LIBRARY_PATH}

# Set the entrypoint to run the Calibre server
ENTRYPOINT ["/opt/calibre/calibre-server"]

# Set the default command to start the server with the default library
CMD ["--port", "${CALIBRE_PORT}", "${CALIBRE_LIBRARY_PATH}"]

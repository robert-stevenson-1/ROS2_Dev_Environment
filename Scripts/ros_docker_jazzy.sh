#!/bin/bash

# Allow X11 access for Docker
xhost +local:docker

# Start the container in the background
docker-compose up -d

# Wait for the container to stop
CONTAINER_NAME="ros_jazzy"

echo "Waiting for container '$CONTAINER_NAME' to exit..."
docker wait "$CONTAINER_NAME"

# Revoke X11 access when the container stops
echo "Container stopped. Revoking X11 access..."
xhost -local:docker

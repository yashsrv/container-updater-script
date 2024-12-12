#!/bin/bash

echo "Pulling latest image..."
docker compose pull

echo "Stopping and removing container..."
docker compose down

echo "Starting container in detached mode..."
docker compose up -d

echo "Pruning dangling images..."
docker image prune --filter dangling=true -f

echo "container updated successfully"

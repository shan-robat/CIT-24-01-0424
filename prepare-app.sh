#!/bin/bash
echo "Preparing app..."
docker network create app-network 2>/dev/null || true
docker volume create redis-data 2>/dev/null || true
docker build -t my-web-app:latest .
echo "Preparation complete!"

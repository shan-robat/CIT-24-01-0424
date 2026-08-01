#!/bin/bash
echo "Removing app..."
docker rm -f web-app redis-db 2>/dev/null || true
docker network rm app-network 2>/dev/null || true
docker volume rm redis-data 2>/dev/null || true
docker rmi my-web-app:latest 2>/dev/null || true
echo "Removed app."

#!/bin/bash
echo "Running app ..."
docker run -d --name redis-db --network app-network -v redis-data:/data --restart unless-stopped redis:alpine 2>/dev/null || docker start redis-db
docker run -d --name web-app --network app-network -p 5000:5000 -e REDIS_HOST=redis-db --restart unless-stopped my-web-app:latest 2>/dev/null || docker start web-app
echo "The app is available at http://localhost:5000"

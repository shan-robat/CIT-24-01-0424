#!/bin/bash
echo "Stopping app..."
docker stop web-app redis-db
echo "App stopped. Persistent data preserved!"

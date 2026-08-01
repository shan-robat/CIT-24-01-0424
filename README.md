# Assignment 1: Docker Web Application Deployment

## Deployment Requirements
* Docker Engine (v20+ recommended)
* Docker Compose
* Bash shell environment

## Application Description
A two-tier web application built with Python Flask (Web Frontend/API) and Redis (In-memory caching and persistent state counter).

## Network and Volume Details
* Network: app-network (bridge mode for inter-container communication)
* Volume: redis-data (named persistent volume mapped to /data in Redis)

## Container List
1. web-app: Python Flask container listening on port 5000.
2. redis-db: Redis container operating as the backend store.

## Instructions & Workflow

1. Prepare application resources:
   ./prepare-app.sh

2. Run the application:
   ./start-app.sh

3. Access in browser:
   http://localhost:5000

4. Pause the application (preserves state):
   ./stop-app.sh

5. Delete all application resources:
   ./remove-app.sh

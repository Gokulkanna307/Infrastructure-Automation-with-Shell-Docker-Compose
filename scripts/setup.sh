#!/bin/bash

echo "Starting DevOps Infrastructure..."

# Start services
docker-compose up -d --build

# Show running containers
docker ps

# Wait for sample app to be ready
echo "Waiting for Sample App to start..."
until curl -s http://localhost:3000 | grep -q "Hello from Sample App!"; do
    echo "Waiting..."
    sleep 2
done

echo "Sample App is running!"
echo "All services started."


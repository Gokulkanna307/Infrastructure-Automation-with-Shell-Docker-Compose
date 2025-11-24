Project Overview

This project demonstrates a complete DevOps-style local infrastructure setup using Docker Compose and a shell automation script. The goal is to simulate real-world DevOps automation workflows without relying on any cloud platform. The environment includes Jenkins for CI/CD, Redis as a key-value store, Nginx as a reverse proxy, and a sample application. All services are orchestrated with Docker Compose and automatically bootstrapped using a setup script.

Key Components

Jenkins
Jenkins acts as the CI/CD engine in this environment. It is deployed in a Docker container with persistent storage and is accessible either directly through its port or through Nginx.

Redis
Redis is included to provide a lightweight in-memory datastore that the sample application can interact with.

Sample Application
The sample application is containerized and accessible directly and optionally through the Nginx reverse proxy. It is configured to interact with Redis and includes a health check endpoint.

Nginx
Nginx functions as a reverse proxy. It routes traffic to the sample application by default and can also proxy Jenkins through a defined path. This simulates production-style routing.

Automation Script

The project includes a setup script that automates environment preparation and service startup.
The script performs the following tasks:

Verifies that Docker and Docker Compose are installed

Creates required directories such as Jenkins persistent storage

Builds the application image

Starts all services using Docker Compose

Waits for each container to become healthy

Displays useful connection URLs and log commands

This script ensures the entire environment can be started with a single command.

How to Run the Project

To start the infrastructure, run the setup script from the project directory.
Once the script finishes, all services will be running and accessible through the URLs printed in the terminal.

Service URLs

Sample Application
Available at: http://localhost/

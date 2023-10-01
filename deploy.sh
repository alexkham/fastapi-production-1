#!/bin/bash

# Replace these variables with your actual values
PROJECT_DIR="/var/www/154.56.46.133/fastapi-production-1"
VENV_DIR="$PROJECT_DIR/.venv"
APP_MODULE="main:app"
HOST="0.0.0.0"
PORT="8000"

fuser -k 8000/tcp

# Activate the virtual environment
source "$VENV_DIR/bin/activate"

# Change directory to the project directory
cd "$PROJECT_DIR"

# Start the FastAPI app with Uvicorn
nohup uvicorn $APP_MODULE --host $HOST --port $PORT > /dev/null 2>&1 &
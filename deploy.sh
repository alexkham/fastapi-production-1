#!/bin/bash

# Replace these variables with your actual values
PROJECT_DIR="/var/www/154.56.46.133/fastapi-production-1"
VENV_DIR="$PROJECT_DIR/.venv"
APP_MODULE="main:app"
HOST="0.0.0.0"
PORT="8000"

# Activate the virtual environment
source "$VENV_DIR/bin/activate"

# Change directory to the project directory
cd "$PROJECT_DIR"

# Start the FastAPI app with Uvicorn
uvicorn $APP_MODULE --host $HOST --port $PORT

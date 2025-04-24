#!/bin/bash
# Script to start both frontend and backend for Scalex project

echo "Starting Scalex project..."

# Function to check if commands exist
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Check if required commands exist
if ! command_exists yarn; then
  echo "Error: yarn is not installed. Please install it first."
  exit 1
fi

if ! command_exists python; then
  echo "Error: python is not installed. Please install it first."
  exit 1
fi

# Store the script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Start the frontend in a new terminal
echo "Starting frontend with yarn dev..."
cd "$SCRIPT_DIR/front" || exit
yarn run dev &

# Store the frontend process ID
FRONTEND_PID=$!

# Wait a bit to allow the frontend to start initializing
sleep 2

# Start the backend in a new terminal
echo "Starting backend with Django..."
cd "$SCRIPT_DIR/back" || exit
python manage.py runserver &

# Store the backend process ID
BACKEND_PID=$!

echo ""
echo "Both frontend and backend have been started."
echo "Frontend: http://localhost:3000"
echo "Backend: http://127.0.0.1:8000"
echo ""
echo "Press Ctrl+C to stop both servers."

# Wait for user to press Ctrl+C
trap "kill $FRONTEND_PID $BACKEND_PID; exit" INT TERM
wait

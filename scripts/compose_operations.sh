#!/bin/bash

# Check if at least two arguments are provided
if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <compose-file> <up|down|other-compose-command>"
    exit 1
fi

# Assign the first argument to the COMPOSE_FILE variable
COMPOSE_FILE="$1"
shift  # Remove the first argument from the list

# Assign the next argument to the COMPOSE_COMMAND variable
COMPOSE_COMMAND="$1"
shift  # Remove the second argument from the list

# Run Docker Compose with the specified command and configuration file
sudo docker compose -f "$COMPOSE_FILE" "$COMPOSE_COMMAND" "$@"

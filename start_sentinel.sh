#!/bin/bash
echo "--- Starting Sentinel Monitor ---"
# This runs docker compose in detached mode
docker compose up -d
echo "Check your dashboard at: http://localhost:8000"

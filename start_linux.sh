#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PYTHON="$SCRIPT_DIR/venv/bin/python"

if [ ! -x "$PYTHON" ]; then
  echo "Virtual environment Python not found at $PYTHON"
  exit 1
fi

"$PYTHON" "$SCRIPT_DIR/engine.py" &
sleep 2
exec "$PYTHON" "$SCRIPT_DIR/api.py"

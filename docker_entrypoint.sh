#!/bin/sh

set -e

echo "=== ENTRYPOINT ==="

COMMAND="$1"

echo "=== ChECKING DEPENDENCIES ==="

case "$COMMAND" in
  test)
    echo "=== RUNNING TEST SUITE ==="
    mix test
    ;;
  lint)
    echo "=== RUNNING LINTER ==="
    mix format
    ;;
  *)
    echo "=== RUNNING COMAND  $*==="
    sh -c "$*"
    ;;
esac
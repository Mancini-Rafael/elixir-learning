#!/bin/sh

set -e

echo "=== ENTRYPOINT ==="

COMMAND="$1"

echo "=== ChECKING DEPENDENCIES ==="

case "$COMMAND" in
  test)
    echo "=== RUNNING TEST SUITE ==="
    ;;
  lint)
    echo "=== RUNNING LINTER ==="
    ;;
  *)
    echo "=== RUNNING COMAND  $*==="
    sh -c "$*"
    ;;
esac
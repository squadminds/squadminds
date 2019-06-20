#!/bin/bash
set -e

rm -f /squadminds/tmp/pids/server.pid

exec "$@"
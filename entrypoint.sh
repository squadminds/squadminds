#!/bin/bash
set -e

rm -f /bnbitservices/tmp/pids/server.pid

exec "$@"
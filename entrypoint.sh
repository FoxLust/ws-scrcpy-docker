#!/bin/bash
set -e

adb start-server
adb devices

exec "$@"

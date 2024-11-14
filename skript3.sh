#!/bin/bash

# Zjistíme využití disku v procentech
DISK_USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if [ "$DISK_USAGE" -gt 80 ]; then
    echo "Pozor: využití disku je nad 80 %! Aktuální využití: $DISK_USAGE%"
else
    echo "Využití disku je v pořádku. Aktuální využití: $DISK_USAGE%"
fi

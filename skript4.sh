#!/bin/bash

# Složka, kde chceme mazat staré soubory
TARGET_FOLDER="/tmp"

# Najdeme a smažeme soubory starší než 7 dní
find "$TARGET_FOLDER" -type f -mtime +7 -exec rm -f {} \;
echo "Soubory starší než 7 dní byly smazány ze složky $TARGET_FOLDER."

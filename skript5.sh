#!/bin/bash

# Složka s cílovými soubory
TARGET_FOLDER="/cesta/k/slozce"

# Projdeme všechny soubory ve složce
for FILE in "$TARGET_FOLDER"/*; do
    # Získáme pouze název souboru bez cesty
    BASENAME=$(basename "$FILE")
    # Přejmenujeme soubor
    mv "$FILE" "$TARGET_FOLDER/archiv_$BASENAME"
    echo "Soubor $BASENAME byl přejmenován na archiv_$BASENAME"
done

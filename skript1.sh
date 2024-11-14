#!/bin/bash

if [ -f "test_soubor.txt" ]; then
    echo "Soubor test_soubor.txt již existuje."
else
    touch test_soubor.txt
    echo "Soubor test_soubor.txt byl vytvořen."
fi

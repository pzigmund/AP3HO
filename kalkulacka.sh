#!/bin/bash

# Kontrola, zda byly zadány přesně tři argumenty
if [ "$#" -ne 3 ]; then
    echo "Použití: $0 číslo1 číslo2 operace"
    echo "Dostupné operace: add, sub, mul, div"
    exit 1
fi

# Načtení argumentů
num1=$1
num2=$2
operation=$3

# Kontrola, zda jsou první dva argumenty čísla
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Chyba: První dva argumenty musí být čísla."
    exit 1
fi

# Provádění operace podle třetího argumentu
case $operation in
    add)
        result=$((num1 + num2))
        echo "Výsledek sčítání: $result"
        ;;
    sub)
        result=$((num1 - num2))
        echo "Výsledek odčítání: $result"
        ;;
    mul)
        result=$((num1 * num2))
        echo "Výsledek násobení: $result"
        ;;
    div)
        if [ "$num2" -eq 0 ]; then
            echo "Chyba: Dělení nulou není možné."
            exit 1
        else
            result=$((num1 / num2))
            echo "Výsledek dělení: $result"
        fi
        ;;
    *)
        echo "Chyba: Neplatná operace. Použijte add, sub, mul, nebo div."
        exit 1
        ;;
esac

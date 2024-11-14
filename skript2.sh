#!/bin/bash

# Složka, kterou chceme zálohovat
FOLDER="/home/user/dokumenty"
# Cílový název zálohy s datem
BACKUP_NAME="backup_$(date +%Y%m%d).tar.gz"

tar -czvf "$BACKUP_NAME" "$FOLDER"
echo "Záloha složky $FOLDER byla vytvořena jako $BACKUP_NAME."

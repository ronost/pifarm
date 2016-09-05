#!/bin/bash
echo "Backup source \"ronny\" start: $(date +%Y-%m-%d" "%H:%M:%S)"
rsync -a --size-only --exclude={".*",".*/","*.CR2"} /mnt/backup_source_ronny/ /mnt/backup_destination/backup/ronny/
echo "Backup source \"ronny\" end: $(date +%Y-%m-%d" "%H:%M:%S)"
echo "---------------------------------------------------"
echo "Backup source \"bella\" start: $(date +%Y-%m-%d" "%H:%M:%S)"
rsync -a --size-only --exclude={".*",".*/","*.CR2"} /mnt/backup_source_bella/ /mnt/backup_destination/backup/bella/
echo "Backup source \"bella\" end: $(date +%Y-%m-%d" "%H:%M:%S)\n\n"
df -h -t cifs
echo "==================================================="

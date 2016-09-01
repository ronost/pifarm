log=/home/pi/backup.log
echo "Backup source \"ronny\" start: $(date +%Y-%m-%d" "%H:%M:%S)" >> $log
rsync -av /mnt/backup_source_ronny/ /mnt/backup_destination/backup/ronny/ >> $log
echo "Backup source \"ronny\" end: $(date +%Y-%m-%d" "%H:%M:%S)" >> $log
echo "---------------------------------------------------" >> $log
echo "Backup source \"bella\" start: $(date +%Y-%m-%d" "%H:%M:%S)" >> $log
rsync -av /mnt/backup_source_bella/ /mnt/backup_destination/backup/bella/ >> $log
echo "Backup source \"bella\" end: $(date +%Y-%m-%d" "%H:%M:%S)\n\n" >> $log
df -h -t cifs >> $log
echo "===================================================" >> $log

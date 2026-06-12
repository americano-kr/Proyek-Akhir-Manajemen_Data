#!/bin/bash

# Mengambil waktu saat ini (TahunBulanTanggal_JamMenitDetik)
WAKTU=$(date +"%Y%m%d_%H%M%S")
NAMA_FILE="backup_datadisk_${WAKTU}.tar.gz"

# Mengeksekusi kompresi menggunakan tar
# c = create, z = gzip, v = verbose (tampilkan proses), f = filename
tar -czvf /backup/$NAMA_FILE /mnt/datadisk

# Mencatat riwayat backup ke dalam file log
echo "Backup otomatis $NAMA_FILE berhasil pada $WAKTU" >> /backup/log_backup.txt

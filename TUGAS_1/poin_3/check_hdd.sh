#!/bin/bash


# Membaca persentase penggunaan dari partisi utama (/)
# Penjelasan pipa (|):
# 1. df /          : Menampilkan statistik kapasitas partisi utama
# 2. awk 'NR==2...' : Mengambil baris ke-2 (data partisi), lalu mencetak kolom ke-5 (kolom Use%)
# 3. sed 's/%//'   : Menghapus karakter '%' agar hanya tersisa angkanya saja
PERSENTASE_TERPAKAI=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')


# Menghitung sisa ruang dengan mengurangkan 100 dengan persentase terpakai
SISA_RUANG=$((100 - PERSENTASE_TERPAKAI))


# Menampilkan output report sesuai dengan format yang diminta
echo "Report: Space HDD anda tinggal ${SISA_RUANG}%"

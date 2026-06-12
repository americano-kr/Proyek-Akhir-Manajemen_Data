#!/bin/bash

# Memeriksa keberadaan file data_mahasiswa.txt
if [ ! -f "data_mahasiswa.txt" ]; then
    echo "File data_mahasiswa.txt tidak ditemukan. Hentikan program."
    exit 1
fi

# Menggunakan tail -n +2 untuk mengabaikan baris pertama (Header: NRP NAMA)
# read -r nrp nama_lengkap akan otomatis menangkap angka pertama sebagai nrp, 
# dan seluruh sisa teks di baris itu sebagai nama_lengkap
tail -n +2 data_mahasiswa.txt | while read -r nrp nama_lengkap; do
    
    # 1. Mengambil 3 digit terakhir dari NRP
    digit_nrp="${nrp: -3}"
    
    # 2. Mengambil kata pertama dan kedua dari nama lengkap
    kata1=$(echo "$nama_lengkap" | awk '{print $1}')
    kata2=$(echo "$nama_lengkap" | awk '{print $2}')
    
    # 3. Menggabungkan string dan mengubahnya menjadi huruf kecil (lowercase)
    # Contoh hasil: 061_aisahnur
    username=$(echo "${digit_nrp}_${kata1}${kata2}" | tr '[:upper:]' '[:lower:]')
    
    # 4. Menentukan format password
    password="${username}@123"

    # 5. Eksekusi pengecekan dan pembuatan user
    if id "$username" &>/dev/null; then
        echo "User $username sudah terdaftar."
    else
        useradd -m -s /bin/bash "$username"
        echo "$username:$password" | chpasswd
        echo "Sukses: User '$username' berhasil dibuat dengan password '$password'"
    fi
done

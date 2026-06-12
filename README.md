# Proyek Akhir Manajemen Data 📊🐳

Repositori ini berisi kumpulan skrip dan *source code* penyelesaian Proyek Akhir untuk mata kuliah Manajemen Data pada program studi D4 Sains Data Terapan, Politeknik Elektronika Negeri Surabaya (PENS). Proyek ini mencakup praktik langsung mengenai administrasi sistem operasi Linux dan implementasi kontainerisasi menggunakan Docker.

## 👨‍💻 Penulis
* **Nama:** Vierril Kevana Rizqullah
* **NRP:** 3325600069
* **GitHub:** [@americano-kr](https://github.com/americano-kr)

## 📌 Deskripsi Proyek
Proyek ini terbagi menjadi dua ranah utama:
1. **Administrasi Sistem Linux (Bash Scripting):** Meliputi otomatisasi manajemen pengguna, pengelolaan ruang penyimpanan virtual, penjadwalan kompresi *backup* otomatis menggunakan *Cron job*, serta pemantauan kapasitas *hard disk* (HDD).
2. **Kontainerisasi Aplikasi (Docker):** Meliputi perakitan *image* dari `Dockerfile` dan *deployment* aplikasi analisis data berbasis web interaktif (K-Means Clustering) yang dibangun menggunakan pustaka Python dan Streamlit.

## 📁 Struktur Repositori

```text
📦 proyek-akhir-manajemen-data
 ┣ 📂 TUGAS_1
 ┃ ┣ 📂 poin_1/ (Otomatisasi User Management)
 ┃ ┃ ┣ 📜 create_users_excel.sh
 ┃ ┃ ┗ 📜 data_mahasiswa.txt
 ┃ ┣ 📂 poin_2/ (Simulasi Virtual Disk & Auto Backup)
 ┃ ┃ ┗ 📜 auto_backup.sh
 ┃ ┗ 📂 poin_3/ (Monitoring Kapasitas Storage)
 ┃   ┗ 📜 check_hdd.sh
 ┗ 📂 TUGAS_2
   ┗ 📂 poin_3/ (Aplikasi Web Analisis Data via HTTP)
     ┣ 📜 app.py
     ┣ 📜 requirements.txt
     ┗ 📜 Dockerfile
```

## 🛠️ Teknologi yang Digunakan

* **Sistem Operasi:** Ubuntu (via Windows Subsystem for Linux / WSL 2)
* **Scripting:** GNU Bash
* **Bahasa Pemrograman:** Python 3.9
* **Framework Web:** Streamlit
* **Data Science Tools:** Pandas, Scikit-Learn, Matplotlib
* **Kontainerisasi:** Docker Desktop

## 🚀 Panduan Eksekusi Singkat

**1. Menjalankan Script Linux (Tugas 1)**
Seluruh *script* `.sh` di dalam folder `TUGAS_1` membutuhkan hak eksekusi sebelum dijalankan. Berikan akses dengan perintah `chmod +x nama_file.sh`. Beberapa *script* yang memodifikasi sistem (*user management* & *mounting disk*) harus dijalankan dengan akses administrator (`sudo ./nama_file.sh`).

**2. Menjalankan Aplikasi Docker (Tugas 2)**
Untuk menjalankan aplikasi analisis klastering K-Means, masuk ke direktori `TUGAS_2/poin_3/` dan jalankan perintah pembangunan *Image* berikut:

```bash
docker build -t app-analisis-evan .
```
Setelah *Image* berhasil dirakit, jalankan *Container* dengan memetakan *port* jaringan:

```bash
docker run -d --name web-analisis -p 8501:8501 app-analisis-evan
```
Aplikasi dapat diakses melalui *browser* pada tautan: `http://localhost:8501`

```

```

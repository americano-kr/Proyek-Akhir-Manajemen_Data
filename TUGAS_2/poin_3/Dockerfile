# Menggunakan image dasar Python versi 3.9 yang ringan
FROM python:3.9-slim-buster

# Menentukan direktori kerja di dalam container
WORKDIR /app

# Menyalin file requirements dan menginstal library
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Menyalin seluruh file dari komputer host ke dalam container
COPY . .

# Memberitahu Docker bahwa container ini menggunakan port 8501 (port standar Streamlit)
EXPOSE 8501

# Perintah utama untuk menjalankan aplikasi saat container dihidupkan
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]

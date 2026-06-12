import streamlit as st
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.datasets import make_blobs
from sklearn.cluster import KMeans

# 1. Konfigurasi Halaman Web
st.title("Aplikasi Analisis Klastering Sederhana")
st.write("Aplikasi ini melakukan clustering K-Means pada data yang dibangkitkan secara acak.")

# 2. Membangkitkan Data Sintetis
# Setiap kali dijalankan ulang, titik data akan berbeda (menjamin keunikan hasil)
X, y = make_blobs(n_samples=300, centers=4, cluster_std=0.60, random_state=None)
df = pd.DataFrame(X, columns=['Fitur 1', 'Fitur 2'])

# 3. Proses Klastering K-Means
kmeans = KMeans(n_clusters=4, n_init=10)
kmeans.fit(X)
df['Klaster'] = kmeans.labels_

st.subheader("Cuplikan Data Sintetis:")
st.dataframe(df.head())

# 4. Visualisasi Hasil
st.subheader("Visualisasi Hasil Klastering")
fig, ax = plt.subplots()
scatter = ax.scatter(df['Fitur 1'], df['Fitur 2'], c=df['Klaster'], cmap='viridis')
ax.scatter(kmeans.cluster_centers_[:, 0], kmeans.cluster_centers_[:, 1], s=200, c='red', marker='X', label='Centroid')
ax.set_xlabel("Fitur 1")
ax.set_ylabel("Fitur 2")
ax.legend()

# Merender grafik ke halaman web Streamlit
st.pyplot(fig)

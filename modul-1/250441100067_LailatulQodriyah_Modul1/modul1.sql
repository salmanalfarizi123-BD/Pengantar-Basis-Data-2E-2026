CREATE DATABASE integritas_data;
USE integritas_data;

CREATE TABLE koleksi_langka(
id_buku BIGINT PRIMARY KEY,
judul VARCHAR(250),
tahun_terbit YEAR,
estimasi_harga DECIMAL(10,2)
);

CREATE TABLE pelanggan_setia(
nomor_identitas INT 
);

ALTER TABLE pelanggan_setia(
MODIFY nomor_identitas VARCHAR(20),   
);

CREATE TABLE transaksi_harian(
nama VARCHAR(20),
jumlah DECIMAL(10,2)
);

TRUNCATE TABLE transaksi_harian;
DROP TABLE transaksi_harian;

CREATE TABLE umpan_balik(
id_komentar INT AUTO_INCREMENT PRIMARY KEY,
nama_pengguna VARCHAR(1000),
isi_komentar TEXT
);


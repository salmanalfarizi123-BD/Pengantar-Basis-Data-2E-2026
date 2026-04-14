-- # SOAL NOMOR 1

CREATE TABLE koleksi_langka (
    id_buku BIGINT PRIMARY KEY,
    judul VARCHAR(250),
    tahun_terbit YEAR,
    estimasi_harga DECIMAL(15,2)
);

-- #SOAL NOMOR 2

ALTER TABLE pelanggan_setia
MODIFY nomor_identitas VARCHAR(20);

-- #SOAL NOMOR 3

CREATE TABLE transaksi_harian (
    id INT,
    total INT
);

TRUNCATE TABLE transaksi_harian;

DROP TABLE transaksi_harian;

-- SOAL NOMOR 4

CREATE TABLE umpan_balik (
    id INT PRIMARY KEY AUTO_INCREMENT,
    isi_komentar TEXT
);

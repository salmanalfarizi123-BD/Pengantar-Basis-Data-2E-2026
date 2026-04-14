CREATE TABLE koleksi_langka (
    id_buku BIGINT PRIMARY KEY NOT NULL,
    judul VARCHAR(250) NOT NULL,
    tahun_terbit YEAR,
    estimasi_harga DECIMAL(15,2),
);

DESC koleksi_langka

-- Asumsi tabel awal
CREATE TABLE pelanggan_setia (
    id INT PRIMARY KEY,
    nama VARCHAR(100)
);

-- Mengubah tipe data id menjadi VARCHAR(20)
ALTER TABLE pelanggan_setia
MODIFY COLUMN id VARCHAR(20);

DESC pelanggan_setia

CREATE TABLE transaksi_harian (
    id_transaksi INT PRIMARY KEY,
    jumlah DECIMAL(10,2)
);

-- Memasukkan data uji
INSERT INTO transaksi_harian VALUES (1, 100000), (2, 250000);

TRUNCATE transaksi_harian

DROP transaksi_harian

DESC treansaksi_harian

CREATE TABLE umpan_balik (
    id_komentar INT PRIMARY KEY AUTO_INCREMENT,
    id_pengguna INT NOT NULL,
    isi_komentar TEXT NOT NULL,
    tanggal_dibuat TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DESC umpan_balik
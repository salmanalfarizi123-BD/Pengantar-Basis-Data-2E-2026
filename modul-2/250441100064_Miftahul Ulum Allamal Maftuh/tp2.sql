-- Soal 1
CREATE TABLE dokter (
    id_dokter INT PRIMARY KEY,
    nama_dokter VARCHAR(100) NOT NULL,
    spesialisasi VARCHAR(100) NOT NULL
);

CREATE TABLE pasien (
    id_pasien INT PRIMARY KEY,
    nama_pasien VARCHAR(100) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    no_telepon VARCHAR(15)
);


CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE NOT NULL,
    diagnosis TEXT,
    
    FOREIGN KEY (id_pasien)
      REFERENCES pasien(id_pasien)
      ON DELETE RESTRICT,
    
    FOREIGN KEY (id_dokter)
      REFERENCES dokter(id_dokter)
      ON DELETE RESTRICT
);



-- soal 2
INSERT INTO dokter (id_dokter, nama_dokter, spesialisasi) VALUES
(11, 'Dr. Andi', 'wajah'),
(22, 'Dr. aisah', 'Gigi');

INSERT INTO pasien (id_pasien, nama_pasien, tanggal_lahir, no_telepon) VALUES
(111, 'Budi Santoso', '1990-05-10', '087792971335'),
(222, 'Ani Lestari', '1995-08-20', '087792971445');

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1, 111, 11, '2026-04-01', 'Demam'),
(2, 222, 22, '2026-04-02', 'Sakit Gigi');

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1, 111, 99, '2026-04-03', 'Demam');



-- soal 3
UPDATE pasien
SET no_telepon = '097792971556'
WHERE id_pasien = 111;

UPDATE dokter
SET spesialisasi = 'organ dalam'
WHERE id_dokter = 11;

DELETE FROM rekam_medis
WHERE id_rekam = 1;



-- soal 4
CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    diagnosis TEXT,
    tanggal_periksa DATE NOT NULL,

    FOREIGN KEY (id_pasien)
      REFERENCES pasien(id_pasien)
      ON DELETE RESTRICT,

    FOREIGN KEY (id_dokter)
      REFERENCES dokter(id_dokter)
      ON DELETE CASCADE
);

INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1, 111, 11, '2026-04-05', 'Batuk'),
(2, 222, 11, '2026-04-06', 'Pilek');


DELETE FROM dokter
WHERE id_dokter = 11;


-- soAL NO 5
CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE NOT NULL,
    diagnosa TEXT,

    FOREIGN KEY (id_pasien) 
        REFERENCES pasien(id_pasien)
        ON DELETE RESTRICT,

    FOREIGN KEY (id_dokter) 
        REFERENCES dokter(id_dokter)
        ON DELETE RESTRICT
);


INSERT INTO rekam_medis (id_rekam, id_pasien, id_dokter, tanggal_periksa, diagnosis) VALUES
(1, 111, 11, '2026-04-05', 'Batuk'),
(2, 222, 22, '2026-04-06', 'Pilek');

TRUNCATE TABLE rekam_medis;
TRUNCATE TABLE pasien;
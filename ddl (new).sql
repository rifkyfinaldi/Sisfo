Create Table Guru(
	id_guru char(4) CONSTRAINT pk_guru PRIMARY KEY NOT NULL,
	nama varchar2(30) NOT NULL,
	alamat varchar2(50) NOT NULL,
	telp varchar2(12) NOT NULL,
	Jenis_pembayaran varchar2(10) NOT NULL,
	no_rekening varchar2(15),
	kategori varchar2(10) NOT NULL
	CONSTRAINT fk_gaji FOREIGN KEY (id_gaji) REFERENCES Gaji ON DELETE CASCADE
	CONSTRAINT fk_jadwal FOREIGN KEY (id_jadwal) REFERENCES Jadwal ON DELETE CASCADE
);

Create Table Matpel(
	id_matpel char(4) CONSTRAINT pk_Matpel PRIMARY KEY NOT NULL,
	nama_matpel varchar2(30) NOT NULL,
	waktu number NOT NULL
	CONSTRAINT fk_guru FOREIGN KEY (id_guru) REFERENCES Guru ON DELETE CASCADE
);

Create Table Jadwal(
	id_jadwal char(4) CONSTRAINT pk_Jadwal PRIMARY KEY NOT NULL,
	senin varchar2(60),
	selasa varchar2(60),
	rabu varchar2(60),
	kamis varchar2(60),
	jumat varchar2(60)
	CONSTRAINT fk_guru FOREIGN KEY (id_guru) REFERENCES Guru ON DELETE CASCADE
);

Create Table Kelas(
	id_kelas char(4) CONSTRAINT pk_kelas PRIMARY KEY NOT NULL,
	nama_kelas varchar2(10) NOT NULL,
	jumlah_kelas number NOT NULL
	CONSTRAINT fk_guru FOREIGN KEY (id_guru) REFERENCES Guru ON DELETE CASCADE
);

create Table Cuti (
	id_cuti char(4) CONSTRAINT pk_cuti PRIMARY KEY NOT NULL,
	bulan month NOT NULL,
	tahun year NOT NULL,
	jumlah_cuti number NOT NULL
	CONSTRAINT fk_guru FOREIGN KEY (id_guru) REFERENCES Guru ON DELETE CASCADE
);

create Table Gaji (
	id_gaji char(4) CONSTRAINT pk_gaji PRIMARY KEY NOT NULL,
	gaji_pokok number(10) NOT NULL,
	bulan month NOT NULL,
	tahun year NOT NULL,
	gaji_total number NOT NULL
	CONSTRAINT fk_potongan FOREIGN KEY (id_potongan) REFERENCES Potongan ON DELETE CASCADE
	CONSTRAINT fk_tunjangan FOREIGN KEY (id_tunjangan) REFERENCES Tunjangan ON DELETE CASCADE
);

create Table Potongan (
	id_potongan char(4)CONSTRAINT pk_potongan PRIMARY KEY NOT NULL,
	nama_potongan varchar2(20) NOT NULL,
	jumlah_potongan number NOT NULL
);


create Table Tunjangan (
	id_tunjangan char(4) CONSTRAINT pk_tunjangan PRIMARY KEY NOT NULL,
	jumlah_tunjangan number(10) NOT NULL, 
	nama_tunjangan varchar2(20) NOT NULL
);	
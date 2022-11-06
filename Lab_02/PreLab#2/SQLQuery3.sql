-------------ENTITY TABLES-----------------
CREATE TABLE Sube
(sube_adi varchar(255) NOT NULL,
 sube_city varchar(255),
 kazanc int
 );
ALTER TABLE Sube  ADD PRIMARY KEY (sube_adi);

CREATE TABLE Kredi(
kredi_numarasi int NOT NULL,
miktar int,
fk_sube_adi varchar(255)
);
ALTER TABLE Kredi ADD PRIMARY KEY(kredi_numarasi);

CREATE TABLE Musteri(
musteri_adi varchar(255) NOT NULL,
musteri_sokak varchar(255),
musteri_sehir varchar(255)
);
ALTER TABLE Musteri ADD PRIMARY KEY(musteri_adi);

CREATE TABLE Hesap(
hesap_numarasi int NOT NULL,
bakiye int,
fk_sube_adi varchar(255)
);
ALTER TABLE Hesap ADD PRIMARY KEY(hesap_numarasi);

------------------RELATION TABLES--------------
CREATE TABLE BorcAlan(
borc_alan_ID int NOT NULL,
fk_kredi_numarasi int,
fk_musteri_adi varchar(255)
);
ALTER TABLE BorcAlan ADD PRIMARY KEY(borc_alan_ID);


CREATE TABLE ParaYatiran(
para_yatiran_ID int NOT NULL,
fk_hesap_numarasi int,
fk_musteri_adi varchar(255)
);
ALTER TABLE ParaYatiran ADD PRIMARY KEY(para_yatiran_ID);

---------------FOREIGN KEYS---------------------
ALTER TABLE BorcAlan ADD FOREIGN KEY (fk_kredi_numarasi) REFERENCES Kredi(kredi_numarasi);
ALTER TABLE BorcAlan ADD FOREIGN KEY(fk_musteri_adi) REFERENCES Musteri(musteri_adi);

ALTER TABLE ParaYatiran ADD FOREIGN KEY(fk_hesap_numarasi) REFERENCES Hesap(hesap_numarasi);
ALTER TABLE ParaYatiran ADD FOREIGN KEY(fk_musteri_adi) REFERENCES Musteri(musteri_adi)

ALTER TABLE Kredi ADD FOREIGN KEY (fk_sube_adi) REFERENCES Sube(sube_adi)

ALTER TABLE Hesap ADD FOREIGN KEY (fk_sube_adi) REFERENCES Sube(sube_adi)
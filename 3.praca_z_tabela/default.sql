SELECT *
FROM pracownicy;

ALTER TABLE pracownicy
        ADD obywatelstwo VARCHAR(30) DEFAULT 'polskie';

-- BEGIN TRANSACTION;
INSERT INTO pracownicy (imie, drugie_imie, nazwisko, id_stanowiska, email, telefon)
    VALUES ('Jerzy', 'Jacek', 'Trybik', 7, 'j.trybik@firma2.pl', '789-123-659');

-- ROLLBACK;

ALTER TABLE pracownicy
DROP CONSTRAINT [DF__pracownic__obywa__37703C52];

ALTER TABLE pracownicy
DROP CONSTRAINT pracownicy_obywatelstwo_def;

ALTER TABLE pracownicy
DROP COLUMN obywatelstwo;

ALTER TABLE pracownicy
        ADD obywatelstwo VARCHAR(30) CONSTRAINT pracownicy_obywatelstwo_def DEFAULT 'polskie';

ALTER TABLE pracownicy
        ADD obywatelstwo VARCHAR(30);

ALTER TABLE pracownicy
        ADD CONSTRAINT pracownicy_obywatelstwo_def DEFAULT 'polskie' FOR obywatelstwo;

UPDATE pracownicy
    SET obywatelstwo = 'polskie';

-- COMMIT

DROP TABLE stanowiska_pracy;
CREATE TABLE stanowiska_pracy (
    id      INTEGER,
    nazwa   VARCHAR(50) CONSTRAINT stanowiska_pracy_nazwa_nn NOT NULL,
    data_dodania DATE DEFAULT GETDATE() CONSTRAINT stanowiska_pracy_data_dodania_nn NOT NULL,
    CONSTRAINT stanowiska_pracy_id_pk PRIMARY KEY(id),
    CONSTRAINT stanowiska_pracy_id_chk CHECK(id>0),
    CONSTRAINT stanowiska_pracy_nazwa_uq UNIQUE(nazwa)
);

-- test działania
BEGIN TRANSACTION;

INSERT INTO stanowiska_pracy (id, nazwa, data_dodania)
    VALUES (100, 'rekruter IT', NULL);

INSERT INTO stanowiska_pracy (id, nazwa)
    VALUES (100, 'rekruter IT');

INSERT INTO stanowiska_pracy (id, nazwa, data_dodania)
    VALUES (100, 'rekruter IT', DEFAULT);

ROLLBACK;

SELECT *
FROM stanowiska_pracy;
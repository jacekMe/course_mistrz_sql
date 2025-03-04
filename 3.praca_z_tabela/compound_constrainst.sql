DROP TABLE raport_sprzedazy;
SELECT YEAR(data) AS rok,
        MONTH(data) AS miesiac,
        SUM(cena) AS sprzedaz
INTO raport_sprzedazy
FROM transakcje
GROUP BY YEAR(data),
        MONTH(data)
ORDER BY 1, 2;

ALTER TABLE raport_sprzedazy
ALTER COLUMN rok INTEGER NOT NULL;

ALTER TABLE raport_sprzedazy
ALTER COLUMN miesiac INTEGER NOT NULL;

ALTER TABLE raport_sprzedazy
    ADD CONSTRAINT raport_sprzedazy_pk PRIMARY KEY (rok, miesiac);

SELECT *
FROM raport_sprzedazy
ORDER BY rok, miesiac;

BEGIN TRANSACTION;
INSERT INTO raport_sprzedazy (rok, miesiac, sprzedaz)
    VALUES (2023, 05, 80500);
ROLLBACK;

INSERT INTO raport_sprzedazy (rok, miesiac, sprzedaz)
    VALUES (NULL, 06, 80500);

INSERT INTO raport_sprzedazy (rok, miesiac, sprzedaz)
    VALUES (2023, NULL, 80500);

-- unique

ALTER TABLE raport_sprzedazy
    ADD CONSTRAINT raport_sprzedazy_rok_miesiac_uq UNIQUE (rok, miesiac);

INSERT INTO raport_sprzedazy (rok, miesiac, sprzedaz)
    VALUES (2023, NULL, 80500);

INSERT INTO raport_sprzedazy (rok, miesiac, sprzedaz)
    VALUES (NULL, 06, 80500);

INSERT INTO raport_sprzedazy (rok, miesiac, sprzedaz)
    VALUES (NULL, NULL, 80500);

DROP TABLE raport_sprzedazy;

-- check

SELECT *
FROM klienci;

ALTER TABLE klienci
    DROP CONSTRAINT DF__klienci__klient___4E53A1AA;
    
ALTER TABLE klienci
    DROP COLUMN klient_praywatny;

ALTER TABLE klienci ADD klient_prywatny CHAR(1) DEFAULT 'T';
ALTER TABLE klienci ADD klient_firmowy CHAR(1) DEFAULT 'N';

UPDATE klienci
    SET klient_prywatny = 'T',
        klient_firmowy = 'N';

BEGIN TRANSACTION;
INSERT INTO klienci (imie, nazwisko, email, telefon, adres, klient_prywatny, klient_firmowy)
    VALUES ('Karolina', 'Tobiasz', 'karolina.tobiasz@gmail.com', '4356986135', 'ul. Lniana 7/6, Szczecin', NULL, NULL);
-- ROLLBACK;

ALTER TABLE klienci
    ADD CONSTRAINT klienci_klient_osobowosc_chk CHECK (klient_prywatny IS NOT NULL OR klient_firmowy IS NOT NULL);
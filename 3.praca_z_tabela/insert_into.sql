BEGIN TRANSACTION;

INSERT INTO kurs_sql.stanowiska_pracy (id, nazwa)
    VALUES (2, 'HR');

COMMIT;
ROLLBACK;

SELECT *
FROM stanowiska_pracy;

-- czyszczenie tabeli
TRUNCATE TABLE stanowiska_pracy;

-- wstawianie wielu rekordów
-- BEGIN TRANSACTION;
INSERT INTO kurs_sql.stanowiska_pracy(id, nazwa) VALUES (1, 'sprzedawca');
INSERT INTO kurs_sql.stanowiska_pracy(id, nazwa) VALUES (2, 'programista');
INSERT INTO kurs_sql.stanowiska_pracy(id, nazwa) VALUES (3, 'mechanik');

-- COMMIT;

-- insert as SELECT
-- BEGIN TRANSACTION
INSERT INTO kurs_sql.stanowiska_pracy(id, nazwa)
        SELECT ROW_NUMBER() OVER( ORDER BY a.stanowisko) AS id,
            stanowisko AS nazwa
        FROM (SELECT DISTINCT stanowisko
              FROM pracownicy) AS a;

COMMIT;
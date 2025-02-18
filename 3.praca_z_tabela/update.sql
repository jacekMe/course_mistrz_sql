BEGIN TRANSACTION
SELECT *
FROM stanowiska_pracy
WHERE id = 9;

UPDATE stanowiska_pracy
SET nazwa = 'programisa'
WHERE nazwa = 'Informatyk';

UPDATE stanowiska_pracy
SET nazwa = 'programista'
WHERE id = 9;

ROLLBACK

SELECT *
FROM pracownicy;

UPDATE pracownicy
SET stanowisko = 'Kierownik działu sprzedaży'
WHERE id_pracownika = 1;

-- ROLLBACK

-- przygotowanie kolumny pod FK
UPDATE p
SET stanowisko = (SELECT id
                  FROM stanowiska_pracy AS sp
                  WHERE sp.nazwa = stanowisko)
FROM pracownicy AS p;

-- COMMIT

-- dodanie nowej kolumny
ALTER TABLE pracownicy ADD id_stanowiska INTEGER;

-- kopiowanie danych z jednej kolumny do drugiej
UPDATE pracownicy
SET id_stanowiska = CAST(stanowisko AS INT);

-- porównanie czy wszystkie wartości są takie same w kolumnach
SELECT *
FROM pracownicy
WHERE stanowisko <> id_stanowiska;

-- usunięcie niepotrzebnej kolumny
ALTER TABLE pracownicy DROP COLUMN stanowisko;
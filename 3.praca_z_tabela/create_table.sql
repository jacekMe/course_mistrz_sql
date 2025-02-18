SELECT *
FROM pracownicy
ORDER BY stanowisko;

SELECT OBJECT_ID('kurs_sql.stanowiska_pracy');
SELECT OBJECT_ID('kurs_sql.producenci');

-- tworzenie tabeli, bez wywoływania błędu
IF OBJECT_ID('kurs_sql.stanowiska_pracy') IS NULL
CREATE TABLE stanowiska_pracy (
    id      INTEGER,
    nazwa   VARCHAR(50)
);

-- usuwanie tabeli z bazy danych
DROP TABLE IF EXISTS stanowiska_pracy;
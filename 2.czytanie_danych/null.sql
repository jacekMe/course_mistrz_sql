-- praca z NULL - poniższe polecenia nie zadziałają
SELECT *
FROM pracownicy
WHERE drugie_imie = ''
-- WHERE drugie_imie = NULL 
-- WHERE drugie_imie <> NULL 
-- WHERE NULL = NULL
-- WHERE 1 <> NULL
;

-- aby móc wyświetlać NULL trzeba użyć operatora
SELECT *
FROM pracownicy
WHERE drugie_imie IS NULL
-- WHERE drugie_imie IS NOT NULL
;

BEGIN TRANSACTION;

-- przechowywanie NULL i ''(pusty string)
INSERT INTO pracownicy (imie, drugie_imie, nazwisko, stanowisko, email, telefon) 
  VALUES ('Jacek', '', 'Meres', 'analityk danych', 'j.meres@firma.pl', '111-253-874');
     
INSERT INTO pracownicy (imie, drugie_imie, nazwisko, stanowisko, email, telefon) 
  VALUES ('Jacek', NULL, 'Meres', 'analityk danych', 'j.meres@firma.pl', '111-253-874');

SELECT *
FROM pracownicy
WHERE drugie_imie IS NULL;

SELECT *
FROM pracownicy
WHERE drugie_imie ='';

SELECT *
FROM pracownicy
WHERE COALESCE(drugie_imie, '') = '';

ROLLBACK;

-- NULL vs brak wyników
SELECT *
FROM pracownicy
WHERE id_pracownika = 2;
SELECT *
FROM pracownicy
ORDER BY drugie_imie ASC;

SELECT *
FROM wplaty
ORDER BY [data] DESC, kwota ASC;

SELECT id_pracownika, imie + ' ' + nazwisko AS full_name
FROM pracownicy
ORDER BY full_name;

-- alternatywa dla NULLS FIRST / LAST
SELECT *
FROM pracownicy
ORDER BY COALESCE(drugie_imie, 'a');

SELECT *
FROM pracownicy
ORDER BY CASE
            WHEN drugie_imie IS NULL THEN 'a'
            ELSE drugie_imie
         END ASC;
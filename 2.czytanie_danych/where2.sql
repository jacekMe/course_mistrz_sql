SELECT *
FROM klienci
WHERE id_klienta > 10
    OR imie = 'Adam';

-- znaczenie kolejności operatorów
SELECT *
FROM klienci
WHERE id_klienta > 8
    AND imie = 'Mariusz'
    OR telefon = '123456789';

SELECT *
FROM klienci
WHERE id_klienta > 8
    OR imie = 'Mariusz'
    AND telefon = '123456789';

SELECT *
FROM klienci
WHERE id_klienta > 8
    AND (imie = 'Adam'
        OR telefon = '123456789');

-- alternatywne rozwiązania
SELECT *
FROM producenci_modele
WHERE nazwa IN ('Corsa',
                'Civic',
                'Panda');

SELECT *
FROM producenci_modele
WHERE nazwa = 'Corsa'
    OR nazwa = 'Civic'
    OR nazwa = 'Panda';

SELECT *
FROM pracownicy
WHERE COALESCE(drugie_imie, '') = '';

SELECT *
FROM pracownicy
WHERE drugie_imie = ''
    OR drugie_imie IS NULL;
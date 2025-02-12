-- podstawowe operatory
SELECT *
FROM producenci_modele
WHERE cena > 50000;

SELECT *
FROM producenci_modele
WHERE id_producenta = 8;

SELECT *
FROM producenci_modele
WHERE id_modelu > 8;

SELECT *
FROM producenci_modele
WHERE nazwa <> 'Astra';

SELECT *
FROM producenci_modele
WHERE id_modelu > id_producenta;


SELECT *
FROM pracownicy
WHERE imie + ' ' + nazwisko = 'Katarzyna Nowak';

SELECT *
FROM producenci_modele
WHERE cena + 1000 < 50000;


-- between i not between wybiera zakres wartości
SELECT *
FROM producenci_modele
WHERE cena BETWEEN 48990 AND 60000;

-- to samo co powyżej
SELECT *
FROM producenci_modele
WHERE cena >= 48990  
AND cena <= 60000;

SELECT *
FROM producenci_modele
WHERE cena NOT BETWEEN 48990 AND 60000;

SELECT *
FROM producenci_modele
WHERE id_producenta IN (2, 5, 7);

SELECT *
FROM producenci_modele
WHERE id_producenta NOT IN (2, 5, 7);

SELECT *
FROM producenci_modele
WHERE id_producenta IN (1, 2, 3);

SELECT *
FROM producenci_modele
WHERE (id_modelu = 1 AND nazwa = 'Corsa')
OR (id_modelu = 2 AND nazwa = 'Civic')
OR (id_modelu = 9 AND nazwa = 'Panda');

-- LIKE sprawdza czy wartość pasuje do tzw. maski: % = 0 lub więcej znaków; _ = 1 znak

--  wszystkie na litere C
SELECT *
FROM producenci_modele
WHERE nazwa LIKE 'C%';

-- zaczynajce sie od Yaris
SELECT *
FROM producenci_modele
WHERE nazwa LIKE 'Yaris%';

-- Civic + 1 dowolny znak
SELECT *
FROM producenci_modele
WHERE nazwa LIKE 'Civic_';

-- kończą się na literę a
SELECT *
FROM producenci_modele
WHERE nazwa LIKE '%a';

-- mają w sobie literę a
SELECT *
FROM producenci_modele
WHERE nazwa LIKE '%a%';

-- przedostatnia litera to a
SELECT *
FROM producenci_modele
WHERE nazwa LIKE '%a_';

-- nie mają w sobie litery a
SELECT *
FROM producenci_modele
WHERE nazwa NOT LIKE '%a';

-- BEGIN TRANSACTION używamy, aby w razie pomyłki móc później wycofać transakcje
BEGIN TRANSACTION;
INSERT INTO producenci_modele (nazwa, cena, id_producenta) 
    VALUES ('Ibi%za', 91900.00, 15);
    
SELECT *
FROM producenci_modele
WHERE nazwa LIKE '%';

SELECT *
FROM producenci_modele
WHERE nazwa like '%/%%' ESCAPE '/';

-- wycofanie transakcji
ROLLBACK; 

-- wyświetl takie transakcje gdzie data jest niższa od ...
SELECT *
FROM transakcje
WHERE data < CAST('2022-02-01' AS DATE);
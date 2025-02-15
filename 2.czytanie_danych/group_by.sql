-- instrukcja GROUP BY
SELECT *
FROM samochody;

SELECT rok_produkcji, COUNT(*) AS liczba
FROM samochody
GROUP BY rok_produkcji
ORDER BY rok_produkcji;

SELECT id_klienta, SUM(cena)
FROM transakcje
GROUP BY id_klienta;
-- ORDER BY id_klienta;

SELECT id_klienta,
        SUM(cena) AS suma_zakupow,
        COUNT(*) AS liczba_zakupow,
        AVG(cena) AS srednia_wartosc_zakupow,
        MIN(cena) AS najtanszy_zakup,
        MAX(cena) AS najdrozszy_zakup
FROM transakcje
WHERE data BETWEEN CAST('2022-01-01' AS DATE) AND CAST('2022-12-31' AS DATE)
GROUP BY id_klienta
ORDER BY suma_zakupow DESC;

SELECT id_klienta
FROM transakcje
GROUP BY id_klienta
ORDER BY id_klienta;

-- ten sam wynik co powyżej bez użycia GROUP BY
SELECT DISTINCT id_klienta
FROM transakcje
ORDER BY id_klienta;

SELECT COUNT(*)
FROM samochody;

SELECT AVG(cena)
FROM transakcje;

-- instrukcja HAVING
SELECT id_klienta, COUNT(*) AS liczba_zakupow
FROM transakcje
WHERE id_klienta < 10
GROUP BY id_klienta
HAVING COUNT(*) > 4
ORDER BY liczba_zakupow DESC;

-- złożony warunek w HAVING, wynik te co powyżej
SELECT id_klienta, COUNT(*) AS liczba_zakupow
FROM transakcje
GROUP BY id_klienta
HAVING id_klienta < 10 AND COUNT(*) > 4
ORDER BY liczba_zakupow DESC;

-- inna funkcja w HAVING
SELECT id_klienta, COUNT(*) AS liczba_zakupow, SUM(cena) AS suma_zakupow
FROM transakcje
WHERE id_klienta < 10
GROUP BY id_klienta
HAVING SUM(cena) > 55000 AND COUNT(*) > 4
ORDER BY liczba_zakupow DESC;
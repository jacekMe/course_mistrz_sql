-- klauzula FETCH przykłady

SELECT *
FROM transakcje
ORDER BY data DESC
OFFSET 0 ROWS
FETCH FIRST 10 ROWS ONLY;

SELECT *
FROM transakcje
ORDER BY data DESC
OFFSET 4 ROWS
FETCH NEXT 3 ROWS ONLY;

-- użycie klauzuli TOP z WITH TIES
SELECT TOP(10) WITH TIES id_klienta, COUNT(*) AS suma
FROM transakcje
GROUP BY id_klienta
ORDER BY suma DESC;

-- użycie klauzuli TOP z PERCENT
SELECT TOP(15) PERCENT WITH TIES id_klienta, COUNT(*) AS suma
FROM transakcje
GROUP BY id_klienta
ORDER BY suma DESC;

SELECT id_klienta, COUNT(*) AS liczba_zakupow
FROM transakcje 
WHERE cena > 10000
GROUP BY id_klienta
HAVING SUM(cena) > 55000
    AND COUNT(*) > 4
ORDER BY liczba_zakupow DESC
OFFSET 1 ROW
FETCH FIRST 3 ROWS ONLY;
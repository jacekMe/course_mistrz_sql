-- aliasy tabel

SELECT t.id_klienta, t.id_samochodu
FROM transakcje AS t;

SELECT t.*, t.cena * 1.23 AS cena_brutto, GETDATE() AS dzis
FROM transakcje t;

-- zasięg aliasów
SELECT t.cena * 1.23 AS cena_brutto
FROM transakcje AS t
WHERE t.cena * 1.23 > 5
GROUP BY t.cena * 1.23
ORDER BY t.cena * 1.23;

SELECT t.cena * 1.23 AS cena_brutto
FROM transakcje AS t
--WHERE cena_brutto > 5
--GROUP BY cena_brutto
ORDER BY cena_brutto;
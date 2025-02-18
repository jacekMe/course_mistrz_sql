SELECT *
FROM stanowiska_pracy;

-- przykład usuwania danych z tabeli
BEGIN TRANSACTION;

DELETE
FROM stanowiska_pracy
WHERE id > 5;

ROLLBACK;
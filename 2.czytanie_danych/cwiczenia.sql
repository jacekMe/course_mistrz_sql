/* wyświetl wszystkie kolumny i rekordy z tabeli wpłaty sortując je po dacie.
najstarsza wpłata powinna być widoczna jako ostatni rekord*/

SELECT *
FROM wplaty AS w
ORDER BY w.data DESC;

-- wyświetl id i datę transakcji, której cena przekracza 2500

SELECT t.id_transakcji, t.data
FROM transakcje AS t
WHERE t.cena > 2500;

/* wyświetl imię i nazwisko pracownika o id = 3 lub id = 10 na 2 sposoby:
    a. za pomocą operatora OR
    b. za pomocą operatora IN */

SELECT p.imie, p.nazwisko
FROM pracownicy AS p
WHERE id_pracownika = 3 
        OR id_pracownika = 10;

SELECT p.imie, p.nazwisko
FROM pracownicy AS p
WHERE id_pracownika IN (3, 10);

/* napisz polecenie SELECT, które wybierze krotki tabel:
    a. kolumna ['a' i 'b']; id [2, 3, 4]
    b. kolumna 'c'; id [1, 2, 5]
    c. kolumna 'b'; id = 5 */

SELECT a, b
FROM tabela
WHERE id IN (2, 3, 4);
-- WHERE id BETWEEN 2 AND 4;

SELECT c
FROM tabela
WHERE id IN (1, 2, 5);

SELECT b
FROM tabela
WHERE id = 5;

/* wyświetl id pracownika, który dokonał największej liczby transakcji
wraz z informacją jaka to liczba */

SELECT  TOP(1) t.id_pracownika, COUNT(*) AS suma_transakcji
FROM transakcje AS t
GROUP BY id_pracownika
ORDER BY id_pracownika;

SELECT t.id_pracownika, COUNT(*) AS suma_transakcji
FROM transakcje AS t
GROUP BY id_pracownika
ORDER BY suma_transakcji DESC
OFFSET 0 ROWS
FETCH FIRST 1 ROW ONLY;

-- wyświetl średnią cenę transakcji zakupu samochodu

SELECT AVG(t.cena) AS avg_cena
FROM transakcje AS t;

-- wyświetl transakcje na kwotę co najmniej 15 000 zł, ale mniej niż 43 000 zł

SELECT *
FROM transakcje
WHERE cena >= 15000
    AND cena < 43000;

-- wyświetl id klienta, który dokonał ostatniej transakcji w naszym sklepie

SELECT t.id_klienta, t.data
FROM transakcje AS t
ORDER BY [data] DESC
OFFSET 0 ROWS
FETCH FIRST 1 ROW ONLY;

/* sprawdź czy istnieją w bazie danych klienci, którzy mieszkają w Warszawie i 
mają adres e-mail w domenie yahoo */

SELECT *
FROM klienci
WHERE adres LIKE '%Warszawa%'
        AND email LIKE '%yahoo%';

-- w którym roku jest wyprodukowany samochód, który ma najniższy przebieg sposród aut modelu o id=17

SELECT s.rok_produkcji
FROM samochody AS s
WHERE id_samochodu = 17
ORDER BY przebieg ASC
OFFSET 0 ROWS
FETCH FIRST 1 ROW ONLY;

/* wyświetl id_samochodu, rok produkcji oraz przebieg auta zajmującego miejsca 5-10
w rankingu aut o najwyższym przebiegu(nie uwzględniaj przypadku, że kilka aut ma ten
sam przebieg na ostatniej pozycji) */

SELECT s.id_samochodu, s.rok_produkcji, s.przebieg
FROM samochody AS s
ORDER BY przebieg DESC
OFFSET 4 ROWS
FETCH NEXT 6 ROWS ONLY;


/* zmodyfikuj poniższy kod, aby zadziałał w SQL Server, wykorzystując złożony warunek WHERE
SELECT *
FROM producenci_modele
WHERE (id_modelu, nazwa) IN (
        (1, 'Corsa'),
        (2, 'Civic'),
        (9, 'Panda'));
*/

SELECT *
FROM producenci_modele
WHERE id_modelu IN (1, 2, 9) 
        AND nazwa IN ('Corsa', 'Civic', 'Panda');

SELECT *
FROM producenci_modele
WHERE (id_modelu = 1 AND nazwa = 'Corsa')
    OR (id_modelu = 2 AND nazwa = 'Civic')
    OR (id_modelu = 9 AND nazwa = 'Panda');
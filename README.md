# Kurs Mistrz SQL

## O repozytorium

To repozytorium zawiera materiały, ćwiczenia i projekty SQL realizowane w ramach kursu **[Mistrz SQL](https://platforma.nieinformatyk.pl/kurs/3085/mistrz-sql)** autorstwa Darka Butkiewicza i dostępnego na platformie *nieinformatyk.pl*.

---

## Autor kursu

Ten kurs został stworzony przez **Darek Butkiewicz** twórce kanału na youtube **[nieinformatyk](https://www.youtube.com/@nieinformatyk)** oraz twórcę kursów takich jak: 
- **[Poznaj świat baz danych](https://platforma.nieinformatyk.pl/kategoria/201/podstawy-relacyjnych-baz-danych)**
- **[Programowanie PL/SQL](https://platforma.nieinformatyk.pl/kategoria/590/programowanie-plsql)**
- **[Mistrz SQL](https://platforma.nieinformatyk.pl/kategoria/202/jezyk-zapytan-sql)**

--- 

## Cel Kursu

- analiza danych przy pomocy SQL
- zaimplementować w SQL dowolny model danych
- tworzenie zapytań SQL wykorzystujące:
    - SELECT
    - JOIN
    - GROUP BY
    - subquery
    - funkcje analityczne
    - rekurencję
- zapewniać współbieżność oraz wydajność transakcji
- zarządzanie obiektami oraz uprawnieniami w bazie danych
- poznać najlepsze praktyki tworzenia kodu SQL

---

## Technologie

Podczas kursu przede wszytkim będę korzystał z **MS SQL Server** wykorzystując **Visual Studio Code**.  
Natomiast sam kurs jest przedstawiany dla 3 różnych systemów baz danych:
- **Oracle**
- **PostgreSQL**
- **MS SQL Server**

---

## Co znajdziesz w repozytorium?

W repozytorium znajdują się różne zagadnienia zaczynając od podstaw baz danych po zaawansowane funkcje SQL. Znajdą się tu przykładowe kody i rozwiązania zadań z następujących zagadnień:

- **Podstawy baz danych**
    - co to jest baza danych
    - rodzaje baz danych
    - architektura baz danych
    - model relacyjny - podstawy
    - modelowanie baz danych
    - obiekty w bazie danych
    - tworzenie baz danych
    - co to jest i jak działa SQL
    - standard SQL
    - rodzaje poleceń SQL
    - składnia SQL

- **Czytanie danych**
    - instrukcja SELECT
    - aliasy kolumn i wyrażeń
    - filtrowanie rekordów
    - wartość NULL
    - warunek WHERE
    - sortowanie danych
    - grupowanie danych
    - ograniczanie liczby rekordów
    - kolejność instrukcji w SELECT

- **Praca z tabelą**
    - jak tworzyć tabelę
    - wstawianie danych do tabeli
    - modyfikacja tabeli
    - usuwanie danych z tabeli
    - constrainty:
        - PRIMARY KEY
        - UNIQUE
        - NOT NULL
        - CHECK
        - DEFAULT
        - FOREIGN KEY

- **Typy danych**
    - kategorie typów danych
    - lista typów danych
    - funkcje tekstowe
    - funkcje liczbowe
    - funkcje daty
    - boolean
    - funkcje logiczne
    - funkcje do pracy z NULL
    - funkcje systemowe/informacyjne
    - konwersja typów danych
    - zagnieżdżanie funkcji

- **Grupowanie danych**
    - instrukcja GROUP BY
    - funkcje agregujące
    - instrukcja HAVING
    - funkcje agregujące a NULL
    - funkcja DISTINCT
    - poziom agregacji danych
    - instrukcja ROLLUP
    - instrukcja CUBE
    - funkcje FIRST/LAST
    - filtrowanie funkcji

- **Łączenie tabel**
    - schemat łączenia tabel
    - metody złączeń tabel
    - INNER JOIN
    - LEFT JOIN
    - RIGHT JOIN
    - FULL JOIN
    - CROSS JOIN
    - SELF JOIN
    - NATURAL JOIN

- **Podzapytania**
    - rodzaje podzapytań
    - jednowierszowe
    - wielowierszowe
    - wielokolumnowe
    - zagnieżdżone
    - skorelowane
    - EXISTS
    - ALL, ANY, SOME
    - CTE

- **Modyfikacja danych**
    - czym są polecenia DML
    - polecenie TRUNCATE
    - polecenie MERGE
    - INSERT
    - UPDATE
    - DELETE

- **Zarządzanie transakcjami**
    - lista poleceń TCL
    - co to jest transakcja
    - model ACID
    - DDL w transakcjach
    - SAVEPOINT
    - model MVCC
    - poziomy izolacji
    - podstawy blokowania
    - obsługa DEADLOCK

- **Zarządzanie obiektami**
    - czym są polecenia DDL
    - lista obiektów w SQL
    - praca ze schematem
    - praca z tabelą
    - rodzaje tabel
    - widok
    - widok zmaterializowany
    - indeks
    - sekwencja
    - RENAME vs RECREATE

- **Zarządzanie uprawnieniami**
    - lista poleceń DCL
    - uprawnienia w bazie danych
    - polecenie GRANT
    - polecenie REVOKE
    - polecenie DENY
    - tworzenie użytkownika
    - WITH GRANT/ADMIN OPTION
    - zarządzanie uprawnieniami

- **Funkcje analityczne**
    - co to jest funkcja analityczna
    - partycjonowanie w funkcji analitycznej
    - sortowanie w f. analitycznej
    - f. analityczne vs agregujące
    - f. rankingowe
    - f. przesunięcia
    - ROWS, RANGE, GROUP
    - funkcje analityczne a podzapytanie

- **Zaawansowane funckje SQL**
    - operatory SET
    - zapytania hierarchiczne
    - instrukcja CONNECT BY
    - zapętlenie w hierarchii
    - generowanie danych - CONNECT BY
    - rekurencyjny CTE
    - instrukcja PIVOT, UNPIVOT
    - wyrażenia regularne
    - dziury i wyspy w SQL

- **Dobre praktyki i optymalizacja**
    - konwencja nazewnicza
    - formatowanie kodu SQL
    - utrzymanie kodu SQL
    - optymalizacja SQL
    - algorytmy dostępu do danych
    - indeks w SQL
    - debugowanie kodu SQL

---

## Kontakt
Jeśli masz pytania, sugestie lub chcesz podzielić się opinią, skontaktuj się ze mną:
- **Email:** jacekmeres@gmail.com
- **GitHub:** https://github.com/jacekMe
- **LinkedIn** https://www.linkedin.com/in/jacekmeres/

---

## Licencja
Kod zawarty w tym repozytorium jest dostępny na licencji MIT.
Pamiętaj jednak, że materiały kursu są chronione prawami autorskimi i należą do Darka Butkiewicza.
Jeśli chcesz skorzystać z jego kursu, odwiedź jego stronę *www.nieinformatyk.pl*.

---
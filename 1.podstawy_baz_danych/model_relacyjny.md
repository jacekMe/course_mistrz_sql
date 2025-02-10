# MODEL RELACYJNY

### 12 ZASAD EDGARA CODDA

- Dane są przechowywane wyłącznie w tabelach (krotkach)
- Dostęp do danych ma miejsce przez podanie nazwy tabeli, nazwy kolumny i klucza głównego
- Istnieje wartość NULL
- W bazie istnieją metadane (dane o danych)
- Istnieje język zapytań obsługujący bazę danych (SQL)
- Widoki pozwalają na operacje DML
- Oprócz czytania można też modyfikować dane (DML)
- Fizyczna niezależność danych
- Logiczna niezależność danych
- Dostępne więzy spójności (NOT NULL, FK, UNIQUE, itd.)
- Niezależność dystrybucyjna - przezroczytość danych leżących fizycznie w kilku miejscach
- Nie można ominąć reguł BD operacjami niższego poziomu

### CONSTRAINTY

- klucz główny (PRIMARY KEY)
- klucz obcy (FOREIGN KEY)
- unikalność (UNIQUE)
- nullowość (NOT NULL)
- wartość domyślna (DEFAULT)
- specyficzne ograniczenie (CHECK)

### NORMALIZACJA

- **CEL**
    - uniknięcie problemów z anomalią czytania, wstawiania, modyfikacji i usuwania
- **PROCES**
    - projektowanie tabel zgodnie z wymaganiami 3 postaci
- **REGUŁA**
    - możemy wrócić do punktu wyjścia i nie wygenerowaliśmy nowych danych
- **ZALETY**
    - spójność, mały rozmiar danych, łatwy DML
- **WADA**
    - bardziej złożony i mniej niewydajny SELECT poprzez konieczność łączenia tabel (JOIN)

- **3 POSTACIE NORMALNE**

    - **1NF**
        - wszystkie kolumny są atomowe - nie ma list/kilku wartości w jednej kolumnie
    - **2NF**
        - 1NF + wszystkie kolumny niekluczowe zależą od klucza (PK)
    - **3NF**
        - 2NF + żadna kolumna niekluczowa nie zależy od kolumny innej niż klucz (PK)
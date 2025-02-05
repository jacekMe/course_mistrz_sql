# MODELOWANIE BAZ DANYCH

## MODEL KONCEPTUALNY (model ogólny)
    
- cel: zrozumienie potrzeb biznesowych
- encje i powiązania

## MODEL LOGICZNY (model szczegółowy)

- cel: pośrednik między biznesem (konceptualny), a IT (fizyczny)
- model konceptualny+:
    - atrybuty
    - normalizacja
    - constrainty
    - specyfikacja wiązań

## MODEL FIZYCZNY (model pod DBMS)

- cel: implementacja modelu w DBMS
- model logiczny+:
    - typy danych (typy atrybutów)
    - dodatkowe obiekty (widoki, indeksy, itd.) i kolumny techniczne
    - konwencje nazewnicze
    - rozwiązania specyficzne dla DBMS

## FUNKCJE TABEL

- **TABELA DANYCH**  

    - dane biznesowe (podmioty + procesy)

- **TABELA ŁĄCZĄCA**  

    - rozbicie wiązania n:n na 2 wiązania 1:n

- **TABELA WALIDACYJNA** 

    - zbiór dopuszczalnych wartości

- **TABELA PODZBIÓR**

    - podzbiór zestawu kolumn z tabeli nadrzędnej

## SPECYFIKACJA WIĄZAŃ

- **LICZEBNOŚĆ**

    - ile tabel bierze udział w wiązaniu

- **OBOWIĄZKOWOŚĆ**

    - czy dla każdego rekordu nadrzędnego musi istnieć co najmniej 1 rekord podrzędny

- **TYP**

    - 1:1
    - 1:n
    - n:n

- **STOPIEŃ**

    - ile rekordów podrzędnych może być maksymalnie przypisanych do rekordu nadrzędnego

## TERMINOLOGIA 

- **MODEL RELACYJNY**

    - teoria relacyjna
        - relacja
        - atrybut
        - krotka

- **MODEL LOGICZNY**

    - diagram związków-encji
        - encja
        - atrybut
        - instancja
        
- **MODEL FIZYCZNY**

    - język zapytań SQL
        - tabela
        - kolumna
        - rekord/wiers 
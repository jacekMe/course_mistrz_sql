# BAZA DANYCH vs HURTOWNIA DANYCH

### OLTP *(Online Transaction Processing)*

- wsparcie bieżących procesów
- zazwyczaj dane aktualne
- dużo, krótkich transakcji DML
- baza danych - normalizacja (3NF)
- orientacja danych - rekordowa
- względnie znany sposób dostępu
- interakcja
- źródłem danych aplikacje klienta i pracownika

### OLAP *(Online Analytical Processing)*

- wsparcie analityczne
- zazwyczaj dane historyczne
- niewiele, długich transakcji (ETL/ELT)
- hurtownia danych - denormalizacja (Kimball, Inmon, Data Vault, OBT)
- orientacja danych - kolumnowa
- zapytania ad hoc
- przetwarzanie batchowe/strumieniowe
- źródłem danych systemy źródłowe

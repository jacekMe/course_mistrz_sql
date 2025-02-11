-- operatory matematyczne
SELECT 12 * 15,
        1 + 2,
        20 - 10,
        25/5,
        5%2;

-- operator konkatenacji (tekst)
SELECT 'Ala ma' , 'kota', '.';
SELECT 'Ala ma'+' '+'kota'+'.';

-- wszystkie kolumny z tabeli pracownicy
SELECT *
FROM pracownicy;

-- wszystkie kolumny z tabeli samochody
SELECT *
FROM samochody;

-- wybór kolumn
SELECT id_pracownika, imie, stanowisko
FROM pracownicy;

-- wyświetlenie danych dużymi literami
SELECT UPPER(imie + ' ' + nazwisko)
FROM pracownicy;

-- wyliczenie ceny brutto
SELECT nazwa, cena, cena * 1.23
FROM producenci_modele;

-- wyświetlenie zalogowanego użytkownika oraz dzisiejszą datę
SELECT CURRENT_USER, GETDATE();
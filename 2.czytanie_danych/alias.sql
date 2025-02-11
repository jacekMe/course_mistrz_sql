-- alias z AS
SELECT  id_pracownika AS id_employee,
        UPPER(imie + ' ' + nazwisko) AS first_name_last_name,
        stanowisko AS position,
        telefon AS phone
FROM pracownicy;

-- alias w czudzysłowie
SELECT UPPER(imie + ' ' + nazwisko) AS "first name & last name"
FROM pracownicy;

-- alias bez AS
SELECT  nazwa name_product,
        cena price_netto,
        cena * 1.23 price_brutto
FROM producenci_modele
ORDER BY price_brutto;
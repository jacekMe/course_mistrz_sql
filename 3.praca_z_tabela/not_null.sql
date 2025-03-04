SELECT *
FROM stanowiska_pracy;

-- dodawanie do istniejącej tabeli
ALTER TABLE stanowiska_pracy
    DROP CONSTRAINT stanowiska_pracy_nazwa_uq;

-- brak możliwości dodania nazwy dla CONSTRAINTA
ALTER TABLE stanowiska_pracy
ALTER COLUMN nazwa VARCHAR(50) NOT NULL;

ALTER TABLE stanowiska_pracy
ADD CONSTRAINT stanowiska_pracy_nazwa_uq UNIQUE(nazwa);

INSERT INTO stanowiska_pracy (id, nazwa) VALUES (2, NULL)
INSERT INTO stanowiska_pracy (id, nazwa) VALUES (3, NULL)

-- ROLLBACK
-- tworzenie not null wraz z tabelą i nazwami CONSTRAINTÓW
DROP TABLE stanowiska_pracy;
CREATE TABLE stanowiska_pracy (
    id      INTEGER,
    nazwa VARCHAR(50) CONSTRAINT stanowiska_pracy_nazwa_nn NOT NULL,
    CONSTRAINT stanowiska_pracy_id_pk PRIMARY KEY(id),
    CONSTRAINT stanowiska_pracy_nazwa_uq UNIQUE(nazwa)
);
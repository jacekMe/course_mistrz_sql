-- tworzenie tabeli z nazwami CONSTRAINTÓW
DROP TABLE stanowiska_pracy;
CREATE TABLE stanowiska_pracy (
    id      INTEGER,
    nazwa   VARCHAR(50) CONSTRAINT stanowiska_pracy_nazwa_nn NOT NULL,
    CONSTRAINT stanowiska_pracy_id_pk PRIMARY KEY (id),
    CONSTRAINT stanowiska_pracy_id_chk CHECK (id > 0),
    CONSTRAINT stanowiska_pracy_nazwa_uq UNIQUE (nazwa)
);

SELECT *
FROM stanowiska_pracy;

BEGIN TRANSACTION;
INSERT INTO stanowiska_pracy (id, nazwa) VALUES (-1, 'księgowy');
ROLLBACK;

ALTER TABLE stanowiska_pracy
    ADD CONSTRAINT stanowiska_pracy_id_chk CHECK (id > 0)
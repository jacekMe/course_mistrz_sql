-- stworzenie kopi tabeli
SELECT *
    INTO stanowiska_pracy_kopia
    FROM stanowiska_pracy;

-- tworzenie PK bez nazwy constrainta
-- PK podczas tworzenia tabeli - inline
DROP TABLE stanowiska_pracy;
CREATE TABLE stanowiska_pracy (
    id  INTEGER PRIMARY KEY,
    nazwa VARCHAR(50)
);

-- PK podczas tworzenia tabeli - outline
DROP TABLE stanowiska_pracy;
CREATE TABLE stanowiska_pracy (
    id  INTEGER,
    nazwa VARCHAR(50),
    PRIMARY KEY (id)
);

-- BEGIN TRANSACTION
INSERT INTO stanowiska_pracy (nazwa) VALUES ('Programista');
INSERT INTO stanowiska_pracy (id, nazwa) VALUES (NULL, 'Programista');

INSERT INTO stanowiska_pracy (id, nazwa) VALUES (1, 'Programista');
INSERT INTO stanowiska_pracy (id, nazwa) VALUES (2, 'Help Desk');
-- ROLLBACK

-- tworzenie PK z nazwą constrainta
DROP TABLE stanowiska_pracy;
CREATE TABLE stanowiska_pracy (
    id  INTEGER CONSTRAINT stanowiska_pracy_id_pk PRIMARY KEY,
    nazwa VARCHAR(50)
);

DROP TABLE stanowiska_pracy;
CREATE TABLE stanowiska_pracy (
    id  INTEGER,
    nazwa VARCHAR(50),
    CONSTRAINT stanowiska_pracy_id_pk PRIMARY KEY (id)
);

-- dodawanie PK do istniejącej tabeli
DROP TABLE stanowiska_pracy;
CREATE TABLE stanowiska_pracy (
    id  INTEGER,
    nazwa VARCHAR(50)
);

-- to polecenie nie doda PK (potrzebny NOT NULL)
ALTER TABLE stanowiska_pracy
        ADD PRIMARY KEY (id);

ALTER TABLE stanowiska_pracy
        ADD CONSTRAINT stanowiska_pracy_id_pk PRIMARY KEY (id);

-- BEGIN TRANSACTION
INSERT INTO stanowiska_pracy (id, nazwa) VALUES (1, 'Programista');
INSERT INTO stanowiska_pracy (id, nazwa) VALUES (2, 'Programista');
-- ROLLBACK
-- COMMIT
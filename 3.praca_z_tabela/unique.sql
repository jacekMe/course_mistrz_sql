SELECT *
FROM stanowiska_pracy
ORDER BY id;

-- BEGIN TRANSACTION
INSERT INTO stanowiska_pracy (id, nazwa) VALUES (1, 'Programista');
INSERT INTO stanowiska_pracy (id, nazwa) VALUES (2, 'Programista');
-- ROLLBACK

ALTER TABLE stanowiska_pracy
    ADD CONSTRAINT stanowiska_pracy_nazwa_uq UNIQUE(nazwa);

INSERT INTO stanowiska_pracy (id, nazwa) VALUES (2, NULL);
INSERT INTO stanowiska_pracy (id, nazwa) VALUES (3, NULL);
-- ROLLBACK
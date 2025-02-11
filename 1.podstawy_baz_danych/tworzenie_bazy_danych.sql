-- Tworzenie tabeli klienci
    DROP TABLE IF EXISTS klienci;
    CREATE TABLE klienci (
         id_klienta     INT             IDENTITY
       , imie           VARCHAR(50)     NOT NULL
       , nazwisko       VARCHAR(50)     NOT NULL
       , email          VARCHAR(50)     NOT NULL
       , telefon        VARCHAR(20)     NOT NULL
       , adres          VARCHAR(100)    NOT NULL
       , CONSTRAINT klienci_pk PRIMARY KEY (id_klienta)
    );

-- Tworzenie tabeli pracownicy
    DROP TABLE IF EXISTS pracownicy;
    CREATE TABLE pracownicy (
       id_pracownika    INT         IDENTITY
     , imie             VARCHAR(50) NOT NULL
     , drugie_imie      VARCHAR(50) 
     , nazwisko         VARCHAR(50) NOT NULL
     , stanowisko       VARCHAR(50) NOT NULL
     , email            VARCHAR(50) NOT NULL
     , telefon          VARCHAR(20) NOT NULL
     , CONSTRAINT pracownicy_pk PRIMARY KEY (id_pracownika)
    );

-- Tworzenie tabeli prodenci
    DROP TABLE IF EXISTS producenci;
    CREATE TABLE producenci (
        id_producenta       INT         IDENTITY
      , nazwa               VARCHAR(50) NOT NULL
      , kraj_pochodzenia    VARCHAR(50) NOT NULL
      , rok_zalozenia       INT         NOT NULL
      , CONSTRAINT producenci_pk PRIMARY KEY (id_producenta)
    );

-- Tworzenie tabeli producenci_modele
    DROP TABLE IF EXISTS producenci_modele;
    CREATE TABLE producenci_modele (
      id_modelu     INT             IDENTITY
    , nazwa         VARCHAR(50)     NOT NULL
    , cena          NUMERIC(10,2)   NOT NULL
    , id_producenta INT             NOT NULL
    , CONSTRAINT producenci_modele_pk PRIMARY KEY (id_modelu)
    , CONSTRAINT producenci_modele_id_producenta_fk FOREIGN KEY (id_producenta) REFERENCES producenci(id_producenta)
    );

-- Tworzenie tabeli samochody
    DROP TABLE IF EXISTS samochody;
    CREATE TABLE samochody (
      id_samochodu  INT IDENTITY
    , rok_produkcji INT NOT NULL
    , przebieg      INT NOT NULL
    , id_modelu     INT NOT NULL
    , CONSTRAINT samochody_pk PRIMARY KEY (id_samochodu)
    , CONSTRAINT samochody_id_modelu_fk FOREIGN KEY (id_modelu) REFERENCES producenci_modele(id_modelu)
    );

-- Tworzenie tabeli transakcje
    DROP TABLE IF EXISTS transakcje;
    CREATE TABLE transakcje (
      id_transakcji INT             IDENTITY
    , id_klienta    INT             NOT NULL
    , id_pracownika INT             NOT NULL
    , id_samochodu  INT             NOT NULL
    , data          DATE            NOT NULL
    , cena          NUMERIC(10,2)   NOT NULL
    , CONSTRAINT transakcje_pk PRIMARY KEY (id_transakcji)
    , CONSTRAINT transakcje_id_klienta_fk FOREIGN KEY (id_klienta) REFERENCES klienci(id_klienta)
    , CONSTRAINT transakcje_id_pracownika_fk FOREIGN KEY (id_pracownika) REFERENCES pracownicy(id_pracownika)
    , CONSTRAINT transakcje_id_samochodu_fk FOREIGN KEY (id_samochodu) REFERENCES samochody(id_samochodu)
    );

-- Tworzenie tabeli wplaty
    DROP TABLE IF EXISTS wplaty;
    CREATE TABLE wplaty (
      id_wplaty     INT             IDENTITY
    , id_klienta    INT             NOT NULL
    , id_transakcji INT             NOT NULL
    , data          DATE            NOT NULL
    , kwota         NUMERIC(10,2)   NOT NULL
    , CONSTRAINT wplaty_pk PRIMARY KEY (id_wplaty)
    , CONSTRAINT wplaty_id_klienta_fk FOREIGN KEY (id_klienta) REFERENCES klienci(id_klienta)
    , CONSTRAINT wplaty_id_transakcji_fk FOREIGN KEY (id_transakcji) REFERENCES transakcje(id_transakcji)
    );
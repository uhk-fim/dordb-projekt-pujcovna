CREATE TABLE adresa (
  id number(10) NOT NULL,
  cp varchar2(10) NOT NULL,
  ulice varchar2(40) NOT NULL,
  mesto varchar2(30) NOT NULL,
  psc varchar2(6) NOT NULL,
  PRIMARY KEY (id)
)  ;

-- Generate ID using sequence and trigger
CREATE SEQUENCE adresa_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER adresa_seq_tr
 BEFORE INSERT ON adresa FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT adresa_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/


CREATE TABLE barva (
  id number(10) NOT NULL,
  kod_barvy varchar2(60) NOT NULL,
  typ_barvy varchar2(30) NOT NULL,
  barva varchar2(30) NOT NULL,
  PRIMARY KEY (id)
)  ;

-- Generate ID using sequence and trigger
CREATE SEQUENCE barva_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER barva_seq_tr
 BEFORE INSERT ON barva FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT barva_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/


CREATE TABLE karoserie (
  id number(10) NOT NULL,
  typ_karoserie varchar2(50) NOT NULL,
  PRIMARY KEY (id)
)  ;

-- Generate ID using sequence and trigger
CREATE SEQUENCE karoserie_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER karoserie_seq_tr
 BEFORE INSERT ON karoserie FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT karoserie_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/


CREATE TABLE kubatura (
  id number(10) NOT NULL,
  kubatura varchar2(10) NOT NULL,
  ridicske_opravneni varchar2(3) NOT NULL,
  PRIMARY KEY (id)
)  ;

-- Generate ID using sequence and trigger
CREATE SEQUENCE kubatura_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER kubatura_seq_tr
 BEFORE INSERT ON kubatura FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT kubatura_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/


CREATE TABLE motorka (
  id number(10) NOT NULL,
  SPZ varchar2(20) NOT NULL,
  VIN varchar2(80) NOT NULL,
  takt_motoru number(10) NOT NULL,
  cena_den number(10) NOT NULL,
  id_barva number(10) NOT NULL,
  id_kubatura number(10) NOT NULL,
  id_typ_motorky number(10) NOT NULL,
  id_prevodovka number(10) NOT NULL,
  id_oznaceni number(10) NOT NULL,
  PRIMARY KEY (id)
 ,
  CONSTRAINT motorka_ibfk_1 FOREIGN KEY (id_kubatura) REFERENCES kubatura (id),
  CONSTRAINT motorka_ibfk_2 FOREIGN KEY (id_typ_motorky) REFERENCES typ_motorky (id),
  CONSTRAINT motorka_ibfk_3 FOREIGN KEY (id_prevodovka) REFERENCES prevodovka (id),
  CONSTRAINT motorka_ibfk_4 FOREIGN KEY (id_oznaceni) REFERENCES oznaceni (id),
  CONSTRAINT motorka_ibfk_5 FOREIGN KEY (id_barva) REFERENCES barva (id)
)  ;

-- Generate ID using sequence and trigger
CREATE SEQUENCE motorka_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER motorka_seq_tr
 BEFORE INSERT ON motorka FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT motorka_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/

CREATE INDEX id_kubatura ON motorka (id_kubatura);
CREATE INDEX id_typ_motorky ON motorka (id_typ_motorky);
CREATE INDEX id_prevodovka ON motorka (id_prevodovka);
CREATE INDEX id_oznaceni ON motorka (id_oznaceni);


CREATE TABLE oznaceni (
  id number(10) NOT NULL,
  vyrobce varchar2(50) NOT NULL,
  nazev varchar2(50) NOT NULL,
  PRIMARY KEY (id)
)  ;

-- Generate ID using sequence and trigger
CREATE SEQUENCE oznaceni_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER oznaceni_seq_tr
 BEFORE INSERT ON oznaceni FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT oznaceni_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/


CREATE TABLE pohon (
  id number(10) NOT NULL,
  typ_pohonu varchar2(30) NOT NULL,
  PRIMARY KEY (id)
)  ;

-- Generate ID using sequence and trigger
CREATE SEQUENCE pohon_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER pohon_seq_tr
 BEFORE INSERT ON pohon FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT pohon_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/


CREATE TABLE polozka_vypujcky (
  id number(10) NOT NULL,
  id_vypujcka number(10) NOT NULL,
  id_vozidlo number(10) DEFAULT NULL,
  id_motorka number(10) DEFAULT NULL,
  PRIMARY KEY (id)
 ,
  CONSTRAINT polozka_vypujcky_ibfk_1 FOREIGN KEY (id_vypujcky) REFERENCES vypujcka (id)
)  ;

-- Generate ID using sequence and trigger
CREATE SEQUENCE polozka_vypujcky_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER polozka_vypujcky_seq_tr
 BEFORE INSERT ON polozka_vypujcky FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT polozka_vypujcky_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/

CREATE INDEX id_vypujcky ON polozka_vypujcky (id_vypujcky);


CREATE TABLE prevodovka (
  id number(10) NOT NULL,
  typ_prevodovky varchar2(40) NOT NULL,
  PRIMARY KEY (id)
)  ;

-- Generate ID using sequence and trigger
CREATE SEQUENCE prevodovka_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER prevodovka_seq_tr
 BEFORE INSERT ON prevodovka FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT prevodovka_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/


CREATE TABLE typ_motorky (
  id number(10) NOT NULL,
  typ_motorky varchar2(30) NOT NULL,
  PRIMARY KEY (id)
)  ;

-- Generate ID using sequence and trigger
CREATE SEQUENCE typ_motorky_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER typ_motorky_seq_tr
 BEFORE INSERT ON typ_motorky FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT typ_motorky_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/


CREATE TABLE vozidlo (
  id number(10) NOT NULL,
  SPZ varchar2(20) NOT NULL,
  VIN varchar2(80) NOT NULL,
  pocet_mist number(10) NOT NULL,
  strana_rizeni varchar2(10) NOT NULL,
  cena_den number(10) NOT NULL,
  id_barva number(10) NOT NULL,
  id_karoserie number(10) NOT NULL,
  id_prevodovka number(10) NOT NULL,
  id_pohon number(10) NOT NULL,
  id_oznaceni number(10) NOT NULL,
  PRIMARY KEY (id)
 ,
  CONSTRAINT vozidlo_ibfk_1 FOREIGN KEY (id_barva) REFERENCES barva (id),
  CONSTRAINT vozidlo_ibfk_2 FOREIGN KEY (id_karoserie) REFERENCES karoserie (id),
  CONSTRAINT vozidlo_ibfk_3 FOREIGN KEY (id_prevodovka) REFERENCES prevodovka (id),
  CONSTRAINT vozidlo_ibfk_4 FOREIGN KEY (id_pohon) REFERENCES pohon (id),
  CONSTRAINT vozidlo_ibfk_5 FOREIGN KEY (id_oznaceni) REFERENCES oznaceni (id)
)  ;

-- Generate ID using sequence and trigger
CREATE SEQUENCE vozidlo_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER vozidlo_seq_tr
 BEFORE INSERT ON vozidlo FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT vozidlo_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/

CREATE INDEX id_barva ON vozidlo (id_barva);
CREATE INDEX id_karoserie ON vozidlo (id_karoserie);
CREATE INDEX id_prevodovka ON vozidlo (id_prevodovka);
CREATE INDEX id_pohon ON vozidlo (id_pohon);
CREATE INDEX id_oznaceni ON vozidlo (id_oznaceni);


CREATE TABLE vypujcka (
  id number(10) NOT NULL,
  zacatek timestamp(0) NOT NULL,
  konec timestamp(0) NOT NULL,
  datum_sjednani timestamp(0) NOT NULL,
  datum_vraceni timestamp(0) DEFAULT NULL,
  id_zakaznik number(10) NOT NULL,
  cislo_pojistky varchar2(30) NOT NULL,
  PRIMARY KEY (id)
)  ;

-- Generate ID using sequence and trigger
CREATE SEQUENCE vypujcka_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER vypujcka_seq_tr
 BEFORE INSERT ON vypujcka FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT vypujcka_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/


CREATE TABLE zakaznik (
  id number(10) NOT NULL,
  jmeno varchar2(60) NOT NULL,
  cisloOP varchar2(60) NOT NULL,
  email varchar2(60) NOT NULL,
  telefon varchar2(20) NOT NULL,
  id_adresa number(10) NOT NULL,
  zakazano number(10) DEFAULT '0' NOT NULL,
  PRIMARY KEY (id)
 ,
  CONSTRAINT zakaznik_ibfk_1 FOREIGN KEY (id_adresa) REFERENCES adresa (id)
)  ;

-- Generate ID using sequence and trigger
CREATE SEQUENCE zakaznik_seq START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER zakaznik_seq_tr
 BEFORE INSERT ON zakaznik FOR EACH ROW
 WHEN (NEW.id IS NULL)
BEGIN
 SELECT zakaznik_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/

CREATE INDEX id_adresa ON zakaznik (id_adresa);

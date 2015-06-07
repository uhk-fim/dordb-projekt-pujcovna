--------------------------------------------------------
--  DDL for Trigger ADRESA_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSEFJA1"."ADRESA_SEQ_TR" 
 BEFORE INSERT ON adresa FOR EACH ROW
  WHEN (NEW.id IS NULL) BEGIN
 SELECT adresa_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
ALTER TRIGGER "JOSEFJA1"."ADRESA_SEQ_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger BARVA_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSEFJA1"."BARVA_SEQ_TR" 
 BEFORE INSERT ON barva FOR EACH ROW
  WHEN (NEW.id IS NULL) BEGIN
 SELECT barva_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
ALTER TRIGGER "JOSEFJA1"."BARVA_SEQ_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KAROSERIE_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSEFJA1"."KAROSERIE_SEQ_TR" 
 BEFORE INSERT ON karoserie FOR EACH ROW
  WHEN (NEW.id IS NULL) BEGIN
 SELECT karoserie_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
ALTER TRIGGER "JOSEFJA1"."KAROSERIE_SEQ_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger KUBATURA_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSEFJA1"."KUBATURA_SEQ_TR" 
 BEFORE INSERT ON kubatura FOR EACH ROW
  WHEN (NEW.id IS NULL) BEGIN
 SELECT kubatura_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
ALTER TRIGGER "JOSEFJA1"."KUBATURA_SEQ_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger MOTORKA_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSEFJA1"."MOTORKA_SEQ_TR" 
 BEFORE INSERT ON motorka FOR EACH ROW
  WHEN (NEW.id IS NULL) BEGIN
 SELECT motorka_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
ALTER TRIGGER "JOSEFJA1"."MOTORKA_SEQ_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger OZNACENI_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSEFJA1"."OZNACENI_SEQ_TR" 
 BEFORE INSERT ON oznaceni FOR EACH ROW
  WHEN (NEW.id IS NULL) BEGIN
 SELECT oznaceni_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
ALTER TRIGGER "JOSEFJA1"."OZNACENI_SEQ_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger POHON_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSEFJA1"."POHON_SEQ_TR" 
 BEFORE INSERT ON pohon FOR EACH ROW
  WHEN (NEW.id IS NULL) BEGIN
 SELECT pohon_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
ALTER TRIGGER "JOSEFJA1"."POHON_SEQ_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger POLOZKA_VYPUJCKY_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSEFJA1"."POLOZKA_VYPUJCKY_SEQ_TR" 
 BEFORE INSERT ON polozka_vypujcky FOR EACH ROW
  WHEN (NEW.id IS NULL) BEGIN
 SELECT polozka_vypujcky_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
ALTER TRIGGER "JOSEFJA1"."POLOZKA_VYPUJCKY_SEQ_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger PREVODOVKA_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSEFJA1"."PREVODOVKA_SEQ_TR" 
 BEFORE INSERT ON prevodovka FOR EACH ROW
  WHEN (NEW.id IS NULL) BEGIN
 SELECT prevodovka_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
ALTER TRIGGER "JOSEFJA1"."PREVODOVKA_SEQ_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TYP_MOTORKY_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSEFJA1"."TYP_MOTORKY_SEQ_TR" 
 BEFORE INSERT ON typ_motorky FOR EACH ROW
  WHEN (NEW.id IS NULL) BEGIN
 SELECT typ_motorky_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
ALTER TRIGGER "JOSEFJA1"."TYP_MOTORKY_SEQ_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VOZIDLO_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSEFJA1"."VOZIDLO_SEQ_TR" 
 BEFORE INSERT ON vozidlo FOR EACH ROW
  WHEN (NEW.id IS NULL) BEGIN
 SELECT vozidlo_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
ALTER TRIGGER "JOSEFJA1"."VOZIDLO_SEQ_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VYPUJCKA_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSEFJA1"."VYPUJCKA_SEQ_TR" 
 BEFORE INSERT ON vypujcka FOR EACH ROW
  WHEN (NEW.id IS NULL) BEGIN
 SELECT vypujcka_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
ALTER TRIGGER "JOSEFJA1"."VYPUJCKA_SEQ_TR" ENABLE;
--------------------------------------------------------
--  DDL for Trigger ZAKAZNIK_SEQ_TR
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "JOSEFJA1"."ZAKAZNIK_SEQ_TR" 
 BEFORE INSERT ON zakaznik FOR EACH ROW
  WHEN (NEW.id IS NULL) BEGIN
 SELECT zakaznik_seq.NEXTVAL INTO :NEW.id FROM DUAL;
END;
/
ALTER TRIGGER "JOSEFJA1"."ZAKAZNIK_SEQ_TR" ENABLE;

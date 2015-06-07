--------------------------------------------------------
--  DDL for Procedure KONTROLA_HODIN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSEFJA1"."KONTROLA_HODIN" (max_hour NUMBER) AS 
  actual_hour NUMBER(5);
BEGIN
    select to_number(to_char(sysdate, 'hh24')) into actual_hour from dual;
    IF actual_hour > max_hour THEN
      raise_application_error(-20101, 'Uz je po pracovni dobe');
    END IF;
END KONTROLA_HODIN;

/
--------------------------------------------------------
--  DDL for Procedure NASTAV_CENY
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "JOSEFJA1"."NASTAV_CENY" (od IN date, do IN date, cena IN number, pocet IN number) IS
   rows_count number;
   start_date number;
   end_date number;
  BEGIN 
   start_date := to_number(to_char(start_date, 'j'));
   end_date := to_number(to_char(end_date, 'j'));
  for now_date IN start_date..end_date loop
    SELECT COUNT(*) INTO rows_count FROM kalendar WHERE den = to_date(now_date);
    dbms_output.put_line(rows_count);
  end loop;
END;

/

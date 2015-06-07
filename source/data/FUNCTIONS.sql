--------------------------------------------------------
--  DDL for Function F2C
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "JOSEFJA1"."F2C" 
(n_faren IN number)
return number
as
n_cel number := 0;
begin
n_cel := (5/9)*(n_faren -32);
return n_cel;
end;

/

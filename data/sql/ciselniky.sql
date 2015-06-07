
INSERT INTO barva (id, kod_barvy, typ_barvy, barva)
 SELECT 1,  '248HDA',   'metalíza', 'zelená' FROM dual UNION ALL 
 SELECT 2,  'SD212',    'metalíza', 'červená' FROM dual UNION ALL 
 SELECT 3,  'D32KKSA',  'perleť',   'červená' FROM dual UNION ALL 
 SELECT 4,  'ASED21',   'metalíza', 'stříbrná' FROM dual UNION ALL 
 SELECT 5,  'DJ3I220',  'matná',    'černá' FROM dual UNION ALL 
 SELECT 6,  'SF2123X',  'metalíza', 'černá' FROM dual UNION ALL 
 SELECT 7,  'BCBU2',    'metalíza', 'bílá' FROM dual UNION ALL 
 SELECT 8,  'BD3I21',   'matná',    'bílá' FROM dual UNION ALL 
 SELECT 9,  'MDRJI2',   'metalíza', 'modrá' FROM dual UNION ALL 
 SELECT 10, 'EQWE2L',   'metalíza', 'vínová' FROM dual;

INSERT INTO karoserie (id, typ_karoserie)
 SELECT 1,  'sedan' FROM dual UNION ALL 
 SELECT 2,  'kupé' FROM dual UNION ALL 
 SELECT 3,  'hatchback' FROM dual UNION ALL 
 SELECT 4,  'combi' FROM dual UNION ALL 
 SELECT 5,  'malé' FROM dual UNION ALL 
 SELECT 6,  'sportback' FROM dual UNION ALL 
 SELECT 7,  'suv' FROM dual;

INSERT INTO kubatura (id, kubatura, ridicske_opravneni)
 SELECT 1,  '<=50', 'Am' FROM dual UNION ALL 
 SELECT 2,  '<=125',    'A+' FROM dual UNION ALL 
 SELECT 3,  '>125', 'A' FROM dual;



INSERT INTO pohon (id, typ_pohonu)
 SELECT 1,  'benzín' FROM dual UNION ALL 
 SELECT 2,  'nafta' FROM dual UNION ALL 
 SELECT 3,  'CNG' FROM dual UNION ALL 
 SELECT 4,  'LPG' FROM dual UNION ALL 
 SELECT 5,  'elektřina' FROM dual;


INSERT INTO prevodovka (id, typ_prevodovky)
 SELECT 1,  'manuální' FROM dual UNION ALL 
 SELECT 2,  'automatická' FROM dual UNION ALL 
 SELECT 3,  'sekvenční' FROM dual;

INSERT INTO typ_motorky (id, typ_motorky)
 SELECT 1,  'naháč' FROM dual UNION ALL 
 SELECT 2,  'enduro' FROM dual UNION ALL 
 SELECT 3,  'supersport' FROM dual UNION ALL 
 SELECT 4,  'skůtr' FROM dual UNION ALL 
 SELECT 5,  'chopper' FROM dual UNION ALL 
 SELECT 6,  'cestovní' FROM dual;
CREATE OR REPLACE FUNCTION fact(integer)
RETURNS float
AS
$$
    BEGIN
        
    END;
$$
LANGUAGE plpgsql ;


SELECT id, prenom || ' ' || nom as client, fact(id) as Totale_à_payer From Client;


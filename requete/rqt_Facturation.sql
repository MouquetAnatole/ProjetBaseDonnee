CREATE OR REPLACE FUNCTION fact(i integer, g integer)
RETURNS float
AS
$$
    DECLARE
        sub_ float;
        idl integer;
        tmpFacture float;
    BEGIN
        idl :=0;
        LOOP
        sub_ :=


        idl := idl + 1;
        EXIT WHEN NOT EXISTS(SELECT * FROM Liquid WHERE id = idl);
        END LOOP;
    END;
$$
LANGUAGE plpgsql ;

SELECT id, prenom || ' ' || nom as client, fact(Client.id,Client.id_geo) as Totale_à_payer From Client;


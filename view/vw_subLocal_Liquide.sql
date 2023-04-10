
CREATE OR REPLACE FUNCTION subLocal( l integer, r integer, OUT subLocal_table(val_const integer , val_const_hab integer , val_mult integer , val_mult_hab integer, val_upperCap integer , val_lowerCap integer))
AS
-- return subLocal_table a table
$$
    DECLARE
        id_sub integer DEFAULT 0;
        v1 float;
        v2 float;
        v3 float;
        v4 float;
        v5 float;
        v6 float;
    BEGIN
        IF NOT EXISTS (SELECT * FROM Geo_sub_liquide where id_geo=r AND id_liquide=l)
        THEN 
            INSERT INTO subLocal_table(val_const float , val_const_hab float , val_mult float , val_mult_hab float, val_upperCap integer , val_lowerCap integer)
                VALUES(0,0,0,0,0,0);
        ELSE
            LOOP
                v1 := SELECT val_const FROM Sub_valFix WHERE id = id_sub;
                v2 := SELECT val_mult FROM Sub_valFix WHERE id = id_sub;
                v3 := SELECT val_const FROM Sub_valHab WHERE id = id_sub;
                v4 := SELECT val_mult FROM Sub_valHab WHERE id = id_sub;
                v5 := SELECT val_upperCap FROM Sub_valHab WHERE id = id_sub;
                v6 := SELECT val_lowerCap FROM Sub_valHab WHERE id = id_sub;
                INSERT INTO subLocal_table(val_const float , val_const_hab float , val_mult float , val_mult_hab float, val_upperCap integer , val_lowerCap integer)
                    VALUES(v1,v2,v3,v4,v5,v6);

                id_sub := id_sub +1;
                EXIT WHEN NOT EXISTS(SELECT * FROM Subvention WHERE id = id_sub);
            END LOOP
    END;
$$
LANGUAGE plpgsql ;


CREATE OR REPLACE MATERIALIZED VIEW vw_subLocal_Liquide AS
    SELECT Liquid.id as id_liquide, Region_geo.id as id_geo, val_const, val_const_hab, val_mult, val_mult_hab, val_upperCap, val_lowerCap from Liquid,Region_geo,subLocal(Liquid.id,Region_geo.id) GROUP BY Liquid.id,Region_geo.id ORDER BY val_upperCap,val_lowerCap ;


REFRESH MATERIALIZED VIEW vw_subLocal_Liquide;
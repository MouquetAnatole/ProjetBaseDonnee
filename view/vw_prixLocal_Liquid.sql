
CREATE OR REPLACE FUNCTION fact( l integer, r integer)
RETURNS float
AS
$$
    BEGIN
        IF NOT EXISTS (SELECT cout_deplacement AS cout FROM Liquide_geo WHERE id_geo__arrive=r id_liquide=l UNION SELECT prix AS cout FROM Fournisseur_liquide where l= id_liquide AND r IN (SELECT FRegionEnglobantes(Region_geo.id) FROM Region_geo where Fournisseur_geo.id_fournisseur=Fournisseur_liquide.id_fournisseur))

        END IF;
    END;
$$
LANGUAGE plpgsql ;


CREATE OR REPLACE MATERIALIZED VIEW vw_prixLocal_Liquid AS
    SELECT Liquid.id, Region_geo.id , prixLocal(Liquid.id,Region_geo.id) from Liquid,Region_geo;
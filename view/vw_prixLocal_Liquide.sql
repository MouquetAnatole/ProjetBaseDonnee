
CREATE OR REPLACE FUNCTION prixLocal( l integer, r integer)
RETURNS float
AS
$$
    BEGIN
        IF NOT EXISTS (SELECT cout_deplacement AS cout FROM Liquide_geo WHERE id_geo__arrive=r AND id_liquide=l UNION SELECT prix AS cout FROM Fournisseur_liquide where l= id_liquide AND r IN (SELECT FRegionEnglobantes(Fournisseur_geo.id_geo) FROM Fournisseur_geo  JOIN Fournisseur_liquide ON Fournisseur_geo.id_fournisseur=Fournisseur_liquide.id_fournisseur))
        THEN
            RAISE EXCEPTION 'ERREUR, impossible d acheminer le liquide';
        ELSEIF EXISTS(SELECT prix AS cout FROM Fournisseur_liquide where l= id_liquide AND r IN (SELECT FRegionEnglobantes(Region_geo.id) FROM Region_geo where Fournisseur_geo.id_fournisseur=Fournisseur_liquide.id_fournisseur))
            THEN 
                RETURN (SELECT prix AS cout FROM Fournisseur_liquide where l= id_liquide AND r IN (SELECT FRegionEnglobantes(Region_geo.id) FROM Region_geo where Fournisseur_geo.id_fournisseur=Fournisseur_liquide.id_fournisseur));
        ELSE
            RETURN (SELECT MIN(cout_deplacement) FROM Liquide_geo WHERE id_liquide=l AND id_geo__arrive=r AND id_geo__arrive IN(SELECT id_geo FROM Fournisseur_liquide AS fl JOIN Fournisseur_geo as fg ON fl.id_fournisseur=fg.id_fournisseur WHERE fl.id_liquide=l));
            --Implementetion basique sans algo de parcour de graphe pour acheminer les liquides
        END IF;
    END;
$$
LANGUAGE plpgsql ;

CREATE OR REPLACE VIEW vw_prixLocal_Liquid AS
    SELECT Liquide.id as id_liquide, Region_geo.id as id_geo , prixLocal(Liquide.id,Region_geo.id) as prixLocal from Liquide,Region_geo;
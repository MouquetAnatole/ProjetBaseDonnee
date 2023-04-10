
CREATE OR REPLACE FUNCTION prixLocal( l integer, r integer)
RETURNS float
AS
$$
    BEGIN
        IF NOT EXISTS ( SELECT prix AS cout 
                        FROM Fournisseur_liquide as Fl
                        WHERE l= id_liquide AND r IN (  SELECT FRegionEnglobantes(Fg.id_geo) 
                                                        FROM Fournisseur_geo AS Fg JOIN Fournisseur_liquide AS Fl
                                                        ON Fl.id_fournisseur=Fg.id_fournisseur
                                                        WHERE Fg.id_fournisseur=Fl.id_fournisseur AND Fl.id_liquide=l) 
                        UNION 
                        SELECT MIN(cout_deplacement) AS cout 
                        FROM Liquide_geo 
                        WHERE id_liquide=l AND id_geo__arrive=r AND id_geo__depart IN(  SELECT fg.id_geo 
                                                                                        FROM Fournisseur_liquide AS fl JOIN Fournisseur_geo AS fg ON fl.id_fournisseur=fg.id_fournisseur 
                                                                                        WHERE fl.id_liquide=l))
        THEN
            RETURN 'Infinity';
            --RAISE EXCEPTION 'ERREUR, impossible d acheminer le liquide';
        ELSEIF EXISTS(SELECT prix AS cout 
                        FROM Fournisseur_liquide 
                        WHERE l= id_liquide AND NOT prix IS  NULL AND r IN (  SELECT FRegionEnglobantes(Fg.id_geo) 
                                                        FROM Fournisseur_geo AS Fg JOIN Fournisseur_liquide AS Fl
                                                        ON Fl.id_fournisseur=Fg.id_fournisseur
                                                        WHERE Fg.id_fournisseur=Fl.id_fournisseur AND fournisseur_liquide.id_liquide=l) )
            THEN 
                RETURN (SELECT prix AS cout FROM Fournisseur_liquide WHERE l= id_liquide AND r IN (SELECT FRegionEnglobantes(Region_geo.id) FROM Region_geo JOIN Fournisseur_geo ON Region_geo.id=Fournisseur_geo.id_geo WHERE Fournisseur_geo.id_fournisseur=Fournisseur_liquide.id_fournisseur));
        ELSE
            RETURN (SELECT MIN(cout_deplacement) AS cout 
                        FROM Liquide_geo 
                        WHERE id_liquide=l AND id_geo__arrive=r AND id_geo__depart IN(  SELECT fg.id_geo 
                                                                                        FROM Fournisseur_liquide AS fl JOIN Fournisseur_geo AS fg ON fl.id_fournisseur=fg.id_fournisseur 
                                                                                        WHERE fl.id_liquide=l));
            --Implementetion basique sans algo de parcour de graphe pour acheminer les liquides
        END IF;
    END;
$$
LANGUAGE plpgsql ;

CREATE OR REPLACE VIEW vw_prixLocal_Liquid AS
    SELECT * FROM (SELECT Liquide.id AS id_liquide, Region_geo.id as id_geo , prixLocal(Liquide.id,Region_geo.id) as prixLocal from Liquide,Region_geo) AS tmp WHERE tmp.prixLocal != 'Infinity';
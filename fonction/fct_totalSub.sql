CREATE OR REPLACE FUNCTION FtotalSub()
RETURNS float
AS
$$
    DECLARE
        tmp float;
        id_ integer;
    BEGIN
        tmp := 0;
        id_ := 0;
        LOOP
            IF EXISTS(SELECT * FROM Sub_valFix WHERE id_ = Sub_valFix.id)
                THEN 
                    tmp := tmp + (SELECT val_const FROM Sub_valFix WHERE id_=Sub_valFix.id);
            ELSE
                IF (SELECT COUNT(*) FROM Client WHERE id_geo IN  )

            EXIT WHEN NOT EXISTS(SELECT * FROM Subvention WHERE id_=Subvention.id);
        END LOOP
        
    END;
$$
LANGUAGE plpgsql ;

delimiter $$
CREATE PROCEDURE insertar_persona(
    IN nombre VARCHAR(50),
    IN ap_pat VARCHAR(50),
    IN ap_mat VARCHAR(50),
    IN fecha_nac DATE
)
BEGIN
    DECLARE rfc_generado VARCHAR(13);
    DECLARE mat_final VARCHAR(50);

    IF ap_mat IS NULL OR TRIM(ap_mat) = '' THEN
        SET mat_final = 'X';
    ELSE
        SET mat_final = ap_mat;
    END IF;

    SET rfc_generado = generar_rfc(nombre, ap_pat, mat_final, fecha_nac);

    INSERT INTO persona (rfc, nombre, ap_pat, ap_mat, fecha_nac)
    VALUES (rfc_generado, nombre, ap_pat, mat_final, fecha_nac);

END$$

DELIMITER ;
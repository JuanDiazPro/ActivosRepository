SELECT * FROM tricks.usuarios;
-- muestra los usuario no activos
select u.id_usuario as matricula, u.nombre as nombre, 
u.apellido as apellido, u.mail as mail, e.estado 
from usuarios u  inner join estado e on e.id_estado = u.id_estado where u.id_estado = 2 group by matricula ;
-- -------------------------------------------------------------------------------------------------------------
-- muestra los usuarios activos 
select u.id_usuario as matricula, u.nombre as nombre, 
u.apellido as apellido, u.mail as mail, e.estado 
from usuarios u  inner join estado e on e.id_estado = u.id_estado where u.id_estado = 1 group by matricula ;
-- -------------------------------------------------------------------------------------------------------------

-- procedimiento que mermite ver los usuarios segun su rol
-- la variable de entrada es el tipo de rol, con esto podemos mostra o solos maestros, solo admistradores
-- en el caso de bombre y apelldio se concatena  para que se muestren juntos en la tabla, y es usa el identificador
-- "nombre completo"
DELIMITER //
CREATE PROCEDURE verUsuarios(
    IN new_id_rol INT  -- Parámetro de entrada para el nuevo id_rol
)
BEGIN
    SELECT u.id_usuario, CONCAT(u.nombre, ' ', u.apellido) AS nombre_completo, u.contrasena, u.mail, e.estado
	FROM usuarios u
	INNER JOIN estado e ON e.id_estado = u.id_estado
	WHERE u.id_rol = new_id_rol
	GROUP BY u.id_usuario
	ORDER BY u.id_usuario ASC;
END //
DELIMITER ;
CALL verUsuarios(2);
DROP PROCEDURE IF EXISTS verUsuarios ;
-- -------------------------------------------------------------------------------------------------------------

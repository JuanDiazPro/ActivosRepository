use tricks;
-- datos de tipo de usuario
INSERT INTO `tricks`.`tipousuario` (`id_rol`, `tpoUsuarioRol`) VALUES ('1', 'Administrador');
INSERT INTO `tricks`.`tipousuario` (`id_rol`, `tpoUsuarioRol`) VALUES ('2', 'Docente');
INSERT INTO `tricks`.`tipousuario` (`id_rol`, `tpoUsuarioRol`) VALUES ('3', 'Aspirante');
-- Datos de la tabla estado
INSERT INTO `tricks`.`estado` (`id_estado`, `estado`) VALUES ('1', 'Activo');
INSERT INTO `tricks`.`estado` (`id_estado`, `estado`) VALUES ('2', 'NoActivo');

-- datos usuario
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (123, 'Jose', 'Saldaña', 'ejemplo1@gmial.com', 'admin', 1, 1, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (124, 'Orlanddo', 'ruiz', 'ejemplo2@gmial.com', 'admin', 1, 1, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (125, 'pepe', 'sanchez', 'ejemplo3@gmial.com', 'admin', 2, 1, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (126, 'Mauro', 'Bahena', 'ejemplo4@gmial.com', 'maesro', 1, 2, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (127, 'Sebastian', 'Sota', 'ejemplo5@gmial.com', 'maestro', 1, 3, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (128, 'Carlos', 'Hernandez', 'carlos.hernandez@example.com', 'password1', 1, 1, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (129, 'Laura', 'Martinez', 'laura.martinez@example.com', 'password2', 2, 2, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (130, 'Miguel', 'Lopez', 'miguel.lopez@example.com', 'password3', 1, 3, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (131, 'Ana', 'Gomez', 'ana.gomez@example.com', 'password4', 2, 1, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (132, 'Luis', 'Perez', 'luis.perez@example.com', 'password5', 1, 2, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (133, 'Isabel', 'Diaz', 'isabel.diaz@example.com', 'password6', 2, 3, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (134, 'David', 'Ramirez', 'david.ramirez@example.com', 'password7', 1, 1, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (135, 'Sofia', 'Torres', 'sofia.torres@example.com', 'password8', 2, 2, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (136, 'Andres', 'Sanchez', 'andres.sanchez@example.com', 'password9', 1, 3, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (137, 'Maria', 'Ortiz', 'maria.ortiz@example.com', 'password10', 2, 1, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (138, 'Jorge', 'Morales', 'jorge.morales@example.com', 'password11', 1, 2, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (139, 'Natalia', 'Mendoza', 'natalia.mendoza@example.com', 'password12', 2, 3, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (140, 'Pablo', 'Vargas', 'pablo.vargas@example.com', 'password13', 1, 1, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (141, 'Lucia', 'Rojas', 'lucia.rojas@example.com', 'password14', 2, 2, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (142, 'Enrique', 'Cruz', 'enrique.cruz@example.com', 'password15', 1, 3, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (143, 'Valeria', 'Herrera', 'valeria.herrera@example.com', 'password16', 2, 1, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (144, 'Adrian', 'Ibañez', 'adrian.ibanez@example.com', 'password17', 1, 2, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (145, 'Laura', 'Garcia', 'laura.garcia@example.com', 'password18', 2, 3, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (146, 'Roberto', 'Castro', 'roberto.castro@example.com', 'password19', 1, 1, NULL, NULL);
INSERT INTO usuarios (id_usuario, nombre, apellido, mail, contrasena, id_estado, id_rol, asistencias_id_asistencia, grupos_id_grupo) 
VALUES (147, 'Carolina', 'Silva', 'carolina.silva@example.com', 'password20', 2, 2, NULL, NULL);

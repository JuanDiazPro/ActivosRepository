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


-- DIVICIONES ACADEMICAS
INSERT INTO `tricks`.`divisiones_academicas` (`id_division`, `nombre_division`, `coordinador_division`, `siglas`) VALUES ('12', 'División Académica de Tecnologías de la Información y Diseño', 'Dra. Martha Fabiola Wences Díaz', 'DATID');
INSERT INTO `tricks`.`divisiones_academicas` (`id_division`, `nombre_division`, `coordinador_division`, `siglas`) VALUES ('13', 'División Académica de Mecánica Industrial', 'M. en C. Jaime Vázquez Colín', 'DAMI');
INSERT INTO `tricks`.`divisiones_academicas` (`id_division`, `nombre_division`, `coordinador_division`, `siglas`) VALUES ('14', 'División Académica Económica-Administrativa', 'M.C.C.I. Jonathan Espinoza Mendoza', 'DACEA');
INSERT INTO `tricks`.`divisiones_academicas` (`nombre_division`, `coordinador_division`, `siglas`) VALUES ('División Académica de Terapia Física', 'M.M.F. y R. Dennice Jaqueline García Mendoza', 'DATEFI');

-- carreras INSERT INTO `tricks`.`carreras` (`id_carrera`, `nombre_carrera`, `divisiones_academicas_id_division`) VALUES ('1', 'Gestión del Capital Humano', '14');
INSERT INTO `tricks`.`carreras` (`id_carrera`, `nombre_carrera`, `divisiones_academicas_id_division`) VALUES ('2', 'Mercadotecnia', '14');
INSERT INTO `tricks`.`carreras` (`id_carrera`, `nombre_carrera`, `divisiones_academicas_id_division`) VALUES ('3', 'Mercadotecnia', '14');
INSERT INTO `tricks`.`carreras` (`id_carrera`, `nombre_carrera`, `divisiones_academicas_id_division`) VALUES ('4', 'Procesos Productivos', '13');
INSERT INTO `tricks`.`carreras` (`id_carrera`, `nombre_carrera`, `divisiones_academicas_id_division`) VALUES ('5', 'Automatización', '13');
INSERT INTO `tricks`.`carreras` (`id_carrera`, `nombre_carrera`, `divisiones_academicas_id_division`) VALUES ('6', 'Mantenimiento Industrial', '13');
INSERT INTO `tricks`.`carreras` (`id_carrera`, `nombre_carrera`, `divisiones_academicas_id_division`) VALUES ('7', 'Nanotecnología', '13');
INSERT INTO `tricks`.`carreras` (`id_carrera`, `nombre_carrera`, `divisiones_academicas_id_division`) VALUES ('8', 'Gestión del Bienestar', '16');
INSERT INTO `tricks`.`carreras` (`id_carrera`, `nombre_carrera`, `divisiones_academicas_id_division`) VALUES ('9', 'Diseño y Animación Digital', '12');
INSERT INTO `tricks`.`carreras` (`id_carrera`, `nombre_carrera`, `divisiones_academicas_id_division`) VALUES ('10', 'Diseño y Moda Industrial en Producción', '12');
INSERT INTO `tricks`.`carreras` (`id_carrera`, `nombre_carrera`, `divisiones_academicas_id_division`) VALUES ('11', 'Desarrollo de Software Multiplataforma', '12');
INSERT INTO `tricks`.`carreras` (`id_carrera`, `nombre_carrera`, `divisiones_academicas_id_division`) VALUES ('12', 'Infraestructura de Redes Digitales', '12');

-- aspirantes
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F001', 'Juan', 'Perez', 'CURP001', 1, '2000-01-15');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F002', 'Maria', 'Lopez', 'CURP002', 1, '1999-03-22');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F003', 'Pedro', 'Hernandez', 'CURP003', 1, '1998-07-11');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F004', 'Luisa', 'Martinez', 'CURP004', 1, '2001-05-30');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F005', 'Ana', 'Gomez', 'CURP005', 1, '2000-11-19');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F006', 'Carlos', 'Diaz', 'CURP006', 2, '1999-04-05');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F007', 'Sofia', 'Ramirez', 'CURP007', 2, '2001-08-21');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F008', 'Miguel', 'Sanchez', 'CURP008', 2, '1997-12-10');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F009', 'Laura', 'Torres', 'CURP009', 2, '1998-06-18');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F010', 'Jorge', 'Castillo', 'CURP010', 2, '2000-09-25');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F011', 'Elena', 'Mendoza', 'CURP011', 1, '1999-02-13');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F012', 'Ricardo', 'Vargas', 'CURP012', 1, '1997-11-29');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F013', 'Patricia', 'Rojas', 'CURP013', 1, '2001-03-07');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F014', 'Roberto', 'Morales', 'CURP014', 1, '1998-10-16');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F015', 'Isabel', 'Reyes', 'CURP015', 1, '1999-07-23');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F016', 'Fernando', 'Ortiz', 'CURP016', 1, '2000-12-05');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F017', 'Teresa', 'Cruz', 'CURP017', 1, '1998-09-09');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F018', 'Luis', 'Gonzalez', 'CURP018', 1, '1997-05-15');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F019', 'Monica', 'Ramos', 'CURP019', 1, '2001-02-27');
INSERT INTO aspirante (folio_aspirante, nombre, apellido, curp, estado_id_estado, fecha_nac) VALUES
    ('F020', 'Javier', 'Flores', 'CURP020', 1, '1999-08-31');


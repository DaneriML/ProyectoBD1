
SELECT * FROM ESTUDIANTE;

INSERT INTO ESTUDIANTE (carne, nombre, apellido, fecha_nacimiento, doc_identificacion)
VALUES 

BEGIN
    PA_INSERT_ESTUDIANTE(4, 'Maria', 'Lopez', '22/08/1999', '987654321');
    PA_INSERT_ESTUDIANTE(5, 'Carlos', 'Gomez', '10/03/2001', '555555555');
    PA_INSERT_ESTUDIANTE(6, 'Laura', 'Martinez', '05/12/1998', '444444444');
    PA_INSERT_ESTUDIANTE(7, 'Pedro', 'Rodriguez', '28/02/2002', '111111111');
END;  

BEGIN
    PA_INSERT_ESTUDIANTE(8, 'Ana', 'Hernandez', '17/09/2000', '666666666');
    PA_INSERT_ESTUDIANTE(9, 'Luis', 'Diaz', '25/06/1999', '777777777');
    PA_INSERT_ESTUDIANTE(10, 'Sofia', 'Garcia', '03/11/1997', '888888888');
    PA_INSERT_ESTUDIANTE(11, 'Diego', 'Sanchez', '20/01/2001', '999999999');
    PA_INSERT_ESTUDIANTE(12, 'Elena', 'Fernandez', '12/04/1998', '333333333');
END;

BEGIN
    PA_INSERT_ESTUDIANTE(13, 'Oscar', 'Ramirez', '08/07/2002', '222222222');
    PA_INSERT_ESTUDIANTE(14, 'Carmen', 'Gutierrez', '30/10/1999', '555555555');
    PA_INSERT_ESTUDIANTE(15, 'Miguel', 'Perez', '18/05/1998', '111111111');
    PA_INSERT_ESTUDIANTE(16, 'Isabel', 'Lopez', '23/09/2001', '888888888');
    PA_INSERT_ESTUDIANTE(17, 'Javier', 'Gomez', '15/03/2000', '777777777');
    PA_INSERT_ESTUDIANTE(18, 'Paula', 'Martinez', '01/12/1997', '444444444');
    PA_INSERT_ESTUDIANTE(19, 'Andres', 'Rodriguez', '30/04/2002', '222222222');
END;

BEGIN
    PA_INSERT_ESTUDIANTE(20, 'Monica', 'Hernandez', '19/07/1999', '123456789');
    PA_INSERT_ESTUDIANTE(21, 'Raul', 'Diaz', '11/02/1998', '999999999');
    PA_INSERT_ESTUDIANTE(22, 'Sara', 'Garcia', '27/06/2001', '666666666');
    PA_INSERT_ESTUDIANTE(23, 'Mario', 'Sanchez', '09/11/2000', '333333333');
    PA_INSERT_ESTUDIANTE(24, 'Laura', 'Ramirez', '03/01/1998', '555555555');
    PA_INSERT_ESTUDIANTE(25, 'Carlos', 'Fernandez', '14/08/2002', '777777777');
    PA_INSERT_ESTUDIANTE(26, 'Elena', 'Gutierrez', '25/03/1999', '888888888');
END;



INSERT INTO Catedratico (Codigo_catedratico, Nombre, Apellido, Curso_imparte, Curso_codigo_curso)
VALUES 
    (1, 'Carlos', 'Lopez', 'Matemáticas Avanzadas', '1');
    (2, 'Laura', 'Gomez', 'Historia del Arte', '202'),
    (3, 'Juan', 'Rodriguez', 'Programación en C++', '303'),
    (4, 'Maria', 'Fernandez', 'Literatura Clásica', 404),
    (5, 'Pedro', 'Martinez', 'Química Orgánica', 505),
    (6, 'Ana', 'Diaz', 'Física Cuántica', 606),
    (7, 'Luis', 'Gutierrez', 'Economía Internacional', 707),
    (8, 'Sofia', 'Sanchez', 'Psicología del Desarrollo', 808),
    (9, 'Diego', 'Hernandez', 'Derecho Constitucional', 909),
    (10, 'Elena', 'Ramirez', 'Biología Molecular', 1010),
    (11, 'Oscar', 'Perez', 'Inteligencia Artificial', 1111),
    (12, 'Carmen', 'Lopez', 'Arquitectura Moderna', 1212),
    (13, 'Miguel', 'Gomez', 'Música Clásica', 1313),
    (14, 'Isabel', 'Rodriguez', 'Literatura Contemporánea', 1414),
    (15, 'Javier', 'Fernandez', 'Derechos Humanos', 1515);




INSERT INTO Curso (Codigo_curso, Nombre_carrera, Carrera_pertenece, Semestre, Pre_requisito, Carrera_codigo_carrera, Asignacion_codigo_asigancion)
VALUES 
    (101, 'Ingeniería Informática', 'Ingeniería Informática', 'Primero', 'Ninguno', 1, 1),
    (102, 'Ingeniería Informática', 'Ingeniería Informática', 'Primero', 'Ninguno', 1, 2),
    (201, 'Derecho', 'Derecho', 'Segundo', 'Introducción al Derecho', 2, 3),
    (202, 'Derecho', 'Derecho', 'Segundo', 'Introducción al Derecho', 2, 4),
    (301, 'Medicina', 'Medicina', 'Tercero', 'Anatomía Humana', 3, 5),
    (302, 'Medicina', 'Medicina', 'Tercero', 'Anatomía Humana', 3, 6),
    (401, 'Arquitectura', 'Arquitectura', 'Cuarto', 'Dibujo Técnico', 4, 7),
    (402, 'Arquitectura', 'Arquitectura', 'Cuarto', 'Dibujo Técnico', 4, 8),
    (501, 'Economía', 'Economía', 'Quinto', 'Microeconomía', 5, 9),
    (502, 'Economía', 'Economía', 'Quinto', 'Microeconomía', 5, 10),
    (601, 'Psicología', 'Psicología', 'Sexto', 'Psicología General', 6, 11),
    (602, 'Psicología', 'Psicología', 'Sexto', 'Psicología General', 6, 12),
    (701, 'Biología', 'Biología', 'Séptimo', 'Genética', 7, 13),
    (702, 'Biología', 'Biología', 'Séptimo', 'Genética', 7, 14),
    (801, 'Arte', 'Arte', 'Octavo', 'Historia del Arte', 8, 15),
    (802, 'Arte', 'Arte', 'Octavo', 'Historia del Arte', 8, 16),
    (901, 'Ingeniería Civil', 'Ingeniería Civil', 'Noveno', 'Mecánica de Fluidos', 9, 17),
    (902, 'Ingeniería Civil', 'Ingeniería Civil', 'Noveno', 'Mecánica de Fluidos', 9, 18),
    (1001, 'Matemáticas', 'Matemáticas', 'Décimo', 'Cálculo Avanzado', 10, 19),
    (1002, 'Matemáticas', 'Matemáticas', 'Décimo', 'Cálculo Avanzado', 10, 20),
    (1101, 'Química', 'Química', 'Undécimo', 'Química Orgánica Avanzada', 11, 21),
    (1102, 'Química', 'Química', 'Undécimo', 'Química Orgánica Avanzada', 11, 22),
    (1201, 'Historia', 'Historia', 'Duodécimo', 'Historia Contemporánea', 12, 23),
    (1202, 'Historia', 'Historia', 'Duodécimo', 'Historia Contemporánea', 12, 24),
    (1301, 'Física', 'Física', 'Décimo Tercero', 'Mecánica Cuántica', 13, 25);





INSERT INTO SEDE(CODIGO_SEDE, NOMBRE_SEDE)
VALUES 
    (1,'Ingeneria'),
    (2,'Derecho'),
    (3,'Psicologia'),
    (4,'Criminologia'),
    (5,'Administracion');
   
REM INSERTING into SEDE
SET DEFINE OFF;
Insert into SEDE  (Codigo_sede,Nombre_sede) values(1,'Ingeneria'),
Insert into SEDE  (Codigo_sede,Nombre_sede) values(2,'Derecho'),
Insert into SEDE  (Codigo_sede,Nombre_sede) values(3,'Psicologia'),
Insert into SEDE  (Codigo_sede,Nombre_sede) values(4,'Criminologia'),
Insert into SEDE  (Codigo_sede,Nombre_sede) values(5,'Administracion');   




SELECT * FROM SEDE; 
    
BEGIN 
    PA_INSERT_SEDE(3,'Psicologia');
    PA_INSERT_SEDE(4,'Criminologia');
    PA_INSERT_SEDE(5,'Administracion');
END;
    

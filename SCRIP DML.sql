SELECT * FROM CARRERA;
-- Crear procedimiento almacenado para insertar
CREATE OR REPLACE PROCEDURE PA_INSERT_CARRERA (
  pCodigoCarrera IN NUMBER,
  pNombreCarrera IN VARCHAR2,
  pSedeCodigoSede IN VARCHAR2
) 
AS
BEGIN
  INSERT INTO CARRERA (CODIGO_CARRERA, NOMBRE_CARRERA, SEDE_CODIGO_SEDE)
  VALUES ( pCodigoCarrera,
  pNombreCarrera,
  pSedeCodigoSede);
  COMMIT;
  
EXCEPTION WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR EN PA_INSERT_CARRERA: ' || SQLERRM);   
END;



SELECT * FROM CATEDRATICO;
-- Crear procedimiento almacenado para insertar
CREATE OR REPLACE PROCEDURE PA_INSERT_CATEDRATICO (
  pCodigoCatedratico IN NUMBER,
  pNombre IN VARCHAR2,
  pApellido IN VARCHAR2,
  pCursoImparte IN VARCHAR2,
  pCursoCodigoCurso IN VARCHAR2
) 
AS
BEGIN
  INSERT INTO CATEDRATICO (CODIGO_CATEDRATICO, NOMBRE, APELLIDO, CURSO_IMPARTE, CURSO_CODIGO_CURSO)
  VALUES ( pCodigoCatedratico,
  pNombre,
  pApellido,
  pCursoImparte,
  pCursoCodigoCurso);
  COMMIT;
  
EXCEPTION WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR EN PA_INSERT_CATEDRATICO: ' || SQLERRM);   
END;

SELECT * FROM CICLO;
-- Crear procedimiento almacenado para insertar
CREATE OR REPLACE PROCEDURE PA_INSERT_CICLO (
  pCodigoCiclo IN NUMBER,
  pAnio IN VARCHAR2,
  pSemestre IN VARCHAR2,
  pCursoDisponible IN VARCHAR2,
  pCursoCodigoCurso IN VARCHAR2
) 
AS
BEGIN
  INSERT INTO CICLO (CODIGO_CICLO, ANIO, SEMESTRE, CURSO_DISPONIBLE, CURSO_CODIGO_CURSO)
  VALUES ( pCodigoCiclo,
  pAnio,
  pSemestre,
  pCursoDisponible,
  pCursoCodigoCurso);
  COMMIT;
EXCEPTION WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR EN PA_INSERT_CICLO: ' || SQLERRM);   
END;


SELECT * FROM INSCRIPCION;
-- Crear procedimiento almacenado para insertar
CREATE OR REPLACE PROCEDURE PA_INSERT_INSCRIPCION (
  pCodigoInscripcion IN NUMBER,
  pFecha IN DATE,
  pCarrera IN VARCHAR2,
  pCiclo IN VARCHAR2,
  pEstudianteCarne IN VARCHAR2
) 
AS
BEGIN
  INSERT INTO INSCRIPCION (CODIGO_INSCRIPCION, FECHA, CARRERA, CICLO, ESTUDIANTE_CARNE)
  VALUES ( pCodigoInscripcion,
  pFecha,
  pCarrera,
  pCiclo,
  pEstudianteCarne);
  COMMIT;
EXCEPTION WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR EN PA_INSERT_INSCRIPCION: ' || SQLERRM);   
END;

SELECT * FROM NOTA;
-- Crear procedimiento almacenado para insertar
CREATE OR REPLACE PROCEDURE PA_INSERT_NOTA (
  pCodigoEstudiante IN NUMBER,
  pCurso IN VARCHAR2,
  pActividades IN VARCHAR2,
  pPrimerParcial IN VARCHAR2,
  pSegundoParcial IN VARCHAR2,
  pExamenFinal IN VARCHAR2,
  pCatedraticoCodigoCatedratico IN VARCHAR2,
  pEstudianteCarne IN VARCHAR2
) 
AS
BEGIN
  INSERT INTO NOTA (CODIGO_ESTUDIANTE, CURSO, ACTIVIDADES, PRIMER_PARCIAL, SEGUNDO_PARCIAL, EXAMEN_FINAL, CATEDRATICO_CODIGO_CATEDRATICO, ESTUDIANTE_CARNE)
  VALUES ( pCodigoEstudiante,
  pCurso,
  pActividades,
  pPrimerParcial,
  pSegundoParcial,
  pExamenFinal,
  pCatedraticoCodigoCatedratico,
  pEstudianteCarne);
  COMMIT;
EXCEPTION WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR EN PA_INSERT_NOTA: ' || SQLERRM);   
END;


SELECT * FROM PAGO;
-- Crear procedimiento almacenado para insertar
CREATE OR REPLACE PROCEDURE PA_INSERT_PAGO (
  pCodigoPago IN NUMBER,
  pCarneEstudiante IN VARCHAR2,
  pTipoPago IN VARCHAR2,
  pMes IN VARCHAR2,
  pEstudianteCarne IN VARCHAR2
) 
AS
BEGIN
  INSERT INTO PAGO (CODIGO_PAGO, CARNE_ESTUDIANTE, TIPO_PAGO, MES, ESTUDIANTE_CARNE)
  VALUES (  pCodigoPago,
  pCarneEstudiante,
  pTipoPago,
  pMes,
  pEstudianteCarne);
  COMMIT;
EXCEPTION WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR EN PA_INSERT_PAGO: ' || SQLERRM);   
END;

---------------------------------------------------------------------------------------
SELECT * FROM ROL;
-- Crear procedimiento almacenado para insertar
CREATE OR REPLACE PROCEDURE PA_INSERT_ROL (
  pCodigoRol IN NUMBER,
  pCodigoUsuario IN VARCHAR2,
  pEstado IN VARCHAR2,
  pFechaCreacion IN DATE,
  pUsuarioCodigoUsuario IN VARCHAR2
) 
AS
BEGIN
  INSERT INTO ROL (CODIGO_ROL, CODIGO_USUARIO, ESTADO, FECHA_CREACION, USUARIO_CODIGO_USUARIO)
  VALUES ( pCodigoRol,
  pCodigoUsuario,
  pEstado,
  pFechaCreacion,
  pUsuarioCodigoUsuario);
  COMMIT;
EXCEPTION WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR EN PA_INSERT_PAGO: ' || SQLERRM);   
END;
---------------------------------------------------------------------------------------------------

SELECT * FROM SEDE;
-- Crear procedimiento almacenado para insertar
CREATE OR REPLACE PROCEDURE PA_INSERT_SEDE (
  pCodigoSede IN NUMBER,
  pNombreSede IN VARCHAR2
) 
AS
BEGIN
  INSERT INTO SEDE (CODIGO_SEDE, NOMBRE_SEDE)
  VALUES ( pCodigoSede,
  pNombreSede);
  COMMIT;
EXCEPTION WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR EN PA_INSERT_SEDE: ' || SQLERRM);   
END;

SELECT * FROM TIPO_PAGO;
-- Crear procedimiento almacenado para insertar
CREATE OR REPLACE PROCEDURE PA_INSERT_TIPO_PAGO (
  pCodigoTipoPago IN NUMBER,
  pInscripcion IN VARCHAR2,
  pMensualidad IN VARCHAR2,
  pExamenExtraordinario IN VARCHAR2,
  pMora IN VARCHAR2,
  pPagoCodigoPago IN VARCHAR2
) 
AS
BEGIN
  INSERT INTO TIPO_PAGO (CODIGO_TIPO_PAGO, INSCRIPCION, MENSUALIDAD, examen_extraordinario, MORA, pago_codigo_pago)
  VALUES ( pCodigoTipoPago,
  pInscripcion,
  pMensualidad,
  pExamenExtraordinario,
  pMora,
  pPagoCodigoPago);
  COMMIT;
EXCEPTION WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR EN PA_INSERT_TIPO_PAGO: ' || SQLERRM);   
END;

----------------------------------------------------------------------------------------------------
SELECT * FROM USUARIO;
-- Crear procedimiento almacenado para insertar
CREATE OR REPLACE PROCEDURE PA_INSERT_USUARIO (
  pCodigoUsuario IN NUMBER,
  pTipoUsuario IN VARCHAR2,
  pEstado IN VARCHAR2,
  pRol IN VARCHAR2,
  pEstudianteCarne IN VARCHAR2,
  pCatedraticoCodigoCatedratico IN VARCHAR2
) 
AS
BEGIN
  INSERT INTO USUARIO (CODIGO_USUARIO, TIPO_USUARIO, ESTADO, ROL, ESTUDIANTE_CARNE, CATEDRATICO_CODIGO_CATEDRATICO)
  VALUES (pCodigoUsuario,
  pTipoUsuario,
  pEstado,
  pRol,
  pEstudianteCarne,
  pCatedraticoCodigoCatedratico);
  COMMIT;
EXCEPTION WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR EN PA_INSERT_USUARIO: ' || SQLERRM);   
END;
-------------------------------------------------------------------------------------------------------------

SELECT * FROM ESTUDIANTE;
BEGIN
    pa_insert_estudiante(2, 'Carlos', 'Perez', '03/02/1998', '456235897412101');
END;

-- Crear procedimiento almacenado para actualizar
CREATE OR REPLACE PROCEDURE PA_ACTUALIZAR_ESTUDIANTE (
  pCarnet IN NUMBER,
  pNombre IN VARCHAR2,
  pApellido IN VARCHAR2,
  pFechaNacimiento IN VARCHAR2,
  pDocIdentificacion IN VARCHAR2
) 
AS
BEGIN
  UPDATE estudiante
  SET nombre = pNombre, apellido = pApellido, Fecha_Nacimiento = pFechaNacimiento, Doc_Identificacion = pDocIdentificacion
  WHERE carne = pCarnet;
  COMMIT;
  
  EXCEPTION WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR EN ACTUALIZAR ESTUDIANTE : ' || SQLERRM);   
END;


---Procedimiento almacenado para eliminar
CREATE OR REPLACE PROCEDURE PA_ELIMINAR_ESTUDIANTE (
  p_Carnet IN NUMBER
) 
AS
BEGIN
  DELETE FROM estudiante
  WHERE carne = p_Carnet;
  COMMIT;
  
   EXCEPTION WHEN OTHERS THEN
     DBMS_OUTPUT.PUT_LINE('ERROR EN ELIMINAR ESTUDIANTE : ' || SQLERRM); 
END;

-- PA para listar
CREATE OR REPLACE PROCEDURE PA_LIST_ESTUDIANTE(
  pCarnet OUT SYS_REFCURSOR
)
IS
BEGIN
    FOR rec IN (SELECT estudiante.carne, estudiante.nombre FROM estudiante) LOOP
    DBMS_OUTPUT.PUT_LINE('Columna1: ' || estudiante.carne || ', Columna2: ' || rec.estudiante.carne);
    END LOOP;
END;



/*
 La table nombre n'est plus suffisante, 
 doublez le nombre de lignes presentes.
 
 */
BEGIN TRANSACTION;

SELECT MAX(Nombre) as MaxNombre
FROM TallyNombre;

INSERT INTO TallyNombre (nombre)
SELECT Nombre + (
    SELECT MAX(Nombre) as MaxNombre
    FROM TallyNombre
  )
FROM TallyNombre;

SELECT MAX(Nombre) as MaxNombre
FROM TallyNombre;

ROLLBACK TRANSACTION;
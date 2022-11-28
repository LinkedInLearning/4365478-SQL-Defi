/*
 La table nombre n'est plus suffisante, 
 doublez le nombre de lignes presentes.
 
 */
BEGIN TRANSACTION;

SELECT *
FROM TallyNombre;

ROLLBACK TRANSACTION;
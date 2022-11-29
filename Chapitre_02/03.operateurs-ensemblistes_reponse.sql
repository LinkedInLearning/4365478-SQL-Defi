/*
 Restituez les noms de pays et de régions mélangés, 
 en indiquant s'il s'agit d'un pays ou d'une région.
 */
 
SELECT NomFrancais AS Nom,
  'Pays' AS "Type"
FROM Pays
UNION
SELECT Nom,
  'Région'
FROM Region;
/*
 Restituez les noms de pays et de régions mélangés, en indiquant s'il s'agit d'un pays ou d'une région.
 
 */
SELECT NomFrancais AS Nom,
  'Pays' as "type"
FROM Pays
UNION ALL
SELECT Nom,
  'Region'
FROM Region
ORDER BY Nom;
/*
 Restituez les contacts dont le nom de famille contient la chaîne "co", 
 mais PAS au début du nom, et dont le nom compte plus de six caractères. 
 */
 
SELECT *
FROM Contact
WHERE Nom LIKE '%co%'
  AND Nom NOT LIKE 'co%'
  AND Nom LIKE '______%';
/*
 Quels sont les stages sur lesquels 
 il y a eu plus de cinq sessions non 
 annulées en 2011 ?
 
 */
SELECT StageId,
  COUNT(*)
FROM "Session"
WHERE strftime('%Y', DateDebut) = '2011'
  AND (
    Statut <> 'A'
    OR Statut IS NULL
  )
GROUP BY StageId
HAVING COUNT(*) > 5;
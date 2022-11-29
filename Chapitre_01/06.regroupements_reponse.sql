/*
 Quels sont les stages sur lesquels 
 il y a eu plus de cinq sessions non 
 annulées en 2011 ?
 */
 
SELECT StageId,
  COUNT(*) as Sessions
FROM "Session"
WHERE strftime('%Y', DateDebut) = '2011'
  AND (
    TRIM(Statut) <> 'A'
    OR Statut IS NULL
  )
GROUP BY StageId
HAVING COUNT(*) > 5;
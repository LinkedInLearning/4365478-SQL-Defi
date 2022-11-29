/*
 Listez les sessions qui suivent directement une session 
 annulée du même stage.
 */
 
WITH cte AS (
  SELECT StageId,
    DateDebut,
    TRIM(s.Statut) as Statut,
    ROW_NUMBER() OVER (
      PARTITION BY StageId
      ORDER BY DateDebut
    ) as rn
  FROM "Session" s
)
SELECT *
FROM cte s1
  JOIN cte s2 ON s1.stageId = s2.StageId
  AND s1.rn = s2.rn - 1
WHERE s1.Statut = 'A'
  AND COALESCE(s2.Statut, '') <> 'A';
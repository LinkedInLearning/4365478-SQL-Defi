/*
 Listez les sessions qui suivent directement une session annul�e du m�me stage.
 
 */
WITH cte AS (
  SELECT StageId,
    DateDebut,
    Statut,
    ROW_NUMBER() OVER (
      PARTITION BY StageId
      ORDER BY DateDebut
    ) as rn
  FROM "Session"
)
SELECT *
FROM cte s1
  JOIN cte s2 ON s1.StageId = s2.stageId
  AND s1.rn = s2.rn - 1
WHERE TRIM(s1.Statut) = 'A'
  AND COALESCE(TRIM(s2.Statut), '') <> 'A';
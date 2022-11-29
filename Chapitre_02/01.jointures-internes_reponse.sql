/*
 Listez les stages qui ont plusieurs sessions en même temps.
 */

WITH cte AS (
  SELECT SessionId,
    StageId,
    DateDebut,
    Duree,
    DATE(DateDebut, printf("+%i day", Duree - 1)) AS DateFin
  FROM "Session"
)
SELECT *
FROM cte s1
  JOIN cte s2 ON s1.SessionId > s2.SessionId
  AND s1.StageId = s2.StageId
WHERE s1.DateDebut BETWEEN s2.DateDebut AND s2.DateFin
  OR s1.DateFin BETWEEN s2.DateDebut AND s2.DateFin
  OR s2.DateDebut BETWEEN s1.DateDebut AND s1.DateFin
ORDER BY s1.StageId;

/*

  |-------------|
  |----------|
     |------------------|
|---------------------------|
|-------|
    |------|

*/
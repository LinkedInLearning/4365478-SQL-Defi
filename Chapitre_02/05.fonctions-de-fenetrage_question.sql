/*
 Listez les sessions qui suivent directement une session 
 annulée du même stage.
 */

SELECT StageId,
  DateDebut,
  TRIM(s.Statut) as Statut,
  ROW_NUMBER() OVER (PARTITION BY StageId ORDER BY DateDebut) as rn 
FROM "Session" s;

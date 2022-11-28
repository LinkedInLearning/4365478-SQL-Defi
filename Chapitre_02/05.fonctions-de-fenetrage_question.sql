/*
 Listez les sessions qui suivent directement une session 
 annulée du même stage.
 */

SELECT StageId,
  DateDebut,
  TRIM(s.Statut) as Statut
FROM "Session" s;

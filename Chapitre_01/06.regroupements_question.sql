/*
 Quels sont les stages sur lesquels 
 il y a eu plus de cinq sessions non 
 annulées en 2011 ?
 */

SELECT 
  StageId,
  Statut,
  DateDebut,
  strftime('%Y', DateDebut) as Annee
FROM "Session";
/*
 Listez les stages qui ont plusieurs sessions en même temps.
 */

SELECT SessionId,
  StageId,
  DateDebut,
  Duree,
  DATE(DateDebut, printf("+%i day", Duree - 1)) AS DateFin
FROM "Session";
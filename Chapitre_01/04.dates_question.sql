/*
 Listez les sessions qui finissent dans le mois suivant 
 le mois de leur date de début.
 */

SELECT DateDebut,
  Duree,
  DATE(DateDebut, printf("+%i day", Duree - 1)) AS DateFin,
  strftime('%m', DateDebut) as Mois
FROM "Session";

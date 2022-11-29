/*
 Listez les sessions qui finissent dans le mois suivant 
 le mois de leur date de début.
 */

SELECT DateDebut,
  Duree,
  DATE(DateDebut, printf("+%i day", Duree - 1)) AS DateFin,
  strftime('%m', DateDebut) as Mois
FROM "Session"
WHERE (
    CAST(strftime('%m', DateDebut) as int) = CAST(
      strftime(
        '%m',
        DATE(DateDebut, printf("+%i day", Duree - 1))
      ) as int
    ) - 1
  )
  OR (
    strftime('%m', DateDebut) = '12'
    AND CAST(
      strftime(
        '%m',
        DATE(DateDebut, printf("+%i day", Duree - 1))
      ) as int
    ) = 1
  );

-- solution SQL Server
/*
SELECT DateDebut,
  DATEADD(day, Duree - 1, DateDebut) AS DateFin,
  DATENAME(month, DATEADD(day, Duree - 1, DateDebut))
FROM "Session"
WHERE MONTH(DateDebut) = MONTH(DATEADD(day, Duree - 1, DateDebut)) - 1
  OR (
    MONTH(DateDebut) = 12
    AND MONTH(DATEADD(day, Duree - 1, DateDebut)) = 1
  );
*/
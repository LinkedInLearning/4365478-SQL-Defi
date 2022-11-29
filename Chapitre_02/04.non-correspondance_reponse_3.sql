/*
 Trouver les participants à des formations en 2011 qui n'ont 
 pas participé à des formations en 2012.
 */
 
SELECT c.ContactId,
  c.Nom,
  c.Prenom
FROM Contact c
WHERE EXISTS (
    SELECT i.ContactId
    FROM Inscription i
      JOIN "Session" s ON i.SessionId = s.SessionId
    WHERE strftime('%Y', s.DateDebut) = '2011'
      AND i.ContactId = c.ContactId
  )
  AND NOT EXISTS (
    SELECT i.ContactId
    FROM Inscription i
      JOIN "Session" s ON i.SessionId = s.SessionId
    WHERE strftime('%Y', s.DateDebut) = '2012'
      AND i.ContactId = c.ContactId
  )
ORDER BY c.ContactId;
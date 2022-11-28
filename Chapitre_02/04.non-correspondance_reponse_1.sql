/*
 Trouver les participants � des formations en 2011 qui n'ont pas particip� � des formations en 2012.
 
 */
SELECT c.ContactId,
  c.Nom,
  c.Prenom
FROM Contact c
  JOIN Inscription i ON c.ContactId = i.ContactId
  JOIN "Session" s ON i.SessionId = s.SessionId
WHERE strftime('%Y', s.DateDebut) = '2011'
EXCEPT
SELECT c.ContactId,
  c.Nom,
  c.Prenom
FROM Contact c
  JOIN Inscription i ON c.ContactId = i.ContactId
  JOIN "Session" s ON i.SessionId = s.SessionId
WHERE strftime('%Y', s.DateDebut) = '2012';
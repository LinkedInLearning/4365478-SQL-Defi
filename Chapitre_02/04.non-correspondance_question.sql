/*
 Trouver les participants à des formations en 2011 
 qui n'ont pas participé à des formations en 2012.
 */

SELECT c.ContactId, c.Nom, c.Prenom, s.DateDebut,
  strftime('%Y', s.DateDebut) as Annee
FROM Contact c
JOIN Inscription i ON c.ContactId = i.ContactId
JOIN "Session" s ON i.SessionId = s.SessionId;
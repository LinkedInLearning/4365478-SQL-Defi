/*
 Combien y a-t-il de contacts qui ne sont ni des formateurs, ni des stagiaires inscrits � une formation ?
 
 */
SELECT c.*
FROM Contact c
  LEFT JOIN Formateur f ON c.ContactId = f.ContactId
  LEFT JOIN Inscription i ON c.ContactId = i.ContactId
WHERE f.FormateurId IS NULL
  AND i.InscriptionId IS NULL;
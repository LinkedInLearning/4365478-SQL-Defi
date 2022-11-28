/*
 Supprimez un contact malgré ses homonymes, 
 et en vous assurant de résoudre les problèmes de clés étrangères.
 
 */

SELECT *
FROM Contact c
WHERE Prenom = 'Achille'
  AND Nom = 'Leroy';

BEGIN TRANSACTION;
DELETE
FROM Contact
WHERE Prenom = 'Achille'
  AND Nom = 'Leroy';
ROLLBACK TRANSACTION;
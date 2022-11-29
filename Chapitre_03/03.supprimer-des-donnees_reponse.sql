/*
 Supprimez un contact malgré ses homonymes, 
 et en vous assurant de résoudre les problèmes 
 de clés étrangères.
 
 */

PRAGMA foreign_keys = true;
PRAGMA defer_foreign_keys = false;

SELECT *
FROM Contact c
WHERE Prenom = 'Achille'
  AND Nom = 'Leroy';

BEGIN TRANSACTION;

DELETE FROM Contact WHERE ContactId = (
SELECT ContactId
FROM Contact
WHERE Prenom = 'Achille'
  AND Nom = 'Leroy'
ORDER BY ContactId
LIMIT 1
);

ROLLBACK TRANSACTION;

SELECT *
FROM Contact
WHERE Prenom = 'Achille'
  AND Nom = 'Leroy'
ORDER BY ContactId
LIMIT 1;

-- 4244
SELECT InscriptionId
FROM Inscription i
WHERE i.ContactId = 4244;

BEGIN TRANSACTION;

DELETE FROM InscriptionFacture
WHERE InscriptionId IN (
    SELECT InscriptionId
    FROM Inscription i
    WHERE i.ContactId = 4244
  );

DELETE FROM Inscription
WHERE ContactId = 4244;

DELETE FROM Contact
WHERE ContactId = 4244;

ROLLBACK;
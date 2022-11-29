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

/*
Inscription
InscriptionFacture
*/

BEGIN TRANSACTION;

DELETE
FROM Contact
WHERE Prenom = 'Achille'
  AND Nom = 'Leroy';

ROLLBACK TRANSACTION;

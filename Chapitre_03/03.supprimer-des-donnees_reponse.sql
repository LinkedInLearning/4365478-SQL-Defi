/*
 Supprimez un contact malgr� ses homonymes, et en vous assurant de r�soudre les probl�mes de cl�s �trang�res.
 
 */

SELECT *
FROM Contact c
WHERE Prenom = 'Achille'
  AND Nom = 'Leroy';

BEGIN TRANSACTION;

DELETE TOP(1)
FROM Contact.Contact
WHERE Prenom = 'Achille'
  AND Nom = 'Leroy';

ROLLBACK TRANSACTION;

SELECT TOP(1) *
FROM Contact.Contact
WHERE Prenom = 'Achille'
  AND Nom = 'Leroy';

-- 4244
SELECT InscriptionId
FROM Inscription.Inscription i
WHERE i.ContactId = 4244;
BEGIN TRAN
DELETE FROM Inscription.InscriptionFacture
WHERE InscriptionId IN (
    SELECT InscriptionId
    FROM Inscription.Inscription i
    WHERE i.ContactId = 4244
  )
DELETE FROM Inscription.Inscription
WHERE ContactId = 4244;
DELETE FROM Contact.Contact
WHERE ContactId = 4244;
ROLLBACK
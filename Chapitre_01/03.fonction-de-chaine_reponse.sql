/*
 Restituez une colonne avec le pr�nom et le nom align�s.
 Jeanne..............Garcia
 */

SELECT Prenom || printf('%*s', 20 - LENGTH(Prenom), '') || Nom as NomComplet
FROM Contact;

-- dans SQL Server
/*
SELECT Prenom + REPLICATE(' ', 20 - LEN(Prenom)) + Nom
FROM Contact;
*/
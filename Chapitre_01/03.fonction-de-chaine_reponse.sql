/*
 Restituez une colonne avec le prénom et le nom alignés.
 Jeanne..............Garcia
 */

SELECT Prenom || printf('%*s', 20 - LENGTH(Prenom), '') || Nom as NomComplet
FROM Contact;

-- dans SQL Server
/*
SELECT Prenom + REPLICATE(' ', 20 - LEN(Prenom)) + Nom
FROM Contact;
*/
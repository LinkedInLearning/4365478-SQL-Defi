/*
 Restituez une colonne avec le prénom et le nom alignés.
 Jeanne..............Garcia (20 caractères)
 */

SELECT Prenom, Nom
FROM Contact;

SELECT MAX(LENGTH(Prenom)) as MaxLength
FROM Contact;

-- en sqlite : REPLICATE
-- printf('%*s', xx, '')
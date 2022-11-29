/*
 Formatez la sortie des contacts pour retourner 
 une colonne sur ce modèle : 
 M. Jean DUPONT.
 */

SELECT ContactId,
  COALESCE(Titre || ' ', '') || Prenom || ' ' || Nom as NomComplet
FROM Contact;

-- solution SQL Server
/*
 SELECT ContactId,
 COALESCE(Titre + ' ', '') + Prenom + ' ' + Nom,
 CONCAT(COALESCE(Titre + ' ', ''), Prenom, ' ', Nom)
 FROM Contact;
 */
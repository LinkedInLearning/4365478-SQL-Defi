/*
 Formatez la sortie des contacts pour retourner une 
 colonne sur ce modèle : 
 M. Jean DUPONT.
 
 */
SELECT ContactId, 
  COALESCE(Titre || ' ', '') || Prenom || ' ' || Nom AS NomComplet
FROM Contact;
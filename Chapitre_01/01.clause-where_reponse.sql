/*
  Dans la table des contacts, 
  affichez les contacts qui portent les noms 
  commençant entre G et J et dont le titre n'est pas 'Mme'
*/

SELECT *
FROM Contact
WHERE (
    Titre <> 'Mme'
    OR Titre IS NULL
  )
  AND Nom BETWEEN 'G' AND 'JZZ';
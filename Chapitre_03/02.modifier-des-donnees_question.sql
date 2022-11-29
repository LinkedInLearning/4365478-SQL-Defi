  /*
   Vérifiez les numéros de téléphone des contacts. 
   Si le téléphone commence par 06, déplacez-le dans la colonne Portable, 
   s'il y a un numéro dans la colonne Portable qui ne commence pas par 06, 
   déplacez-le dans la colonne Telephone.
   
   */

-- SELECT Telephone, Portable
-- FROM Contact;

-- plus simplement :

CREATE TEMPORARY TABLE temp_contact 
(Telephone varchar(50), Portable varchar(50));

INSERT INTO temp_contact (Telephone, Portable)
VALUES 
  ('0100000000', NULL),
  ('0600000000', NULL),
  (NULL, '0100000000'),
  (NULL, '0600000000'),
  ('0100000000', '0600000000'),
  ('0600000000', '0100000000');

SELECT *
FROM temp_contact;

DROP TABLE temp_contact;

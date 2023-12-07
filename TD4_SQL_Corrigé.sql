
-- client, commande, commande_ligne
-- Notation des apostrophes comme `client` utilisable uniquement pour manipuler en MySQL 
CREATE DATABASE `commande_client`;  

--1
SELECT * 
FROM `client` 
WHERE `prenom` = 'Muriel'
AND `password` = SHA1("test11");

--2
SELECT nom, COUNT(*) AS nbr_items 
FROM `commande_ligne` 
GROUP BY nom 
HAVING nbr_items > 1
ORDER BY nbr_items DESC;

--3
/*
La fonction MySQL GROUP_CONCAT() renvoie une chaîne avec une valeur concaténée non NULL 
d'un groupe. Il est utilisé pour concaténer et regrouper les valeurs de plusieurs lignes
 de la colonne id_commande en une seule chaîne séparée par des virgules. 
 Il est particulièrement utile pour combiner et afficher des données associées dans la colonne liste_commandes
 */
SELECT nom, COUNT(*) AS nbr_items , GROUP_CONCAT(`id_commande`) AS liste_commandes
FROM `commande_ligne` 
GROUP BY nom 
HAVING nbr_items > 1
ORDER BY nbr_items DESC;

--4
UPDATE `commande_ligne` 
SET  `prix_total` = (`quantite` * `prix_unitaire`);

--5
SELECT client.prenom, client.nom, commande.date_achat, commande.id_commande, SUM(prix_total) AS prix_commande 
FROM `commande_ligne` 
INNER JOIN commande ON commande.id_commande = commande_ligne.id_commande
INNER JOIN client ON client.id_client = commande.id_client
GROUP BY `commande.id_commande`;

--5 une autre solution avec équi-jointure 

SELECT client.prenom, client.nom, commande.date_achat, commande.id_commande, SUM(prix_total) AS prix_commande 
FROM `commande_ligne`, `commande`, `client`
WHERE commande.id_commande = commande_ligne.id_commande
AND client.id_client = commande.id_client
GROUP BY `commande.id_commande`;
--GROUP BY 1,2,3,4; ou cette solution de raccourci vers les champs du SELECT client.prenom, client.nom, commande.date_achat, commande.id_commande 

--6
UPDATE commande AS t1 
INNER JOIN 
    ( SELECT id_commande, SUM(commande_ligne.prix_total) AS p_total 
      FROM commande_ligne 
      GROUP BY id_commande ) t2 -- t2 une table crée temporairement valable uniquement pour cette requête contient id_commande, p_total
          ON  t1.id_commande = t2.id_commande 
SET t1.cache_prix_total = t2.p_total;

--7
SELECT YEAR(`date_achat`), MONTH(`date_achat`), SUM(`cache_prix_total`) 
FROM `commande` 
GROUP BY YEAR(`date_achat`), MONTH(`date_achat`)
ORDER BY YEAR(`date_achat`), MONTH(`date_achat`) DESC;

--8
SELECT client.nom, client.prenom, SUM(commande.cache_prix_total) AS client_montant
FROM `commande` 
INNER JOIN client ON client.id_client = commande.id_client
GROUP BY commande.id_client
ORDER BY client_montant DESC
LIMIT 10;
--8
SELECT client.nom, client.prenom, SUM(commande.cache_prix_total) AS client_montant
FROM client,commande
WHERE client.id_client = commande.id_client
GROUP BY commande.id_client
ORDER BY client_montant DESC
LIMIT 10;

--9
SELECT `date_achat`, SUM(`cache_prix_total`) 
FROM `commande` 
GROUP BY `date_achat`;

--10
ALTER TABLE `commande` ADD `category` TINYINT UNSIGNED NOT NULL AFTER `cache_prix_total`;

--11
UPDATE `commande` 
SET `category` = (
  CASE 
     WHEN cache_prix_total<200 THEN 1
     WHEN cache_prix_total<500 THEN 2
     WHEN cache_prix_total<1000 THEN 3
     ELSE 4
  END );

--12
CREATE TABLE `commande_category` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--13
INSERT INTO `commande_category` (`id`, `nom`) VALUES (1, 'commandes de moins de 200€');
INSERT INTO `commande_category` (`id`, `nom`) VALUES (2, 'commandes entre 200€ et 500€');
INSERT INTO `commande_category` (`id`, `nom`) VALUES (3, 'commandes entre 500€ et 1.000€');
INSERT INTO `commande_category` (`id`, `nom`) VALUES (4, 'commandes supérieures à 1.000€');

--14
---- Supprime les données dans la table commande_ligne correspondantes au date d'achat antérieure au 01/02/2019 
DELETE FROM `commande_ligne` 
WHERE `id_commande` IN ( SELECT id FROM commande WHERE date_achat < '2019-02-01');
-- Supprime les données dans la table commande correspondantes au date d'achat antérieure au 01/02/2019 
DELETE FROM `commande` WHERE date_achat < '2019-02-01';


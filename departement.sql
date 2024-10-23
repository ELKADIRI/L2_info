-- phpMyAdmin SQL Dump

-- Host: localhost



--
-- Database: `villes_fr`
--
CREATE DATABASE `villes_fr`;
-- --------------------------------------------------------

-- Structure table `departement`
--Excuter d'abord ce script de création de la structure de la table, ensuite excuter l'insert (en cliquant sur la table concernée) pour enregistrer les données de cette table

CREATE TABLE IF NOT EXISTS `departement` (
  `departement_code` varchar(3) NOT NULL,
  `departement_nom` varchar(255) DEFAULT NULL,
  `departement_nom_uppercase` varchar(255) DEFAULT NULL,
  `departement_slug` varchar(255) DEFAULT NULL,
  `departement_nom_soundex` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`departement_code`)
  ) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- La valeur d'un champ contenant un caractère apostrophe pourra être inseré dans le SGBD MySQL par \' (exemple : Côte-d\'or) et dans le SGBD PostgreSQL '' (exemple : Côte-d''or)

-- Charger les données de la table `departement`
-- On peut ne pas remplir la colonne departement_id qui sera alimentée automatiquement avec AUTO_INCREMENT

INSERT INTO `departement` (`departement_code`, `departement_nom`, `departement_nom_uppercase`, `departement_slug`, `departement_nom_soundex`) VALUES
('01', 'Ain', 'AIN', 'ain', 'A500'),
('02', 'Aisne', 'AISNE', 'aisne', 'A250'),
('03', 'Allier', 'ALLIER', 'allier', 'A460'),
('05', 'Hautes-Alpes', 'HAUTES-ALPES', 'hautes-alpes', 'H32412'),
('04', 'Alpes-de-Haute-Provence', 'ALPES-DE-HAUTE-PROVENCE', 'alpes-de-haute-provence', 'A412316152'),
('06', 'Alpes-Maritimes', 'ALPES-MARITIMES', 'alpes-maritimes', 'A41256352'),
('07', 'Ardèche', 'ARDÈCHE', 'ardeche', 'A632'),
('08', 'Ardennes', 'ARDENNES', 'ardennes', 'A6352'),
('09', 'Ariège', 'ARIÈGE', 'ariege', 'A620'),
('10', 'Aube', 'AUBE', 'aube', 'A100'),
('11', 'Aude', 'AUDE', 'aude', 'A300'),
('12', 'Aveyron', 'AVEYRON', 'aveyron', 'A165'),
('13', 'Bouches-du-Rhône', 'BOUCHES-DU-RHÔNE', 'bouches-du-rhone', 'B2365'),
('14', 'Calvados', 'CALVADOS', 'calvados', 'C4132'),
('15', 'Cantal', 'CANTAL', 'cantal', 'C534'),
('16', 'Charente', 'CHARENTE', 'charente', 'C653'),
('17', 'Charente-Maritime', 'CHARENTE-MARITIME', 'charente-maritime', 'C6535635'),
('18', 'Cher', 'CHER', 'cher', 'C600'),
('19', 'Corrèze', 'CORRÈZE', 'correze', 'C620'),
('2a', 'Corse-du-sud', 'CORSE-DU-SUD', 'corse-du-sud', 'C62323'),
('2b', 'Haute-corse', 'HAUTE-CORSE', 'haute-corse', 'H3262'),
('21', 'Côte-d\'or', 'CÔTE-D\'OR', 'cote-dor', 'C360'),
('22', 'Côtes-d\'armor', 'CÔTES-D\'ARMOR', 'cotes-darmor', 'C323656'),
('23', 'Creuse', 'CREUSE', 'creuse', 'C620'),
('24', 'Dordogne', 'DORDOGNE', 'dordogne', 'D6325'),
('25', 'Doubs', 'DOUBS', 'doubs', 'D120'),
('26', 'Drôme', 'DRÔME', 'drome', 'D650'),
('27', 'Eure', 'EURE', 'eure', 'E600'),
('28', 'Eure-et-Loir', 'EURE-ET-LOIR', 'eure-et-loir', 'E6346'),
('29', 'Finistère', 'FINISTÈRE', 'finistere', 'F5236'),
('30', 'Gard', 'GARD', 'gard', 'G630'),
('31', 'Haute-Garonne', 'HAUTE-GARONNE', 'haute-garonne', 'H3265'),
('32', 'Gers', 'GERS', 'gers', 'G620'),
('33', 'Gironde', 'GIRONDE', 'gironde', 'G653'),
('34', 'Hérault', 'HÉRAULT', 'herault', 'H643'),
('35', 'Ile-et-Vilaine', 'ILE-ET-VILAINE', 'ile-et-vilaine', 'I43145'),
('36', 'Indre', 'INDRE', 'indre', 'I536'),
('37', 'Indre-et-Loire', 'INDRE-ET-LOIRE', 'indre-et-loire', 'I536346'),
('38', 'Isère', 'ISÈRE', 'isere', 'I260'),
('39', 'Jura', 'JURA', 'jura', 'J600'),
('40', 'Landes', 'LANDES', 'landes', 'L532'),
('41', 'Loir-et-Cher', 'LOIR-ET-CHER', 'loir-et-cher', 'L6326'),
('42', 'Loire', 'LOIRE', 'loire', 'L600'),
('43', 'Haute-Loire', 'HAUTE-LOIRE', 'haute-loire', 'H346'),
('44', 'Loire-Atlantique', 'LOIRE-ATLANTIQUE', 'loire-atlantique', 'L634532'),
('45', 'Loiret', 'LOIRET', 'loiret', 'L630'),
('46', 'Lot', 'LOT', 'lot', 'L300'),
('47', 'Lot-et-Garonne', 'LOT-ET-GARONNE', 'lot-et-garonne', 'L3265'),
('48', 'Lozère', 'LOZÈRE', 'lozere', 'L260'),
('49', 'Maine-et-Loire', 'MAINE-ET-LOIRE', 'maine-et-loire', 'M346'),
('50', 'Manche', 'MANCHE', 'manche', 'M200'),
('51', 'Marne', 'MARNE', 'marne', 'M650'),
('52', 'Haute-Marne', 'HAUTE-MARNE', 'haute-marne', 'H3565'),
('53', 'Mayenne', 'MAYENNE', 'mayenne', 'M000'),
('54', 'Meurthe-et-Moselle', 'MEURTHE-ET-MOSELLE', 'meurthe-et-moselle', 'M63524'),
('55', 'Meuse', 'MEUSE', 'meuse', 'M200'),
('56', 'Morbihan', 'MORBIHAN', 'morbihan', 'M615'),
('57', 'Moselle', 'MOSELLE', 'moselle', 'M240'),
('58', 'Nièvre', 'NIÈVRE', 'nievre', 'N160'),
('59', 'Nord', 'NORD', 'nord', 'N630'),
('60', 'Oise', 'OISE', 'oise', 'O200'),
('61', 'Orne', 'ORNE', 'orne', 'O650'),
('62', 'Pas-de-Calais', 'PAS-DE-CALAIS', 'pas-de-calais', 'P23242'),
('63', 'Puy-de-Dôme', 'PUY-DE-DÔME', 'puy-de-dome', 'P350'),
('64', 'Pyrénées-Atlantiques', 'PYRÉNÉES-ATLANTIQUES', 'pyrenees-atlantiques', 'P65234532'),
('65', 'Hautes-Pyrénées', 'HAUTES-PYRÉNÉES', 'hautes-pyrenees', 'H321652'),
('66', 'Pyrénées-Orientales', 'PYRÉNÉES-ORIENTALES', 'pyrenees-orientales', 'P65265342'),
('67', 'Bas-Rhin', 'BAS-RHIN', 'bas-rhin', 'B265'),
('68', 'Haut-Rhin', 'HAUT-RHIN', 'haut-rhin', 'H365'),
('69', 'Rhône', 'RHÔNE', 'rhone', 'R500'),
('70', 'Haute-Saône', 'HAUTE-SAÔNE', 'haute-saone', 'H325'),
('71', 'Saône-et-Loire', 'SAÔNE-ET-LOIRE', 'saone-et-loire', 'S5346'),
('72', 'Sarthe', 'SARTHE', 'sarthe', 'S630'),
('73', 'Savoie', 'SAVOIE', 'savoie', 'S100'),
('74', 'Haute-Savoie', 'HAUTE-SAVOIE', 'haute-savoie', 'H321'),
('75', 'Paris', 'PARIS', 'paris', 'P620'),
('76', 'Seine-Maritime', 'SEINE-MARITIME', 'seine-maritime', 'S5635'),
('77', 'Seine-et-Marne', 'SEINE-ET-MARNE', 'seine-et-marne', 'S53565'),
('78', 'Yvelines', 'YVELINES', 'yvelines', 'Y1452'),
('79', 'Deux-Sèvres', 'DEUX-SÈVRES', 'deux-sevres', 'D2162'),
('80', 'Somme', 'SOMME', 'somme', 'S500'),
('81', 'Tarn', 'TARN', 'tarn', 'T650'),
('82', 'Tarn-et-Garonne', 'TARN-ET-GARONNE', 'tarn-et-garonne', 'T653265'),
('83', 'Var', 'VAR', 'var', 'V600'),
('84', 'Vaucluse', 'VAUCLUSE', 'vaucluse', 'V242'),
('85', 'Vendée', 'VENDÉE', 'vendee', 'V530'),
('86', 'Vienne', 'VIENNE', 'vienne', 'V500'),
('87', 'Haute-Vienne', 'HAUTE-VIENNE', 'haute-vienne', 'H315'),
('88', 'Vosges', 'VOSGES', 'vosges', 'V200'),
('89', 'Yonne', 'YONNE', 'yonne', 'Y500'),
('90', 'Territoire de Belfort', 'TERRITOIRE DE BELFORT', 'territoire-de-belfort', 'T636314163'),
('91', 'Essonne', 'ESSONNE', 'essonne', 'E250'),
('92', 'Hauts-de-Seine', 'HAUTS-DE-SEINE', 'hauts-de-seine', 'H32325'),
('93', 'Seine-Saint-Denis', 'SEINE-SAINT-DENIS', 'seine-saint-denis', 'S525352'),
('94', 'Val-de-Marne', 'VAL-DE-MARNE', 'val-de-marne', 'V43565'),
('95', 'Val-d\'oise', 'VAL-D\'OISE', 'val-doise', 'V432'),
('976', 'Mayotte', 'MAYOTTE', 'mayotte', 'M300'),
('971', 'Guadeloupe', 'GUADELOUPE', 'guadeloupe', 'G341'),
('973', 'Guyane', 'GUYANE', 'guyane', 'G500'),
('972', 'Martinique', 'MARTINIQUE', 'martinique', 'M6352'),
('974', 'Réunion', 'RÉUNION', 'reunion', 'R500');


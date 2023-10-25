-- phpMyAdmin SQL Dump

-- Host: localhost

--
-- Database: `commande_client`
--

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `prenom`, `nom`, `email`, `ville`, `password`) VALUES
(1, 'Flavie', 'Da costa', 'f.da.costa@example.com', 'Pomoy', 'b444ac06613fc8d63795be9ad0beaf55011936ac'),
(2, 'Valentin', 'Vespasien', 'valentin@example.com', 'Buvilly', '109f4b3c50d7b0df729d299bc6f8e9ef9066971f'),
(3, 'Gustave', 'Collin', 'gust@example.com', 'Marseille', '3ebfa301dc59196f18593c45e519287a23297589'),
(4, 'Emilien', 'Camus', 'emilien@example.com', 'Toulouse', '1ff2b3704aede04eecb51e50ca698efd50a1379b'),
(5, 'Firmin', 'Marais', 'firmin.marais@example.com', 'Lyon', '911ddc3b8f9a13b5499b6bc4638a2b4f3f68bf23'),
(6, 'Olivier', 'Riou', 'olive.de.lugagnac@example.com', 'Lugagnac', 'a66df261120b6c2311c6ef0b1bab4e583afcbcc0'),
(7, 'Lucas', 'Jung', 'lucas.jung@example.com', 'Coulgens', 'ea3243132d653b39025a944e70f3ecdf70ee3994'),
(8, 'Maurice', 'Huet', 'maurice.villemareuil@example.com', 'Villemareuil', 'd03f9d34194393019e6d12d7c942827ebd694443'),
(9, 'Manon', 'Durand', 'm.durand.s.e@example.com', 'Saint-Etienne', '53d525836cc96d089a5a4218b464fda532f7debe'),
(10, 'Joachim', 'Leon', 'joachim@example.com', 'Longwy-sur-le-Doubs', '168f4029f416ee06565f12e697dfc1534ae69d32'),
(11, 'Muriel', 'Dupuis', 'muriel@example.com', 'Paris', '100c4e57374fc998e57164d4c0453bd3a4876a58'),
(12, 'Christiane', 'Riou', 'chritianelesabrets@example.com', 'Les Abrets', '4ff1a33e188b7b86123d6e3be2722a23514a83b4'),
(13, 'Jacinthe', 'Langlois', 'jacinthe.langlois@example.com', 'Lagney', 'd804cd9cc0c42b0652bab002f67858ab803c40c6'),
(14, 'Amaury', 'Payet', 'amaury@example.com', 'Avermes', 'd79336a97da7d284c0fe15497d2fa944d1f2abb1'),
(15, 'Maris', 'Buisson', 'maris@example.com', 'Le Havre', '61bb70fa60368f069e62d601c357d203700ab2d2'),
(16, 'Fabrice', 'Foucher', 'fab.montlouis@example.com', 'Montlouis', '1fbefee9cfb86926757519357e077fd6a21aef0f'),
(17, 'Patrick', 'Saunier', 'patrick.saunier@example.com', 'Saligney', '08a25c0f270b29aeba650e6b2d1a9947a778c5da'),
(18, 'Emile', 'Ramos', 'emile@example.com', 'Arzay', 'cfc996a3aaac95f0fb508f46499dcb72b6d0abee'),
(19, 'Armel', 'Vigneron', 'armel.delain@example.com', 'Delain', 'bba019890aec72f6dd6b4e98513055cae61df098'),
(20, 'Arnaude', 'Vallee', 'armaude.vallee@example.com', 'Hostias', '57e5a4df68387d1d97210cf40c41104ce9256cf6');
COMMIT;



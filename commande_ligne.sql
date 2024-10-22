-- phpMyAdmin SQL Dump

-- Host: localhost

--
-- Database: `commande_client`

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


-- --------------------------------------------------------

--
-- Table structure for table `commande_ligne`
--

DROP TABLE IF EXISTS `commande_ligne`;
CREATE TABLE IF NOT EXISTS `commande_ligne` (
  `id_commande_ligne` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_commande` int(10) UNSIGNED NOT NULL,
  `nom` varchar(50) NOT NULL,
  `quantite` int(10) UNSIGNED NOT NULL,
  `prix_unitaire` float UNSIGNED NOT NULL,
  `prix_total` float UNSIGNED NOT NULL,
  PRIMARY KEY (`id_commande_ligne`),
  FOREIGN KEY(`id_commande`) REFERENCES commande(`id_commande`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commande_ligne`
--

INSERT INTO `commande_ligne` (`id_commande_ligne`, `id_commande`, `nom`, `quantite`, `prix_unitaire`, `prix_total`) VALUES
(1, 1, 'Produit 19', 3, 49.57, 0),
(2, 1, 'Produit 92', 4, 81.24, 0),
(3, 1, 'Produit 68', 2, 17.48, 0),
(4, 2, 'Produit 53', 4, 83.69, 0),
(5, 2, 'Produit 78', 6, 5.99, 0),
(6, 3, 'Produit D9', 7, 18.91, 0),
(7, 4, 'Produit A3', 8, 76.57, 0),
(8, 4, 'Produit BB', 10, 86.14, 0),
(9, 4, 'Produit 7C', 4, 80.96, 0),
(10, 4, 'Produit 78', 9, 26.4, 0),
(11, 4, 'Produit 07', 6, 9.13, 0),
(12, 5, 'Produit 00', 10, 86.45, 0),
(13, 5, 'Produit 7A', 2, 44.86, 0),
(14, 6, 'Produit E1', 9, 84.93, 0),
(15, 7, 'Produit D6', 2, 50.07, 0),
(16, 7, 'Produit BD', 7, 115.55, 0),
(17, 7, 'Produit D9', 3, 67.55, 0),
(18, 8, 'Produit 55', 9, 111.12, 0),
(19, 9, 'Produit C7', 10, 112.93, 0),
(20, 10, 'Produit 2A', 2, 111.31, 0),
(21, 10, 'Produit 07', 5, 97.75, 0),
(22, 10, 'Produit FC', 10, 34.8, 0),
(23, 10, 'Produit A6', 5, 0.76, 0),
(24, 11, 'Produit 4B', 5, 19.4, 0),
(25, 12, 'Produit 12', 1, 94.72, 0),
(26, 12, 'Produit 09', 7, 55.39, 0),
(27, 13, 'Produit EA', 2, 112.78, 0),
(28, 13, 'Produit CB', 6, 37.73, 0),
(29, 14, 'Produit A1', 7, 90.34, 0),
(30, 14, 'Produit 00', 6, 98.49, 0),
(31, 15, 'Produit 67', 9, 101.43, 0),
(32, 15, 'Produit 52', 8, 91.68, 0),
(33, 16, 'Produit 2E', 4, 34.1, 0),
(34, 17, 'Produit 36', 10, 15.48, 0),
(35, 17, 'Produit 67', 2, 95.08, 0),
(36, 17, 'Produit 4D', 5, 68.97, 0),
(37, 17, 'Produit 1D', 10, 59.6, 0),
(38, 18, 'Produit 4C', 6, 91.1, 0),
(39, 18, 'Produit 12', 8, 36.69, 0),
(40, 18, 'Produit 13', 6, 30.17, 0),
(41, 18, 'Produit 22', 1, 40.78, 0),
(42, 19, 'Produit CE', 8, 113.4, 0),
(43, 20, 'Produit DD', 6, 84.64, 0),
(44, 20, 'Produit C4', 5, 82.99, 0),
(45, 20, 'Produit 43', 6, 41.06, 0),
(46, 21, 'Produit F4', 5, 76.31, 0),
(47, 21, 'Produit FC', 7, 18.36, 0),
(48, 22, 'Produit 95', 3, 102.88, 0),
(49, 22, 'Produit E1', 7, 99.32, 0),
(50, 22, 'Produit 2D', 9, 67.95, 0),
(51, 22, 'Produit 6C', 7, 41.8, 0),
(52, 22, 'Produit 49', 4, 5.14, 0),
(53, 23, 'Produit 6D', 6, 20.32, 0),
(54, 23, 'Produit 8A', 9, 86.16, 0),
(55, 23, 'Produit EE', 10, 9.84, 0),
(56, 24, 'Produit B9', 1, 30.71, 0),
(57, 24, 'Produit C8', 4, 4.03, 0),
(58, 24, 'Produit E5', 4, 48.04, 0),
(59, 25, 'Produit 0F', 1, 108.12, 0),
(60, 25, 'Produit DD', 10, 36.47, 0),
(61, 26, 'Produit 67', 8, 98, 0),
(62, 27, 'Produit 41', 1, 20.58, 0),
(63, 27, 'Produit 54', 7, 48.89, 0),
(64, 28, 'Produit 65', 4, 62.73, 0),
(65, 28, 'Produit 93', 9, 46.97, 0),
(66, 29, 'Produit 9A', 2, 46.68, 0),
(67, 29, 'Produit D2', 9, 92.48, 0),
(68, 29, 'Produit 6D', 4, 82.35, 0),
(69, 30, 'Produit 20', 8, 14.3, 0),
(70, 31, 'Produit 3C', 8, 64.45, 0),
(71, 31, 'Produit 60', 6, 39.34, 0),
(72, 32, 'Produit 63', 7, 3.38, 0),
(73, 32, 'Produit 95', 8, 18.86, 0),
(74, 32, 'Produit 62', 6, 84.17, 0),
(75, 32, 'Produit DE', 5, 4.28, 0),
(76, 33, 'Produit D0', 9, 8.88, 0),
(77, 33, 'Produit D6', 9, 31.55, 0),
(78, 33, 'Produit C3', 7, 11.14, 0),
(79, 34, 'Produit 5E', 10, 81.02, 0),
(80, 35, 'Produit B2', 8, 11.71, 0),
(81, 36, 'Produit 3C', 10, 55.47, 0),
(82, 37, 'Produit 6F', 7, 2.24, 0),
(83, 37, 'Produit 16', 2, 84.8, 0),
(84, 38, 'Produit 1A', 6, 57.27, 0),
(85, 38, 'Produit 24', 7, 31.93, 0),
(86, 39, 'Produit DF', 6, 107.85, 0),
(87, 39, 'Produit 7F', 9, 83.44, 0),
(88, 40, 'Produit 6D', 6, 93.67, 0),
(89, 40, 'Produit 6B', 3, 98.04, 0),
(90, 41, 'Produit 8A', 5, 89.18, 0),
(91, 41, 'Produit 6D', 4, 31.78, 0),
(92, 42, 'Produit 1C', 6, 11.35, 0),
(93, 42, 'Produit 52', 8, 81.43, 0),
(94, 43, 'Produit B4', 10, 13.1, 0),
(95, 43, 'Produit FD', 8, 61.21, 0),
(96, 44, 'Produit 4A', 10, 26.72, 0),
(97, 44, 'Produit D4', 5, 70.01, 0),
(98, 44, 'Produit 9B', 6, 29.86, 0),
(99, 44, 'Produit BE', 3, 59.3, 0),
(100, 44, 'Produit 86', 4, 86.9, 0),
(101, 45, 'Produit F0', 3, 16.59, 0),
(102, 45, 'Produit 6A', 2, 62.25, 0),
(103, 45, 'Produit 85', 10, 21.48, 0),
(104, 45, 'Produit EF', 5, 40.65, 0),
(105, 46, 'Produit C4', 3, 18.81, 0),
(106, 46, 'Produit F9', 6, 92.09, 0),
(107, 46, 'Produit 05', 6, 44.02, 0),
(108, 46, 'Produit 3A', 8, 63.84, 0),
(109, 46, 'Produit 2E', 2, 67.15, 0),
(110, 47, 'Produit 6E', 6, 24.24, 0),
(111, 47, 'Produit F8', 6, 39.74, 0),
(112, 47, 'Produit A9', 10, 5.97, 0),
(113, 47, 'Produit 21', 2, 30.63, 0),
(114, 47, 'Produit 93', 7, 15.24, 0),
(115, 48, 'Produit E4', 9, 104.3, 0),
(116, 48, 'Produit 72', 5, 115.8, 0),
(117, 48, 'Produit DB', 7, 26.1, 0),
(118, 48, 'Produit DE', 9, 23.12, 0),
(119, 48, 'Produit 3D', 7, 37.26, 0),
(120, 48, 'Produit C5', 4, 116.97, 0);
COMMIT;

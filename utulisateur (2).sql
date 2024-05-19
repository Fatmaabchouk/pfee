-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 19 mai 2024 à 22:39
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `utulisateur`
--

-- --------------------------------------------------------

--
-- Structure de la table `commaande`
--

CREATE TABLE `commaande` (
  `id_commande` int(11) NOT NULL,
  `utilisateur_id` int(11) DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `prixParKilo` double DEFAULT NULL,
  `prix_total` double DEFAULT NULL,
  `nomUtilisateur` varchar(255) DEFAULT NULL,
  `numeroUtilisateur` varchar(20) DEFAULT NULL,
  `adresseUtilisateur` varchar(255) DEFAULT NULL,
  `referenceCommande` varchar(50) DEFAULT NULL,
  `moyenPaiement` varchar(50) DEFAULT NULL,
  `dateCommande` timestamp NOT NULL DEFAULT current_timestamp(),
  `subtotal` double DEFAULT NULL,
  `frais_livraison` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commaande`
--

INSERT INTO `commaande` (`id_commande`, `utilisateur_id`, `quantite`, `titre`, `prixParKilo`, `prix_total`, `nomUtilisateur`, `numeroUtilisateur`, `adresseUtilisateur`, `referenceCommande`, `moyenPaiement`, `dateCommande`, `subtotal`, `frais_livraison`, `total`) VALUES
(1, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211813', 'Comptant à la livraison', '2024-04-14 20:18:13', 45, 5, 50),
(2, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211813', 'Comptant à la livraison', '2024-04-14 20:18:13', 45, 5, 50),
(3, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211813', 'Comptant à la livraison', '2024-04-14 20:18:13', 45, 5, 50),
(4, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211813', 'Comptant à la livraison', '2024-04-14 20:18:13', 45, 5, 50),
(5, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211813', 'Comptant à la livraison', '2024-04-14 20:18:13', 45, 5, 50),
(6, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414212422', 'Comptant à la livraison', '2024-04-14 20:24:22', 45, 5, 50),
(7, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414212422', 'Comptant à la livraison', '2024-04-14 20:24:22', 45, 5, 50),
(8, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414212422', 'Comptant à la livraison', '2024-04-14 20:24:22', 45, 5, 50),
(9, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414212422', 'Comptant à la livraison', '2024-04-14 20:24:22', 45, 5, 50),
(10, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414212422', 'Comptant à la livraison', '2024-04-14 20:24:22', 45, 5, 50),
(11, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213045', 'Comptant à la livraison', '2024-04-14 20:30:45', 45, 5, 50),
(12, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213045', 'Comptant à la livraison', '2024-04-14 20:30:45', 45, 5, 50),
(13, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213045', 'Comptant à la livraison', '2024-04-14 20:30:45', 45, 5, 50),
(14, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213045', 'Comptant à la livraison', '2024-04-14 20:30:45', 45, 5, 50),
(15, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213045', 'Comptant à la livraison', '2024-04-14 20:30:45', 45, 5, 50),
(16, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213244', 'Comptant à la livraison', '2024-04-14 20:32:44', 36, 5, 41),
(17, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213244', 'Comptant à la livraison', '2024-04-14 20:32:44', 36, 5, 41),
(18, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213244', 'Comptant à la livraison', '2024-04-14 20:32:44', 36, 5, 41),
(19, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213244', 'Comptant à la livraison', '2024-04-14 20:32:44', 36, 5, 41),
(20, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414214640', 'Comptant à la livraison', '2024-04-14 20:46:40', 36, 5, 41),
(21, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414214640', 'Comptant à la livraison', '2024-04-14 20:46:40', 36, 5, 41),
(22, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414214640', 'Comptant à la livraison', '2024-04-14 20:46:40', 36, 5, 41),
(23, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414214640', 'Comptant à la livraison', '2024-04-14 20:46:40', 36, 5, 41),
(24, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414214742', 'Comptant à la livraison', '2024-04-14 20:47:42', 36, 5, 41),
(25, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414214742', 'Comptant à la livraison', '2024-04-14 20:47:42', 36, 5, 41),
(26, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414214742', 'Comptant à la livraison', '2024-04-14 20:47:42', 36, 5, 41),
(27, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414214742', 'Comptant à la livraison', '2024-04-14 20:47:42', 36, 5, 41),
(28, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414214941', 'Comptant à la livraison', '2024-04-14 20:49:41', 36, 5, 41),
(29, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414214941', 'Comptant à la livraison', '2024-04-14 20:49:41', 36, 5, 41),
(30, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414214941', 'Comptant à la livraison', '2024-04-14 20:49:41', 36, 5, 41),
(31, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414214941', 'Comptant à la livraison', '2024-04-14 20:49:41', 36, 5, 41),
(32, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414215943', 'Comptant à la livraison', '2024-04-14 20:59:43', 36, 5, 41),
(33, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414215943', 'Comptant à la livraison', '2024-04-14 20:59:43', 36, 5, 41),
(34, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414215943', 'Comptant à la livraison', '2024-04-14 20:59:43', 36, 5, 41),
(35, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414215943', 'Comptant à la livraison', '2024-04-14 20:59:43', 36, 5, 41),
(36, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220139', 'Comptant à la livraison', '2024-04-14 21:01:39', 36, 5, 41),
(37, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220139', 'Comptant à la livraison', '2024-04-14 21:01:39', 36, 5, 41),
(38, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220139', 'Comptant à la livraison', '2024-04-14 21:01:39', 36, 5, 41),
(39, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220139', 'Comptant à la livraison', '2024-04-14 21:01:39', 36, 5, 41),
(40, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220539', 'Comptant à la livraison', '2024-04-14 21:05:39', 36, 5, 41),
(41, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220539', 'Comptant à la livraison', '2024-04-14 21:05:39', 36, 5, 41),
(42, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220539', 'Comptant à la livraison', '2024-04-14 21:05:39', 36, 5, 41),
(43, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220539', 'Comptant à la livraison', '2024-04-14 21:05:39', 36, 5, 41),
(44, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220737', 'Comptant à la livraison', '2024-04-14 21:07:37', 36, 5, 41),
(45, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220737', 'Comptant à la livraison', '2024-04-14 21:07:37', 36, 5, 41),
(46, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220737', 'Comptant à la livraison', '2024-04-14 21:07:37', 36, 5, 41),
(47, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220737', 'Comptant à la livraison', '2024-04-14 21:07:37', 36, 5, 41),
(48, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220818', 'Comptant à la livraison', '2024-04-14 21:08:18', 36, 5, 41),
(49, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220818', 'Comptant à la livraison', '2024-04-14 21:08:18', 36, 5, 41),
(50, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220818', 'Comptant à la livraison', '2024-04-14 21:08:18', 36, 5, 41),
(51, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414220818', 'Comptant à la livraison', '2024-04-14 21:08:18', 36, 5, 41),
(52, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221007', 'Comptant à la livraison', '2024-04-14 21:10:07', 36, 5, 41),
(53, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221007', 'Comptant à la livraison', '2024-04-14 21:10:07', 36, 5, 41),
(54, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221007', 'Comptant à la livraison', '2024-04-14 21:10:07', 36, 5, 41),
(55, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221007', 'Comptant à la livraison', '2024-04-14 21:10:07', 36, 5, 41),
(56, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221346', 'Comptant à la livraison', '2024-04-14 21:13:46', 36, 5, 41),
(57, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221346', 'Comptant à la livraison', '2024-04-14 21:13:46', 36, 5, 41),
(58, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221346', 'Comptant à la livraison', '2024-04-14 21:13:46', 36, 5, 41),
(59, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221346', 'Comptant à la livraison', '2024-04-14 21:13:46', 36, 5, 41),
(60, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221608', 'Comptant à la livraison', '2024-04-14 21:16:08', 36, 5, 41),
(61, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221608', 'Comptant à la livraison', '2024-04-14 21:16:08', 36, 5, 41),
(62, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221608', 'Comptant à la livraison', '2024-04-14 21:16:08', 36, 5, 41),
(63, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221608', 'Comptant à la livraison', '2024-04-14 21:16:08', 36, 5, 41),
(64, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221645', 'Comptant à la livraison', '2024-04-14 21:16:45', 36, 5, 41),
(65, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221645', 'Comptant à la livraison', '2024-04-14 21:16:45', 36, 5, 41),
(66, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221645', 'Comptant à la livraison', '2024-04-14 21:16:45', 36, 5, 41),
(67, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221645', 'Comptant à la livraison', '2024-04-14 21:16:45', 36, 5, 41),
(68, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221738', 'Comptant à la livraison', '2024-04-14 21:17:38', 36, 5, 41),
(69, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221738', 'Comptant à la livraison', '2024-04-14 21:17:38', 36, 5, 41),
(70, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221738', 'Comptant à la livraison', '2024-04-14 21:17:38', 36, 5, 41),
(71, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414221738', 'Comptant à la livraison', '2024-04-14 21:17:38', 36, 5, 41),
(72, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414222005', 'Comptant à la livraison', '2024-04-14 21:20:05', 36, 5, 41),
(73, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414222005', 'Comptant à la livraison', '2024-04-14 21:20:05', 36, 5, 41),
(74, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414222005', 'Comptant à la livraison', '2024-04-14 21:20:05', 36, 5, 41),
(75, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414222005', 'Comptant à la livraison', '2024-04-14 21:20:05', 36, 5, 41),
(76, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414222355', 'Comptant à la livraison', '2024-04-14 21:23:55', 36, 5, 41),
(77, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414222355', 'Comptant à la livraison', '2024-04-14 21:23:55', 36, 5, 41),
(78, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414222355', 'Comptant à la livraison', '2024-04-14 21:23:55', 36, 5, 41),
(79, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414222355', 'Comptant à la livraison', '2024-04-14 21:23:55', 36, 5, 41),
(80, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414222531', 'Comptant à la livraison', '2024-04-14 21:25:31', 36, 5, 41),
(81, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414222531', 'Comptant à la livraison', '2024-04-14 21:25:31', 36, 5, 41),
(82, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414222531', 'Comptant à la livraison', '2024-04-14 21:25:31', 36, 5, 41),
(83, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414222531', 'Comptant à la livraison', '2024-04-14 21:25:31', 36, 5, 41),
(84, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415122715', 'Comptant à la livraison', '2024-04-15 11:27:15', 36, 10, 46),
(85, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415122715', 'Comptant à la livraison', '2024-04-15 11:27:15', 36, 10, 46),
(86, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415122715', 'Comptant à la livraison', '2024-04-15 11:27:15', 36, 10, 46),
(87, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415122715', 'Comptant à la livraison', '2024-04-15 11:27:15', 36, 10, 46),
(88, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415123404', 'Comptant à la livraison', '2024-04-15 11:34:04', 36, 5, 41),
(89, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415123404', 'Comptant à la livraison', '2024-04-15 11:34:04', 36, 5, 41),
(90, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415123404', 'Comptant à la livraison', '2024-04-15 11:34:04', 36, 5, 41),
(91, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415123404', 'Comptant à la livraison', '2024-04-15 11:34:04', 36, 5, 41),
(92, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415123606', 'Comptant à la livraison', '2024-04-15 11:36:06', 36, 5, 41),
(93, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415123606', 'Comptant à la livraison', '2024-04-15 11:36:06', 36, 5, 41),
(94, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415123606', 'Comptant à la livraison', '2024-04-15 11:36:06', 36, 5, 41),
(95, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415123606', 'Comptant à la livraison', '2024-04-15 11:36:06', 36, 5, 41),
(96, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415123708', 'Comptant à la livraison', '2024-04-15 11:37:08', 36, 5, 41),
(97, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415123708', 'Comptant à la livraison', '2024-04-15 11:37:08', 36, 5, 41),
(98, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415123708', 'Comptant à la livraison', '2024-04-15 11:37:08', 36, 5, 41),
(99, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240415123708', 'Comptant à la livraison', '2024-04-15 11:37:08', 36, 5, 41),
(100, 4, 8, 'aaaaemna', 9, 72, 'hasna', '+21652086967', 'rue ebn akhil  gafsa, gafsa', 'CMD20240415124038', 'Comptant à la livraison', '2024-04-15 11:40:38', 81, 10, 91),
(101, 4, 1, 'tomate', 9, 9, 'hasna', '+21652086967', 'rue ebn akhil  gafsa, gafsa', 'CMD20240415124038', 'Comptant à la livraison', '2024-04-15 11:40:38', 81, 10, 91),
(102, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418194040', 'Comptant à la livraison', '2024-04-18 18:40:40', 36, 10, 46),
(103, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418194040', 'Comptant à la livraison', '2024-04-18 18:40:40', 36, 10, 46),
(104, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418194040', 'Comptant à la livraison', '2024-04-18 18:40:40', 36, 10, 46),
(105, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418194040', 'Comptant à la livraison', '2024-04-18 18:40:40', 36, 10, 46),
(106, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418200657', 'Comptant à la livraison', '2024-04-18 19:06:57', 36, 5, 41),
(107, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418200657', 'Comptant à la livraison', '2024-04-18 19:06:57', 36, 5, 41),
(108, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418200657', 'Comptant à la livraison', '2024-04-18 19:06:57', 36, 5, 41),
(109, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418200657', 'Comptant à la livraison', '2024-04-18 19:06:57', 36, 5, 41),
(110, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418200810', 'Comptant à la livraison', '2024-04-18 19:08:10', 36, 5, 41),
(111, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418200810', 'Comptant à la livraison', '2024-04-18 19:08:10', 36, 5, 41),
(112, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418200810', 'Comptant à la livraison', '2024-04-18 19:08:10', 36, 5, 41),
(113, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418200810', 'Comptant à la livraison', '2024-04-18 19:08:10', 36, 5, 41),
(114, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418201630', 'Comptant à la livraison', '2024-04-18 19:16:30', 36, 5, 41),
(115, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418201630', 'Comptant à la livraison', '2024-04-18 19:16:30', 36, 5, 41),
(116, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418201630', 'Comptant à la livraison', '2024-04-18 19:16:30', 36, 5, 41),
(117, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418201630', 'Comptant à la livraison', '2024-04-18 19:16:30', 36, 5, 41),
(118, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418202031', 'Comptant à la livraison', '2024-04-18 19:20:31', 36, 5, 41),
(119, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418202031', 'Comptant à la livraison', '2024-04-18 19:20:31', 36, 5, 41),
(120, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418202031', 'Comptant à la livraison', '2024-04-18 19:20:31', 36, 5, 41),
(121, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418202031', 'Comptant à la livraison', '2024-04-18 19:20:31', 36, 5, 41),
(122, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418210044', 'Comptant à la livraison', '2024-04-18 20:00:44', 36, 5, 41),
(123, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418210044', 'Comptant à la livraison', '2024-04-18 20:00:44', 36, 5, 41),
(124, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418210044', 'Comptant à la livraison', '2024-04-18 20:00:44', 36, 5, 41),
(125, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418210044', 'Comptant à la livraison', '2024-04-18 20:00:44', 36, 5, 41),
(126, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418210321', 'Comptant à la livraison', '2024-04-18 20:03:21', 36, 5, 41),
(127, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418210321', 'Comptant à la livraison', '2024-04-18 20:03:21', 36, 5, 41),
(128, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418210321', 'Comptant à la livraison', '2024-04-18 20:03:21', 36, 5, 41),
(129, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418210321', 'Comptant à la livraison', '2024-04-18 20:03:21', 36, 5, 41),
(130, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418211518', 'Comptant à la livraison', '2024-04-18 20:15:18', 36, 5, 41),
(131, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418211518', 'Comptant à la livraison', '2024-04-18 20:15:18', 36, 5, 41),
(132, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418211518', 'Comptant à la livraison', '2024-04-18 20:15:18', 36, 5, 41),
(133, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240418211518', 'Comptant à la livraison', '2024-04-18 20:15:18', 36, 5, 41),
(134, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240420113516', 'Comptant à la livraison', '2024-04-20 10:35:16', 9, 5, 14),
(135, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240420115212', 'Comptant à la livraison', '2024-04-20 10:52:12', 9, 5, 14),
(136, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240420123703', 'Comptant à la livraison', '2024-04-20 11:37:03', 9, 10, 19),
(137, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240420124101', 'Comptant à la livraison', '2024-04-20 11:41:01', 9, 5, 14),
(138, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240420124429', 'Comptant à la livraison', '2024-04-20 11:44:29', 9, 5, 14),
(139, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240420124811', 'Comptant à la livraison', '2024-04-20 11:48:11', 9, 5, 14),
(140, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240420130451', 'Comptant à la livraison', '2024-04-20 12:04:51', 9, 5, 14),
(141, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240420132716', 'Comptant à la livraison', '2024-04-20 12:27:16', 9, 5, 14),
(142, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240420132831', 'Comptant à la livraison', '2024-04-20 12:28:31', 9, 5, 14),
(143, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240423201210', 'Comptant à la livraison', '2024-04-23 19:12:10', 18, 5, 23),
(144, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240423201210', 'Comptant à la livraison', '2024-04-23 19:12:10', 18, 5, 23),
(145, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240423203051', 'Comptant à la livraison', '2024-04-23 19:30:51', 18, 5, 23),
(146, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240423203051', 'Comptant à la livraison', '2024-04-23 19:30:51', 18, 5, 23),
(147, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240424122835', 'Comptant à la livraison', '2024-04-24 11:28:35', 18, 5, 23),
(148, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240424122835', 'Comptant à la livraison', '2024-04-24 11:28:35', 18, 5, 23),
(149, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240428122037', 'Comptant à la livraison', '2024-04-28 11:20:37', 9, 5, 14),
(150, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240428123013', 'Comptant à la livraison', '2024-04-28 11:30:13', 81, 5, 86),
(151, 2, 1, 'aaaaemna', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240428123013', 'Comptant à la livraison', '2024-04-28 11:30:13', 81, 5, 86),
(152, 2, 4, 'tomate', 9, 36, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240428123013', 'Comptant à la livraison', '2024-04-28 11:30:13', 81, 5, 86),
(153, 2, 3, 'tomate', 9, 27, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240428123013', 'Comptant à la livraison', '2024-04-28 11:30:13', 81, 5, 86),
(154, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240502214636', 'Comptant à la livraison', '2024-05-02 20:46:36', 83, 5, 88),
(155, 2, 1, 'aaaaemna', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240502214636', 'Comptant à la livraison', '2024-05-02 20:46:36', 83, 5, 88),
(156, 2, 4, 'tomate', 9, 36, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240502214636', 'Comptant à la livraison', '2024-05-02 20:46:36', 83, 5, 88),
(157, 2, 3, 'tomate', 9, 27, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240502214636', 'Comptant à la livraison', '2024-05-02 20:46:36', 83, 5, 88),
(158, 2, 1, 'tomatee', 2, 2, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240502214636', 'Comptant à la livraison', '2024-05-02 20:46:36', 83, 5, 88),
(159, 2, 1, 'tomatee', 2, 2, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240502221444', 'Comptant à la livraison', '2024-05-02 21:14:44', 9, 5, 14),
(160, 2, 1, 'Poivre', 3, 3, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240502221444', 'Comptant à la livraison', '2024-05-02 21:14:44', 9, 5, 14),
(161, 2, 2, 'orange', 2, 4, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240502221444', 'Comptant à la livraison', '2024-05-02 21:14:44', 9, 5, 14),
(162, 2, 1, 'tomatee', 2, 2, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240505134145', 'Comptant à la livraison', '2024-05-05 12:41:45', 15, 10, 25),
(163, 2, 1, 'Poivre', 3, 3, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240505134145', 'Comptant à la livraison', '2024-05-05 12:41:45', 15, 10, 25),
(164, 2, 2, 'orange', 2, 4, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240505134145', 'Comptant à la livraison', '2024-05-05 12:41:45', 15, 10, 25),
(165, 2, 1, 'orange', 2, 2, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240505134145', 'Comptant à la livraison', '2024-05-05 12:41:45', 15, 10, 25),
(166, 2, 2, 'orange', 2, 4, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240505134145', 'Comptant à la livraison', '2024-05-05 12:41:45', 15, 10, 25),
(167, 2, 1, 'tomatee', 2, 2, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240509221929', 'Comptant à la livraison', '2024-05-09 21:19:29', 21974, 10, 21984),
(168, 2, 1, 'Poivre', 3, 3, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240509221929', 'Comptant à la livraison', '2024-05-09 21:19:29', 21974, 10, 21984),
(169, 2, 2, 'orange', 2, 4, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240509221929', 'Comptant à la livraison', '2024-05-09 21:19:29', 21974, 10, 21984),
(170, 2, 1, 'orange', 2, 2, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240509221929', 'Comptant à la livraison', '2024-05-09 21:19:29', 21974, 10, 21984),
(171, 2, 2, 'orange', 2, 4, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240509221929', 'Comptant à la livraison', '2024-05-09 21:19:29', 21974, 10, 21984),
(172, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240509221929', 'Comptant à la livraison', '2024-05-09 21:19:29', 21974, 10, 21984),
(173, 2, 1, 'Veggieboc Small', 21950, 21950, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240509221929', 'Comptant à la livraison', '2024-05-09 21:19:29', 21974, 10, 21984),
(174, 2, 1, 'Poivre', 3, 3, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515133624', 'Comptant à la livraison', '2024-05-15 12:36:24', 153727, 10, 153737),
(175, 2, 1, 'orange', 2, 2, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515133624', 'Comptant à la livraison', '2024-05-15 12:36:25', 153727, 10, 153737),
(176, 2, 2, 'orange', 2, 4, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515133624', 'Comptant à la livraison', '2024-05-15 12:36:25', 153727, 10, 153737),
(177, 2, 1, 'tomate', 9, 9, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515133624', 'Comptant à la livraison', '2024-05-15 12:36:25', 153727, 10, 153737),
(178, 2, 1, 'Poivre', 3, 3, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515133624', 'Comptant à la livraison', '2024-05-15 12:36:25', 153727, 10, 153737),
(179, 2, 1, 'fraise', 4, 4, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515133624', 'Comptant à la livraison', '2024-05-15 12:36:25', 153727, 10, 153737),
(180, 2, 1, 'fraise', 4, 4, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515133624', 'Comptant à la livraison', '2024-05-15 12:36:25', 153727, 10, 153737),
(181, 2, 1, 'fraise', 4, 4, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515133624', 'Comptant à la livraison', '2024-05-15 12:36:25', 153727, 10, 153737),
(182, 2, 1, 'orange', 2, 2, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515133624', 'Comptant à la livraison', '2024-05-15 12:36:25', 153727, 10, 153737),
(183, 2, 1, ' medium  fruit-box', 35, 35, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515133624', 'Comptant à la livraison', '2024-05-15 12:36:25', 153727, 10, 153737),
(184, 2, 1, 'Poivre', 3, 3, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515133624', 'Comptant à la livraison', '2024-05-15 12:36:25', 153727, 10, 153737),
(185, 2, 1, 'Poivre', 3, 3, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515211919', 'Comptant à la livraison', '2024-05-15 20:19:19', 38.5, 10, 48.5),
(186, 2, 1, 'fraise', 4, 4, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515211919', 'Comptant à la livraison', '2024-05-15 20:19:19', 38.5, 10, 48.5),
(187, 2, 1, 'fraise', 4, 4, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515211919', 'Comptant à la livraison', '2024-05-15 20:19:19', 38.5, 10, 48.5),
(188, 2, 2, 'Fraise', 5.5, 11, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515211919', 'Comptant à la livraison', '2024-05-15 20:19:19', 38.5, 10, 48.5),
(189, 2, 3, 'Fraise', 5.5, 16.5, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240515211919', 'Comptant à la livraison', '2024-05-15 20:19:19', 38.5, 10, 48.5),
(190, 3, 4, 'tomate', 9, 36, 'mohsen', '93709987', 'rue ebn akhil  gafsa, gafsa', 'CMD20240516143344', 'Comptant à la livraison', '2024-05-16 13:33:44', 45.5, 5, 50.5),
(191, 3, 2, 'orange', 2, 4, 'mohsen', '93709987', 'rue ebn akhil  gafsa, gafsa', 'CMD20240516143344', 'Comptant à la livraison', '2024-05-16 13:33:44', 45.5, 5, 50.5),
(192, 3, 1, 'della', 5.5, 5.5, 'mohsen', '93709987', 'rue ebn akhil  gafsa, gafsa', 'CMD20240516143344', 'Comptant à la livraison', '2024-05-16 13:33:44', 45.5, 5, 50.5),
(193, 2, 4, 'fraise', 4, 16, 'emna', '93709987', 'zaroug, bouzed', 'CMD20240516220210', 'Comptant à la livraison', '2024-05-16 21:02:10', 224, 10, 234),
(194, 2, 4, 'large veggiebox', 52, 208, 'emna', '93709987', 'zaroug, bouzed', 'CMD20240516220210', 'Comptant à la livraison', '2024-05-16 21:02:10', 224, 10, 234),
(195, 2, 1, 'large veggiebox', 52, 52, 'emna', '+21652086967', 'zaroug, kef', 'CMD20240518130757', 'Comptant à la livraison', '2024-05-18 12:07:57', 52, 10, 62),
(196, 2, 1, ' medium  fruit-box', 35, 35, 'emna', '+21652086967', '8888, kef', 'CMD20240518210629', 'Comptant à la livraison', '2024-05-18 20:06:29', 35, 10, 45),
(197, 2, 1, 'Small Box personnaliser', 21, 21, 'emna', '+21652086967', '8888, kef', 'CMD20240518221940', 'Comptant à la livraison', '2024-05-18 21:19:40', 21, 10, 31),
(198, 2, 1, 'Small Box personnaliser', 21, 21, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5),
(199, 2, 1, 'tomate', 75, 75, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5),
(200, 2, 1, 'tomate', 75, 75, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5),
(201, 2, 1, 'della', 5.5, 5.5, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5),
(202, 2, 1, 'della', 5.5, 5.5, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5),
(203, 2, 1, 'della', 5.5, 5.5, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5),
(204, 2, 1, 'orange', 2, 2, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5),
(205, 2, 1, 'orange', 2, 2, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5),
(206, 2, 1, 'orange', 2, 2, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5),
(207, 2, 1, 'orange', 2, 2, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5),
(208, 2, 1, 'orange', 2, 2, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5),
(209, 2, 1, 'orange', 2, 2, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5),
(210, 2, 1, 'della', 5.5, 5.5, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5),
(211, 2, 1, 'della', 5.5, 5.5, 'emna', '+21652086967', '8888, kef', 'CMD20240519211110', 'Comptant à la livraison', '2024-05-19 20:11:10', 210.5, 5, 215.5);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commandee` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  `utilisateur_id` int(11) DEFAULT NULL,
  `quantite` int(11) DEFAULT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `prixParKilo` decimal(10,2) DEFAULT NULL,
  `prix_total` decimal(10,2) DEFAULT NULL,
  `nomUtilisateur` varchar(255) DEFAULT NULL,
  `numeroUtilisateur` varchar(20) DEFAULT NULL,
  `adresseUtilisateur` varchar(255) DEFAULT NULL,
  `referenceCommande` varchar(50) DEFAULT NULL,
  `moyenPaiement` varchar(50) DEFAULT NULL,
  `dateCommande` timestamp NOT NULL DEFAULT current_timestamp(),
  `subtotal` decimal(10,2) NOT NULL,
  `frais_livraison` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commandee`, `id_commande`, `utilisateur_id`, `quantite`, `titre`, `prixParKilo`, `prix_total`, `nomUtilisateur`, `numeroUtilisateur`, `adresseUtilisateur`, `referenceCommande`, `moyenPaiement`, `dateCommande`, `subtotal`, `frais_livraison`, `total`) VALUES
(413, 2, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413195758', 'Comptant à la livraison', '2024-04-13 18:57:58', 0.00, 0.00, 0.00),
(414, 2, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413195758', 'Comptant à la livraison', '2024-04-13 18:57:58', 0.00, 0.00, 0.00),
(415, 2, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413195758', 'Comptant à la livraison', '2024-04-13 18:57:58', 0.00, 0.00, 0.00),
(416, 2, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413195758', 'Comptant à la livraison', '2024-04-13 18:57:58', 0.00, 0.00, 0.00),
(417, 2, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413195758', 'Comptant à la livraison', '2024-04-13 18:57:58', 0.00, 0.00, 0.00),
(418, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200046', 'Comptant à la livraison', '2024-04-13 19:00:46', 0.00, 0.00, 0.00),
(419, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200046', 'Comptant à la livraison', '2024-04-13 19:00:46', 0.00, 0.00, 0.00),
(420, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200046', 'Comptant à la livraison', '2024-04-13 19:00:46', 0.00, 0.00, 0.00),
(421, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200046', 'Comptant à la livraison', '2024-04-13 19:00:46', 0.00, 0.00, 0.00),
(422, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200046', 'Comptant à la livraison', '2024-04-13 19:00:46', 0.00, 0.00, 0.00),
(423, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200551', 'Comptant à la livraison', '2024-04-13 19:05:51', 0.00, 0.00, 0.00),
(424, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200551', 'Comptant à la livraison', '2024-04-13 19:05:51', 0.00, 0.00, 0.00),
(425, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200551', 'Comptant à la livraison', '2024-04-13 19:05:51', 0.00, 0.00, 0.00),
(426, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200551', 'Comptant à la livraison', '2024-04-13 19:05:51', 0.00, 0.00, 0.00),
(427, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200551', 'Comptant à la livraison', '2024-04-13 19:05:51', 0.00, 0.00, 0.00),
(428, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200727', 'Comptant à la livraison', '2024-04-13 19:07:27', 0.00, 0.00, 0.00),
(429, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200727', 'Comptant à la livraison', '2024-04-13 19:07:27', 0.00, 0.00, 0.00),
(430, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200727', 'Comptant à la livraison', '2024-04-13 19:07:27', 0.00, 0.00, 0.00),
(431, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200727', 'Comptant à la livraison', '2024-04-13 19:07:27', 0.00, 0.00, 0.00),
(432, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413200727', 'Comptant à la livraison', '2024-04-13 19:07:27', 0.00, 0.00, 0.00),
(433, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413202547', 'Comptant à la livraison', '2024-04-13 19:25:47', 0.00, 0.00, 0.00),
(434, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413202547', 'Comptant à la livraison', '2024-04-13 19:25:47', 0.00, 0.00, 0.00),
(435, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413202547', 'Comptant à la livraison', '2024-04-13 19:25:47', 0.00, 0.00, 0.00),
(436, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413202547', 'Comptant à la livraison', '2024-04-13 19:25:47', 0.00, 0.00, 0.00),
(437, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413202547', 'Comptant à la livraison', '2024-04-13 19:25:47', 0.00, 0.00, 0.00),
(438, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413203411', 'Comptant à la livraison', '2024-04-13 19:34:11', 0.00, 0.00, 0.00),
(439, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413203411', 'Comptant à la livraison', '2024-04-13 19:34:11', 0.00, 0.00, 0.00),
(440, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413203411', 'Comptant à la livraison', '2024-04-13 19:34:11', 0.00, 0.00, 0.00),
(441, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413203411', 'Comptant à la livraison', '2024-04-13 19:34:11', 0.00, 0.00, 0.00),
(442, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413203411', 'Comptant à la livraison', '2024-04-13 19:34:11', 0.00, 0.00, 0.00),
(443, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413204636', 'Comptant à la livraison', '2024-04-13 19:46:36', 0.00, 0.00, 0.00),
(444, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413204636', 'Comptant à la livraison', '2024-04-13 19:46:36', 0.00, 0.00, 0.00),
(445, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413204636', 'Comptant à la livraison', '2024-04-13 19:46:36', 0.00, 0.00, 0.00),
(446, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413204636', 'Comptant à la livraison', '2024-04-13 19:46:36', 0.00, 0.00, 0.00),
(447, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413204636', 'Comptant à la livraison', '2024-04-13 19:46:36', 0.00, 0.00, 0.00),
(448, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413205315', 'Comptant à la livraison', '2024-04-13 19:53:15', 0.00, 0.00, 0.00),
(449, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413205315', 'Comptant à la livraison', '2024-04-13 19:53:15', 0.00, 0.00, 0.00),
(450, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413205315', 'Comptant à la livraison', '2024-04-13 19:53:15', 0.00, 0.00, 0.00),
(451, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413205315', 'Comptant à la livraison', '2024-04-13 19:53:15', 0.00, 0.00, 0.00),
(452, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413205315', 'Comptant à la livraison', '2024-04-13 19:53:15', 0.00, 0.00, 0.00),
(453, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413210038', 'Comptant à la livraison', '2024-04-13 20:00:38', 0.00, 0.00, 0.00),
(454, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413210038', 'Comptant à la livraison', '2024-04-13 20:00:38', 0.00, 0.00, 0.00),
(455, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413210038', 'Comptant à la livraison', '2024-04-13 20:00:38', 0.00, 0.00, 0.00),
(456, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413210038', 'Comptant à la livraison', '2024-04-13 20:00:38', 0.00, 0.00, 0.00),
(457, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413210038', 'Comptant à la livraison', '2024-04-13 20:00:38', 0.00, 0.00, 0.00),
(458, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413210921', 'Comptant à la livraison', '2024-04-13 20:09:21', 0.00, 0.00, 0.00),
(459, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413210921', 'Comptant à la livraison', '2024-04-13 20:09:21', 0.00, 0.00, 0.00),
(460, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413210921', 'Comptant à la livraison', '2024-04-13 20:09:21', 0.00, 0.00, 0.00),
(461, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413210921', 'Comptant à la livraison', '2024-04-13 20:09:21', 0.00, 0.00, 0.00),
(462, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413210921', 'Comptant à la livraison', '2024-04-13 20:09:21', 0.00, 0.00, 0.00),
(463, 2, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211005', 'Comptant à la livraison', '2024-04-13 20:10:05', 0.00, 0.00, 0.00),
(464, 2, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211005', 'Comptant à la livraison', '2024-04-13 20:10:05', 0.00, 0.00, 0.00),
(465, 2, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211005', 'Comptant à la livraison', '2024-04-13 20:10:05', 0.00, 0.00, 0.00),
(466, 2, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211005', 'Comptant à la livraison', '2024-04-13 20:10:05', 0.00, 0.00, 0.00),
(467, 2, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211005', 'Comptant à la livraison', '2024-04-13 20:10:05', 0.00, 0.00, 0.00),
(468, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211441', 'Comptant à la livraison', '2024-04-13 20:14:41', 0.00, 0.00, 0.00),
(469, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211441', 'Comptant à la livraison', '2024-04-13 20:14:41', 0.00, 0.00, 0.00),
(470, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211614', 'Comptant à la livraison', '2024-04-13 20:16:14', 0.00, 0.00, 0.00),
(471, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211614', 'Comptant à la livraison', '2024-04-13 20:16:14', 0.00, 0.00, 0.00),
(472, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211614', 'Comptant à la livraison', '2024-04-13 20:16:14', 0.00, 0.00, 0.00),
(473, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211614', 'Comptant à la livraison', '2024-04-13 20:16:14', 0.00, 0.00, 0.00),
(474, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211614', 'Comptant à la livraison', '2024-04-13 20:16:14', 0.00, 0.00, 0.00),
(475, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211716', 'Comptant à la livraison', '2024-04-13 20:17:16', 0.00, 0.00, 0.00),
(476, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211716', 'Comptant à la livraison', '2024-04-13 20:17:16', 0.00, 0.00, 0.00),
(477, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211716', 'Comptant à la livraison', '2024-04-13 20:17:16', 0.00, 0.00, 0.00),
(478, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211716', 'Comptant à la livraison', '2024-04-13 20:17:16', 0.00, 0.00, 0.00),
(479, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211716', 'Comptant à la livraison', '2024-04-13 20:17:16', 0.00, 0.00, 0.00),
(480, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211803', 'Comptant à la livraison', '2024-04-13 20:18:03', 0.00, 0.00, 0.00),
(481, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211803', 'Comptant à la livraison', '2024-04-13 20:18:03', 0.00, 0.00, 0.00),
(482, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211803', 'Comptant à la livraison', '2024-04-13 20:18:03', 0.00, 0.00, 0.00),
(483, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211803', 'Comptant à la livraison', '2024-04-13 20:18:03', 0.00, 0.00, 0.00),
(484, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211803', 'Comptant à la livraison', '2024-04-13 20:18:03', 0.00, 0.00, 0.00),
(485, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211924', 'Comptant à la livraison', '2024-04-13 20:19:24', 0.00, 0.00, 0.00),
(486, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211924', 'Comptant à la livraison', '2024-04-13 20:19:24', 0.00, 0.00, 0.00),
(487, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211924', 'Comptant à la livraison', '2024-04-13 20:19:24', 0.00, 0.00, 0.00),
(488, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211924', 'Comptant à la livraison', '2024-04-13 20:19:24', 0.00, 0.00, 0.00),
(489, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240413211924', 'Comptant à la livraison', '2024-04-13 20:19:24', 0.00, 0.00, 0.00),
(490, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414113624', 'Comptant à la livraison', '2024-04-14 10:36:24', 0.00, 0.00, 0.00),
(491, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414113624', 'Comptant à la livraison', '2024-04-14 10:36:24', 0.00, 0.00, 0.00),
(492, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414113624', 'Comptant à la livraison', '2024-04-14 10:36:24', 0.00, 0.00, 0.00),
(493, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414113624', 'Comptant à la livraison', '2024-04-14 10:36:24', 0.00, 0.00, 0.00),
(494, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414113624', 'Comptant à la livraison', '2024-04-14 10:36:24', 0.00, 0.00, 0.00),
(495, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414115936', 'Comptant à la livraison', '2024-04-14 10:59:36', 0.00, 0.00, 0.00),
(496, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414115936', 'Comptant à la livraison', '2024-04-14 10:59:36', 0.00, 0.00, 0.00),
(497, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414115936', 'Comptant à la livraison', '2024-04-14 10:59:36', 0.00, 0.00, 0.00),
(498, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414115936', 'Comptant à la livraison', '2024-04-14 10:59:36', 0.00, 0.00, 0.00),
(499, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414115936', 'Comptant à la livraison', '2024-04-14 10:59:36', 0.00, 0.00, 0.00),
(500, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414120621', 'Comptant à la livraison', '2024-04-14 11:06:21', 0.00, 0.00, 0.00),
(501, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414120621', 'Comptant à la livraison', '2024-04-14 11:06:21', 0.00, 0.00, 0.00),
(502, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414120621', 'Comptant à la livraison', '2024-04-14 11:06:21', 0.00, 0.00, 0.00),
(503, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414120621', 'Comptant à la livraison', '2024-04-14 11:06:21', 0.00, 0.00, 0.00),
(504, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414120621', 'Comptant à la livraison', '2024-04-14 11:06:21', 0.00, 0.00, 0.00),
(505, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121354', 'Comptant à la livraison', '2024-04-14 11:13:54', 0.00, 0.00, 0.00),
(506, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121354', 'Comptant à la livraison', '2024-04-14 11:13:54', 0.00, 0.00, 0.00),
(507, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121354', 'Comptant à la livraison', '2024-04-14 11:13:54', 0.00, 0.00, 0.00),
(508, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121354', 'Comptant à la livraison', '2024-04-14 11:13:54', 0.00, 0.00, 0.00),
(509, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121354', 'Comptant à la livraison', '2024-04-14 11:13:54', 0.00, 0.00, 0.00),
(510, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121509', 'Comptant à la livraison', '2024-04-14 11:15:09', 0.00, 0.00, 0.00),
(511, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121509', 'Comptant à la livraison', '2024-04-14 11:15:09', 0.00, 0.00, 0.00),
(512, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121509', 'Comptant à la livraison', '2024-04-14 11:15:09', 0.00, 0.00, 0.00),
(513, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121509', 'Comptant à la livraison', '2024-04-14 11:15:09', 0.00, 0.00, 0.00),
(514, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121509', 'Comptant à la livraison', '2024-04-14 11:15:09', 0.00, 0.00, 0.00),
(515, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121904', 'Comptant à la livraison', '2024-04-14 11:19:04', 0.00, 0.00, 0.00),
(516, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121904', 'Comptant à la livraison', '2024-04-14 11:19:04', 0.00, 0.00, 0.00),
(517, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121904', 'Comptant à la livraison', '2024-04-14 11:19:04', 0.00, 0.00, 0.00),
(518, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121904', 'Comptant à la livraison', '2024-04-14 11:19:04', 0.00, 0.00, 0.00),
(519, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414121904', 'Comptant à la livraison', '2024-04-14 11:19:04', 0.00, 0.00, 0.00),
(520, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122032', 'Comptant à la livraison', '2024-04-14 11:20:32', 0.00, 0.00, 0.00),
(521, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122032', 'Comptant à la livraison', '2024-04-14 11:20:32', 0.00, 0.00, 0.00),
(522, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122032', 'Comptant à la livraison', '2024-04-14 11:20:32', 0.00, 0.00, 0.00),
(523, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122032', 'Comptant à la livraison', '2024-04-14 11:20:32', 0.00, 0.00, 0.00),
(524, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122032', 'Comptant à la livraison', '2024-04-14 11:20:32', 0.00, 0.00, 0.00),
(525, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122435', 'Comptant à la livraison', '2024-04-14 11:24:35', 0.00, 0.00, 0.00),
(526, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122435', 'Comptant à la livraison', '2024-04-14 11:24:35', 0.00, 0.00, 0.00),
(527, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122435', 'Comptant à la livraison', '2024-04-14 11:24:35', 0.00, 0.00, 0.00),
(528, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122435', 'Comptant à la livraison', '2024-04-14 11:24:35', 0.00, 0.00, 0.00),
(529, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122435', 'Comptant à la livraison', '2024-04-14 11:24:35', 0.00, 0.00, 0.00),
(530, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122829', 'Comptant à la livraison', '2024-04-14 11:28:29', 0.00, 0.00, 0.00),
(531, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122829', 'Comptant à la livraison', '2024-04-14 11:28:29', 0.00, 0.00, 0.00),
(532, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122829', 'Comptant à la livraison', '2024-04-14 11:28:29', 0.00, 0.00, 0.00),
(533, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122829', 'Comptant à la livraison', '2024-04-14 11:28:29', 0.00, 0.00, 0.00),
(534, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414122829', 'Comptant à la livraison', '2024-04-14 11:28:29', 0.00, 0.00, 0.00),
(535, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414123036', 'Comptant à la livraison', '2024-04-14 11:30:36', 0.00, 0.00, 0.00),
(536, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414123036', 'Comptant à la livraison', '2024-04-14 11:30:36', 0.00, 0.00, 0.00),
(537, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414123036', 'Comptant à la livraison', '2024-04-14 11:30:36', 0.00, 0.00, 0.00),
(538, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414123036', 'Comptant à la livraison', '2024-04-14 11:30:36', 0.00, 0.00, 0.00),
(539, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414123036', 'Comptant à la livraison', '2024-04-14 11:30:36', 0.00, 0.00, 0.00),
(540, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414123742', 'Comptant à la livraison', '2024-04-14 11:37:42', 0.00, 0.00, 0.00),
(541, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414123742', 'Comptant à la livraison', '2024-04-14 11:37:42', 0.00, 0.00, 0.00),
(542, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414123742', 'Comptant à la livraison', '2024-04-14 11:37:42', 0.00, 0.00, 0.00),
(543, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414123742', 'Comptant à la livraison', '2024-04-14 11:37:42', 0.00, 0.00, 0.00),
(544, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414123742', 'Comptant à la livraison', '2024-04-14 11:37:42', 0.00, 0.00, 0.00),
(545, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414193201', 'Comptant à la livraison', '2024-04-14 18:32:01', 0.00, 0.00, 0.00),
(546, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414193201', 'Comptant à la livraison', '2024-04-14 18:32:01', 0.00, 0.00, 0.00),
(547, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414193201', 'Comptant à la livraison', '2024-04-14 18:32:01', 0.00, 0.00, 0.00),
(548, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414193201', 'Comptant à la livraison', '2024-04-14 18:32:01', 0.00, 0.00, 0.00),
(549, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414193201', 'Comptant à la livraison', '2024-04-14 18:32:01', 0.00, 0.00, 0.00),
(550, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414193644', 'Comptant à la livraison', '2024-04-14 18:36:44', 0.00, 0.00, 0.00),
(551, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414193644', 'Comptant à la livraison', '2024-04-14 18:36:44', 0.00, 0.00, 0.00),
(552, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414193644', 'Comptant à la livraison', '2024-04-14 18:36:44', 0.00, 0.00, 0.00),
(553, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414193644', 'Comptant à la livraison', '2024-04-14 18:36:44', 0.00, 0.00, 0.00),
(554, 1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414193644', 'Comptant à la livraison', '2024-04-14 18:36:44', 0.00, 0.00, 0.00),
(555, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414200056', 'Comptant à la livraison', '2024-04-14 19:00:56', 0.00, 0.00, 0.00),
(556, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414200423', 'Comptant à la livraison', '2024-04-14 19:04:23', 0.00, 0.00, 0.00),
(557, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414200836', 'Comptant à la livraison', '2024-04-14 19:08:36', 0.00, 0.00, 0.00),
(558, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414205920', 'Comptant à la livraison', '2024-04-14 19:59:20', 45.00, 5.00, 50.00),
(559, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414205920', 'Comptant à la livraison', '2024-04-14 19:59:20', 45.00, 5.00, 50.00),
(560, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414205920', 'Comptant à la livraison', '2024-04-14 19:59:20', 45.00, 5.00, 50.00),
(561, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414205920', 'Comptant à la livraison', '2024-04-14 19:59:20', 45.00, 5.00, 50.00),
(562, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414205920', 'Comptant à la livraison', '2024-04-14 19:59:20', 45.00, 5.00, 50.00),
(563, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414210320', 'Comptant à la livraison', '2024-04-14 20:03:20', 45.00, 5.00, 50.00),
(564, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414210320', 'Comptant à la livraison', '2024-04-14 20:03:20', 45.00, 5.00, 50.00),
(565, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414210320', 'Comptant à la livraison', '2024-04-14 20:03:20', 45.00, 5.00, 50.00),
(566, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414210320', 'Comptant à la livraison', '2024-04-14 20:03:20', 45.00, 5.00, 50.00),
(567, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414210320', 'Comptant à la livraison', '2024-04-14 20:03:20', 45.00, 5.00, 50.00),
(568, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414210640', 'Comptant à la livraison', '2024-04-14 20:06:40', 45.00, 10.00, 55.00),
(569, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414210640', 'Comptant à la livraison', '2024-04-14 20:06:40', 45.00, 10.00, 55.00),
(570, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414210640', 'Comptant à la livraison', '2024-04-14 20:06:40', 45.00, 10.00, 55.00),
(571, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414210640', 'Comptant à la livraison', '2024-04-14 20:06:40', 45.00, 10.00, 55.00),
(572, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414210640', 'Comptant à la livraison', '2024-04-14 20:06:40', 45.00, 10.00, 55.00),
(573, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211047', 'Comptant à la livraison', '2024-04-14 20:10:47', 45.00, 5.00, 50.00),
(574, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211047', 'Comptant à la livraison', '2024-04-14 20:10:47', 45.00, 5.00, 50.00),
(575, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211047', 'Comptant à la livraison', '2024-04-14 20:10:47', 45.00, 5.00, 50.00),
(576, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211047', 'Comptant à la livraison', '2024-04-14 20:10:47', 45.00, 5.00, 50.00),
(577, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211047', 'Comptant à la livraison', '2024-04-14 20:10:47', 45.00, 5.00, 50.00),
(578, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211611', 'Comptant à la livraison', '2024-04-14 20:16:11', 45.00, 5.00, 50.00),
(579, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211611', 'Comptant à la livraison', '2024-04-14 20:16:11', 45.00, 5.00, 50.00),
(580, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211611', 'Comptant à la livraison', '2024-04-14 20:16:11', 45.00, 5.00, 50.00),
(581, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211611', 'Comptant à la livraison', '2024-04-14 20:16:11', 45.00, 5.00, 50.00),
(582, 0, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211611', 'Comptant à la livraison', '2024-04-14 20:16:11', 45.00, 5.00, 50.00);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` int(11) NOT NULL,
  `titre` varchar(225) NOT NULL,
  `minititre` varchar(225) NOT NULL,
  `prixParKilo` double NOT NULL,
  `lienThumbnail` varchar(225) NOT NULL,
  `type` varchar(225) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `titre`, `minititre`, `prixParKilo`, `lienThumbnail`, `type`, `details`) VALUES
(3, 'tomate', 'prix', 75, '/images/thumbnail/1712056407083-tomatoes.jpg', 'legumes', 'tomate '),
(5, 'orange', 'prix', 2, '/images/thumbnail/1714684160829-Punch aux fruits sans alcool.png', 'fruits', ''),
(6, 'Poivre', 'prix', 3, '/images/thumbnail/1714684261074-Large Green Bell Peppers.png', 'legumes', ''),
(16, 'MixBox small', 'prix de Box ', 37, '/images/thumbnail/1715547139545-tÃ©lÃ©chargement (17).jpg', 'mixbox', 'Mixte de  fruits et légumes de saison:\n.Tomate 1 kg. Piment MESKI 500 g. Oignon 1Kg .Pommes de Terre 1 Kg .Citron 300g .Carotte 500 g . Concombre 500 g .Courgette 500g .Aubergine 500g .Ail 2  têtes. Persil 1 botte.\nBanane 1 Kg.Raisin 1 Kg.Kiwi 4 Pcs\n.Approximativement 8Kg'),
(17, 'MixBox Large', 'prix de Box ', 7.465, '/images/thumbnail/1715547319791-Kula Fields Produce.jpg', 'mixbox', 'Mixte de  fruits et légumes de saison:\n.Tomate 2 kg .Piment MESKI 1 Kg .Oignon 2Kg .Pommes de Terre 3 Kg .Citron 1 kg .Carotte 1kg. Concombre 1kg. Courgette 1kg. Aubergine 1kg. Ail 4 têtes .Persil 1 botte.\nBanane 1 Kg . Pêche plate 1kg . Melon 1pc . Kiwi 6 Pcs .Raisin 1kg .\nApproximativement 19.6Kg'),
(18, 'MixBox medium', 'prix de Box ', 56345, '/images/thumbnail/1715547374331-Happy colors.jpg', 'mixbox', 'Mixte de  fruits et légumes de saison:\n.Tomate 1 kg . Piment MESKI 1 Kg . Oignon  1 Kg . Pommes de Terre 2 Kg. Citron 500g. Carotte 500 g . Concombre 500 g .Courgette 500g . Aubergine 500g .Ail 4 têtes . Persil 1 botte . \nBanane 1 Kg . Pêche plate 1kg . Melon 1pc . Raisin 1kg . Kiwi 4 Pcs\n. Approximativement 14Kg'),
(21, 'medium box-personaliser', 'prix de Box ', 33300, '/images/thumbnail/1715547855306-tÃ©lÃ©chargement (18).jpg', 'box-personalise', '\nBox personnalisé - Fruits, fleurs et cerises:\n. Cerises fraîches : 2kg.\nFleurs fraîches assorties : 1 bouquet (roses, lys, ou autres fleurs de saison)'),
(22, 'large box-personaliser', 'prix de Box ', 70, '/images/thumbnail/1715547989813-tÃ©lÃ©chargement (21).jpg', 'box-personalise', 'Box personnalisé - Fruits, fleurs et fraises en chocolat:\nFraises  : 2kg  (environ 20-20 fraises)\nFraises enrobées de chocolat noir : 1 kg (environ 15-20 fraises)\nFleurs fraîches assorties : 1 bouquet (roses, lys, ou autres fleurs de saison)\nPoids total approximatif : 7-8 kg'),
(26, 'small veggiebox', 'prix de Box ', 21, '/images/thumbnail/1715548783954-Noah\'s Travel_ vegetables.jpg', 'legumesbox', 'Sélection de légumes de saison - Format small:\n.Tomate 1kg .Piment MESKI 500g.Oignon 1Kg .Pommes de Terre 1Kg.Concombre 500gCarotte .500gCourgette. 500gAubergine. 500gCitron. 500gAil. 2 têtesPersil. 1 botte\nApproximativement 6KG'),
(27, 'medium veggiebox', 'prix de Box ', 32, '/images/thumbnail/1715548819027-tÃ©lÃ©chargement (22).jpg', 'legumesbox', 'Une sélection de légumes essentiels\n.Tomate 1kg\n.Piment MESKI 1 kg\n.Oignon 1Kg\n.Pommes de Terre 2 Kg\n.Concombre  1 kg\n.Carotte 500 g\n.Aubergine 500g \n.Courgette 1kg\n.Citron 500 g\n.Ail 4 têtesPersil \n.1 botte\n\nApproximativement 9Kg\n'),
(29, 'large veggiebox', 'prix de Box ', 52, '/images/thumbnail/1715548914831-tÃ©lÃ©chargement (23).jpg', 'legumesbox', 'Sélection de légumes de saison - Format large:\n..Tomate 2kg .Piment MESKI 2kg. Oignon 2Kg . Pommes de Terre 3Kg . Concombre 2kg . Carotte 1kg. Courgette 1 kg . Aubergine 1kg. Citron 1kg . Ail 4 têtes . Persil 1 botte. \n .Approximativement 15.5kg'),
(30, 'small fruit-box', 'prix de Box ', 23, '/images/thumbnail/1715549113366-tÃ©lÃ©chargement (20).jpg', 'fruitsbox', 'Sélection de fruits de saison - Format small:\n.Banane 1kg. Pêche plate 1kg. Raisin 1kg .Kiwi 4 Pcs.\nApproximativement 3.4Kg'),
(31, ' large fruit-box', 'prix de Box ', 35, '/images/thumbnail/1715549141452-tÃ©lÃ©chargement (17).jpg', 'fruitsbox', 'Sélection de fruits de saison - Format large:\n. Banane 1kg. Pêche plate 1kg .Pomme 1kg.  Melon 1pc .Raisin 1kg . Kiwi 6 Pcs. Approximativement 7kg'),
(32, ' medium  fruit-box', 'prix de Box ', 35, '/images/thumbnail/1715549168216-tÃ©lÃ©chargement (15).jpg', 'fruitsbox', 'Sélection de fruits de saison - Format medium:\n.Banane 1 kg. Pêche plate 1kg. Raisin 1kg.Melon 1pc.Kiwi 4 Pcs.\nApproximativement 6kg'),
(34, ' medium  fruit-box', 'prix de Box ', 35, '/images/thumbnail/1715549199102-tÃ©lÃ©chargement (15).jpg', 'box', 'Sélection de fruits de saison - Format medium:\n.Banane 1 kg. Pêche plate 1kg. Raisin 1kg.Melon 1pc.Kiwi 4 Pcs.\nApproximativement 6kg'),
(35, 'small veggiebox', 'prix de Box ', 21, '/images/thumbnail/1715549404222-Noah\'s Travel_ vegetables.jpg', 'box', 'Sélection de légumes de saison - Format small:\n.Tomate 1kg .Piment MESKI 500g.Oignon 1Kg .Pommes de Terre 1Kg.Concombre 500gCarotte .500gCourgette. 500gAubergine. 500gCitron. 500gAil. 2 têtesPersil. 1 botte\nApproximativement 6KG'),
(36, 'Small Box personnaliser', 'prix de Box ', 21, '/images/thumbnail/1715549575444-tÃ©lÃ©chargement (24).jpg', 'box', 'Box personnalisé - Fruits, fraises en chocolat rose:\nFraises enrobées de chocolat blanc :   (environ 3-6 fraises)\nFraises enrobées de chocolat rose :  (environ 2 fraises)\nPoids total approximatif : 500g_1kg'),
(37, 'Small Box personnaliser', 'prix de Box ', 21, '/images/thumbnail/1715549586494-tÃ©lÃ©chargement (24).jpg', 'box-personalise', 'Box personnalisé - Fruits, fraises en chocolat rose:\nFraises enrobées de chocolat blanc :   (environ 3-6 fraises)\nFraises enrobées de chocolat rose :  (environ 2 fraises)\nPoids total approximatif : 500g_1kg'),
(38, 'large Box personnaliser', 'prix de Box ', 58.5, '/images/thumbnail/1715549698497-tÃ©lÃ©chargement (25).jpg', 'box', 'Box personnalisé - Fruits, fleurs et fraises en chocolat:\nFraises enrobées de chocolat blanc : 2kg  (environ 20-20 fraises)\nFraises enrobées de chocolat noir : 1000 kg (environ 15-20 fraises)\nFleurs fraîches assorties : 1 bouquet (roses, lys, ou autres fleurs de saison)\nPoids total approximatif : 7-8 kg'),
(39, 'large Box personnaliser', 'prix de Box ', 58, '/images/thumbnail/1715549710074-tÃ©lÃ©chargement (25).jpg', 'box-personalise', 'Box personnalisé - Fruits, fleurs et fraises en chocolat:\nFraises enrobées de chocolat blanc : 2kg  (environ 20-20 fraises)\nFraises enrobées de chocolat noir : 1000 kg (environ 15-20 fraises)\nFleurs fraîches assorties : 1 bouquet (roses, lys, ou autres fleurs de saison)\nPoids total approximatif : 7-8 kg'),
(43, 'della', 'prix', 5.5, '/images/thumbnail/1715866385650-Top 10 Helpful Remedies to Relieve the Headache Pain and Tension.jpg', 'fruits', '');

-- --------------------------------------------------------

--
-- Structure de la table `images_factures`
--

CREATE TABLE `images_factures` (
  `id` int(11) NOT NULL,
  `image_data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id` int(11) NOT NULL,
  `utilisateur_id` int(11) NOT NULL,
  `produit_id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `titre` varchar(225) NOT NULL,
  `prix_total` double NOT NULL,
  `lienThumbnail` varchar(225) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `commande_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id`, `utilisateur_id`, `produit_id`, `quantite`, `titre`, `prix_total`, `lienThumbnail`, `date_added`, `commande_id`) VALUES
(31, 3, 3, 4, 'tomate', 36, '/images/thumbnail/1712056407083-tomatoes.jpg', '0000-00-00 00:00:00', NULL),
(53, 4, 3, 1, 'tomate', 9, '/images/thumbnail/1712056407083-tomatoes.jpg', '2024-04-15 11:39:30', NULL),
(54, 4, 1, 8, 'aaaaemna', 72, '/images/thumbnail/1711889513143-La fraise, fruit rouge parfumÃ© - Accords de saveurs _ Julie Andrieu.jpg', '2024-04-15 11:39:48', NULL),
(89, 3, 5, 2, 'orange', 4, '/images/thumbnail/1714684160829-Punch aux fruits sans alcool.png', '2024-05-16 13:16:46', NULL),
(90, 3, 43, 1, 'della', 5.5, '/images/thumbnail/1715866385650-Top 10 Helpful Remedies to Relieve the Headache Pain and Tension.jpg', '2024-05-16 13:33:15', NULL),
(111, 2, 37, 1, 'Small Box personnaliser', 21, '/images/thumbnail/1715549586494-tÃ©lÃ©chargement (24).jpg', '2024-05-18 21:18:19', NULL),
(112, 2, 3, 1, 'tomate', 75, '/images/thumbnail/1712056407083-tomatoes.jpg', '2024-05-19 12:38:35', NULL),
(113, 2, 3, 1, 'tomate', 75, '/images/thumbnail/1712056407083-tomatoes.jpg', '2024-05-19 12:46:24', NULL),
(114, 2, 43, 1, 'della', 5.5, '/images/thumbnail/1715866385650-Top 10 Helpful Remedies to Relieve the Headache Pain and Tension.jpg', '2024-05-19 12:46:33', NULL),
(115, 2, 43, 1, 'della', 5.5, '/images/thumbnail/1715866385650-Top 10 Helpful Remedies to Relieve the Headache Pain and Tension.jpg', '2024-05-19 12:46:39', NULL),
(116, 2, 43, 1, 'della', 5.5, '/images/thumbnail/1715866385650-Top 10 Helpful Remedies to Relieve the Headache Pain and Tension.jpg', '2024-05-19 12:46:46', NULL),
(117, 2, 5, 1, 'orange', 2, '/images/thumbnail/1714684160829-Punch aux fruits sans alcool.png', '2024-05-19 12:49:07', NULL),
(118, 2, 5, 1, 'orange', 2, '/images/thumbnail/1714684160829-Punch aux fruits sans alcool.png', '2024-05-19 12:50:26', NULL),
(119, 2, 5, 1, 'orange', 2, '/images/thumbnail/1714684160829-Punch aux fruits sans alcool.png', '2024-05-19 12:50:38', NULL),
(120, 2, 5, 1, 'orange', 2, '/images/thumbnail/1714684160829-Punch aux fruits sans alcool.png', '2024-05-19 12:51:00', NULL),
(121, 2, 5, 1, 'orange', 2, '/images/thumbnail/1714684160829-Punch aux fruits sans alcool.png', '2024-05-19 12:51:36', NULL),
(122, 2, 5, 1, 'orange', 2, '/images/thumbnail/1714684160829-Punch aux fruits sans alcool.png', '2024-05-19 12:51:51', NULL),
(123, 2, 43, 1, 'della', 5.5, '/images/thumbnail/1715866385650-Top 10 Helpful Remedies to Relieve the Headache Pain and Tension.jpg', '2024-05-19 12:52:04', NULL),
(124, 2, 43, 1, 'della', 5.5, '/images/thumbnail/1715866385650-Top 10 Helpful Remedies to Relieve the Headache Pain and Tension.jpg', '2024-05-19 20:10:39', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reset_codes`
--

CREATE TABLE `reset_codes` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `code` varchar(225) NOT NULL,
  `expirationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reset_codes`
--

INSERT INTO `reset_codes` (`id`, `email`, `code`, `expirationDate`) VALUES
(1, 'dhraiefanes8@gmail.com', '8b643ce8e7', '2024-04-04 13:56:53'),
(2, 'abchoukfatma18@gmail.com', '565a5f0939', '2024-05-01 13:25:16'),
(3, 'abchoukfatma18@gmail.com', '44954bc26d', '2024-05-01 13:46:46'),
(4, 'abchoukfatma18@gmail.com', 'b55df06285', '2024-05-16 21:55:04'),
(5, 'abchoukfatma1a8@gmail.com', '07f3eee972', '2024-05-16 21:55:15'),
(6, 'abchoukfatma18@gmail.com', '70bfbf1f81', '2024-05-16 21:55:25'),
(7, 'abchoukfatma18@gmail.com', '6158f385a9', '2024-05-17 21:26:37'),
(8, 'abchoukfatma18@gmail.com', '68f991d0fc', '2024-05-17 21:26:38'),
(9, 'abchoukfatma18@gmail.com', '3df4e73a6b', '2024-05-17 21:35:02'),
(10, 'abchoukfatma18@gmail.com', '363fcce868', '2024-05-17 21:36:26'),
(11, 'abchoukfatma18@gmail.com', '1453579869', '2024-05-18 12:45:56'),
(12, 'abchoukfatma18@gmail.com', 'b624991f38', '2024-05-18 12:46:45'),
(13, 'abchoukfatma18@gmail.com', '25cb6a8b00', '2024-05-18 12:58:31'),
(14, 'abchoukfatma18@gmail.com', '8767f0ad35', '2024-05-18 12:59:19'),
(15, 'abchoukfatma18@gmail.com', '5abb3240a2', '2024-05-18 20:49:55'),
(16, 'abchoukfatma18@gmail.com', '272e4cec98', '2024-05-18 20:56:24'),
(17, 'abchoukfatma18@gmail.com', '147914d917', '2024-05-18 21:22:32'),
(18, 'abchoukfatma18@gmail.com', '1fc930f6bf', '2024-05-18 21:23:22'),
(19, 'abchoukfatma18@gmail.com', '314936c452', '2024-05-18 22:11:24'),
(20, 'abchoukfatma18@gmail.com', '70bbc2720a', '2024-05-18 22:12:11'),
(21, 'abchoukfatma18@gmail.com', '0ca431a7d4', '2024-05-19 13:08:17'),
(22, 'abchoukfatma18@gmail.com', 'f0a3b77bbc', '2024-05-19 13:09:50'),
(23, 'abchoukfatma18@gmail.com', 'd6a9461fe2', '2024-05-19 13:58:04');

-- --------------------------------------------------------

--
-- Structure de la table `utulisateurs`
--

CREATE TABLE `utulisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `Adress1` varchar(225) NOT NULL,
  `Adress2` varchar(225) NOT NULL,
  `zip` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utulisateurs`
--

INSERT INTO `utulisateurs` (`id`, `nom`, `email`, `password`, `phone`, `Adress1`, `Adress2`, `zip`) VALUES
(1, 'admin', 'admin1@gmail.com', '$2b$10$r8sA9OjWJfMy9ymFvJHK3Ow7soUe7y7.l7dhdieJtNdPUDKZJQKLy', '+21652086967', 'sousse', 'bouzed', '14704542'),
(2, 'emna', 'abchoukfatma18@gmail.com', '$2b$10$0Gsu8iBc7z9Q.4OQVfx5iuDdCy46LvdtfeQFOUDxeTbG3uF06q.my', '+21652086967', '8888', 'kef', '77777777'),
(3, 'mohsen', 'dhraiefanes8@gmail.com', '$2b$10$Pw6bMnEhr6KZSVk9m4.oN.F68KLqEa4t1Gmhem7MzFTlpNQqnsqtO', '93709987', 'rue ebn akhil  gafsa', 'gafsa', '123456'),
(4, 'hasna', 'hasna@gmail.com', '$2b$10$VxcEZ9bo8TJniEqd/GQ5BeYFQlvbaAOB52ZPLuvmqjvooFjR52Fo2', '+21652086967', 'rue ebn akhil  gafsa', 'gafsa', '565655'),
(5, 'admin', 'admin11@gmail.com', '$2b$10$bBnB2xTFtJqkoWwg3T0JpuNqAPd2K2wSYiGvycsYDKowGRs2k/Wku', '', '', '', ''),
(6, 'fotna', 'Fotna@gmail.com', '$2b$10$hGwXH3uz41tgmVcxJKfUcuUEjdZLG1QQEthC61Vi3NyQ17R6VxdCe', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `valider`
--

CREATE TABLE `valider` (
  `id` int(11) NOT NULL,
  `referenceCommande` varchar(255) DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `subtotal` double NOT NULL,
  `deliveryCost` double NOT NULL,
  `totalSum` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `valider`
--

INSERT INTO `valider` (`id`, `referenceCommande`, `id_utilisateur`, `subtotal`, `deliveryCost`, `totalSum`) VALUES
(110, 'CMD20240415123404', 2, 36, 5, 41),
(111, 'CMD20240415123606', 2, 36, 5, 41),
(112, 'CMD20240415123708', 2, 36, 5, 41),
(113, 'CMD20240415124038', 4, 81, 10, 91),
(114, 'CMD20240418194040', 2, 36, 10, 46),
(115, 'CMD20240418200657', 2, 36, 5, 41),
(116, 'CMD20240418200810', 2, 36, 5, 41),
(117, 'CMD20240418201630', 2, 36, 5, 41),
(118, 'CMD20240418202031', 2, 36, 5, 41),
(119, 'CMD20240418210044', 2, 36, 5, 41),
(120, 'CMD20240418210321', 2, 36, 5, 41),
(121, 'CMD20240418211518', 2, 36, 5, 41),
(122, 'CMD20240420113516', 2, 9, 5, 14),
(123, 'CMD20240420115212', 2, 9, 5, 14),
(124, 'CMD20240420123703', 2, 9, 10, 19),
(125, 'CMD20240420124101', 2, 9, 5, 14),
(126, 'CMD20240420124101', 2, 9, 5, 14),
(127, 'CMD20240420124429', 2, 9, 5, 14),
(128, 'CMD20240420124811', 2, 9, 5, 14),
(129, 'CMD20240420132831', 2, 9, 5, 14),
(130, 'CMD20240423201210', 2, 18, 5, 23),
(131, 'CMD20240423203051', 2, 18, 5, 23),
(132, 'CMD20240423203051', 2, 18, 5, 23),
(133, 'CMD20240424122835', 2, 18, 5, 23),
(134, 'CMD20240428122037', 2, 9, 5, 14),
(135, 'CMD20240428123013', 2, 81, 5, 86),
(136, 'CMD20240502214636', 2, 83, 5, 88),
(137, 'CMD20240502221444', 2, 9, 5, 14),
(138, 'CMD20240505134145', 2, 15, 10, 25),
(139, 'CMD20240509221929', 2, 21974, 10, 21984),
(140, 'CMD20240515133624', 2, 153727, 10, 153737),
(147, 'CMD20240516143344', 3, 45.5, 5, 50.5),
(148, 'CMD20240516220210', 2, 224, 10, 234),
(149, 'CMD20240518130757', 2, 52, 10, 62),
(150, 'CMD20240518210629', 2, 35, 10, 45),
(151, 'CMD20240518221940', 2, 21, 10, 31),
(152, 'CMD20240519211110', 2, 210.5, 5, 215.5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commaande`
--
ALTER TABLE `commaande`
  ADD PRIMARY KEY (`id_commande`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commandee`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `images_factures`
--
ALTER TABLE `images_factures`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateur_id` (`utilisateur_id`),
  ADD KEY `produit_id` (`produit_id`),
  ADD KEY `commande_id` (`commande_id`);

--
-- Index pour la table `reset_codes`
--
ALTER TABLE `reset_codes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utulisateurs`
--
ALTER TABLE `utulisateurs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `valider`
--
ALTER TABLE `valider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commaande`
--
ALTER TABLE `commaande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commandee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=583;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `images_factures`
--
ALTER TABLE `images_factures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT pour la table `reset_codes`
--
ALTER TABLE `reset_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `utulisateurs`
--
ALTER TABLE `utulisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `valider`
--
ALTER TABLE `valider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `panier_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utulisateurs` (`id`),
  ADD CONSTRAINT `panier_ibfk_2` FOREIGN KEY (`produit_id`) REFERENCES `cours` (`id`);

--
-- Contraintes pour la table `valider`
--
ALTER TABLE `valider`
  ADD CONSTRAINT `valider_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utulisateurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

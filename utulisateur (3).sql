-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 14 avr. 2024 à 22:38
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

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
  `prixParKilo` decimal(10,2) DEFAULT NULL,
  `prix_total` decimal(10,2) DEFAULT NULL,
  `nomUtilisateur` varchar(255) DEFAULT NULL,
  `numeroUtilisateur` varchar(20) DEFAULT NULL,
  `adresseUtilisateur` varchar(255) DEFAULT NULL,
  `referenceCommande` varchar(50) DEFAULT NULL,
  `moyenPaiement` varchar(50) DEFAULT NULL,
  `dateCommande` timestamp NOT NULL DEFAULT current_timestamp(),
  `subtotal` decimal(10,2) DEFAULT NULL,
  `frais_livraison` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commaande`
--

INSERT INTO `commaande` (`id_commande`, `utilisateur_id`, `quantite`, `titre`, `prixParKilo`, `prix_total`, `nomUtilisateur`, `numeroUtilisateur`, `adresseUtilisateur`, `referenceCommande`, `moyenPaiement`, `dateCommande`, `subtotal`, `frais_livraison`, `total`) VALUES
(1, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211813', 'Comptant à la livraison', '2024-04-14 20:18:13', 45.00, 5.00, 50.00),
(2, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211813', 'Comptant à la livraison', '2024-04-14 20:18:13', 45.00, 5.00, 50.00),
(3, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211813', 'Comptant à la livraison', '2024-04-14 20:18:13', 45.00, 5.00, 50.00),
(4, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211813', 'Comptant à la livraison', '2024-04-14 20:18:13', 45.00, 5.00, 50.00),
(5, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414211813', 'Comptant à la livraison', '2024-04-14 20:18:13', 45.00, 5.00, 50.00),
(6, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414212422', 'Comptant à la livraison', '2024-04-14 20:24:22', 45.00, 5.00, 50.00),
(7, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414212422', 'Comptant à la livraison', '2024-04-14 20:24:22', 45.00, 5.00, 50.00),
(8, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414212422', 'Comptant à la livraison', '2024-04-14 20:24:22', 45.00, 5.00, 50.00),
(9, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414212422', 'Comptant à la livraison', '2024-04-14 20:24:22', 45.00, 5.00, 50.00),
(10, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414212422', 'Comptant à la livraison', '2024-04-14 20:24:22', 45.00, 5.00, 50.00),
(11, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213045', 'Comptant à la livraison', '2024-04-14 20:30:45', 45.00, 5.00, 50.00),
(12, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213045', 'Comptant à la livraison', '2024-04-14 20:30:45', 45.00, 5.00, 50.00),
(13, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213045', 'Comptant à la livraison', '2024-04-14 20:30:45', 45.00, 5.00, 50.00),
(14, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213045', 'Comptant à la livraison', '2024-04-14 20:30:45', 45.00, 5.00, 50.00),
(15, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213045', 'Comptant à la livraison', '2024-04-14 20:30:45', 45.00, 5.00, 50.00),
(16, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213244', 'Comptant à la livraison', '2024-04-14 20:32:44', 36.00, 5.00, 41.00),
(17, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213244', 'Comptant à la livraison', '2024-04-14 20:32:44', 36.00, 5.00, 41.00),
(18, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213244', 'Comptant à la livraison', '2024-04-14 20:32:44', 36.00, 5.00, 41.00),
(19, 2, 1, 'tomate', 9.00, 9.00, 'emna', '+21652086967', 'tunis, tuniss', 'CMD20240414213244', 'Comptant à la livraison', '2024-04-14 20:32:44', 36.00, 5.00, 41.00);

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
  `prixParKilo` int(11) NOT NULL,
  `lienThumbnail` varchar(225) NOT NULL,
  `type` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `titre`, `minititre`, `prixParKilo`, `lienThumbnail`, `type`) VALUES
(1, 'aaaaemna', 'prix', 9, '/images/thumbnail/1711889513143-La fraise, fruit rouge parfumÃ© - Accords de saveurs _ Julie Andrieu.jpg', 'fruits'),
(2, 'tomate', 'prix', 9, '/images/thumbnail/1712056275666-Capture d\'Ã©cran 2024-02-13 130928.png', 'legumes'),
(3, 'tomate', 'prix', 9, '/images/thumbnail/1712056407083-tomatoes.jpg', 'legumes');

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
  `prix_total` decimal(10,0) NOT NULL,
  `lienThumbnail` varchar(225) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `commande_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id`, `utilisateur_id`, `produit_id`, `quantite`, `titre`, `prix_total`, `lienThumbnail`, `date_added`, `commande_id`) VALUES
(31, 3, 3, 4, 'tomate', 36, '/images/thumbnail/1712056407083-tomatoes.jpg', '0000-00-00 00:00:00', NULL),
(38, 2, 3, 1, 'tomate', 9, '/images/thumbnail/1712056407083-tomatoes.jpg', '0000-00-00 00:00:00', NULL),
(39, 2, 3, 1, 'tomate', 9, '/images/thumbnail/1712056407083-tomatoes.jpg', '0000-00-00 00:00:00', NULL),
(40, 2, 3, 1, 'tomate', 9, '/images/thumbnail/1712056407083-tomatoes.jpg', '0000-00-00 00:00:00', NULL),
(43, 2, 3, 1, 'tomate', 9, '/images/thumbnail/1712056407083-tomatoes.jpg', '0000-00-00 00:00:00', NULL);

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
(1, 'dhraiefanes8@gmail.com', '8b643ce8e7', '2024-04-04 13:56:53');

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
(2, 'emna', 'abchoukfatma18@gmail.com', '$2b$10$0Gsu8iBc7z9Q.4OQVfx5iuDdCy46LvdtfeQFOUDxeTbG3uF06q.my', '+21652086967', 'tunis', 'tuniss', '14704542'),
(3, 'mohsen', 'dhraiefanes8@gmail.com', '$2b$10$Pw6bMnEhr6KZSVk9m4.oN.F68KLqEa4t1Gmhem7MzFTlpNQqnsqtO', '93709987', 'rue ebn akhil  gafsa', 'gafsa', '123456');

-- --------------------------------------------------------

--
-- Structure de la table `valide`
--

CREATE TABLE `valide` (
  `id_valide` int(11) NOT NULL,
  `id_commande` int(11) DEFAULT NULL,
  `utilisateur_id` int(11) DEFAULT NULL,
  `prix_total` int(11) DEFAULT NULL,
  `frais` int(11) DEFAULT NULL,
  `sous_total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `valide`
--

INSERT INTO `valide` (`id_valide`, `id_commande`, `utilisateur_id`, `prix_total`, `frais`, `sous_total`) VALUES
(91, 1, 2, NULL, NULL, NULL),
(92, 1, 2, NULL, NULL, NULL),
(93, 1, 2, NULL, NULL, NULL),
(94, 1, 2, NULL, NULL, NULL),
(95, 1, 2, NULL, NULL, NULL),
(96, 1, 2, NULL, NULL, NULL),
(97, 1, 2, NULL, NULL, NULL),
(98, 1, 2, NULL, NULL, NULL),
(99, 2, 2, NULL, NULL, NULL),
(100, 2, 2, NULL, NULL, NULL),
(101, 2, 2, NULL, NULL, NULL),
(102, 2, 2, NULL, NULL, NULL),
(103, 2, 2, NULL, NULL, NULL),
(104, 2, 2, NULL, NULL, NULL),
(105, 2, 2, NULL, NULL, NULL),
(106, 2, 2, NULL, NULL, NULL),
(107, 0, 2, NULL, NULL, NULL),
(108, 0, 2, NULL, NULL, NULL),
(109, 0, 2, NULL, NULL, NULL),
(110, 0, 2, NULL, NULL, NULL),
(111, 0, 2, NULL, NULL, NULL),
(112, 0, 2, NULL, NULL, NULL),
(113, 0, 2, NULL, NULL, NULL),
(114, 0, 2, NULL, NULL, NULL),
(115, 0, 2, 77, 5, 72),
(116, 0, 2, NULL, NULL, NULL),
(117, 0, 2, NULL, NULL, NULL),
(118, 0, 2, NULL, NULL, NULL),
(119, 0, 2, NULL, NULL, NULL),
(120, 0, 2, NULL, NULL, NULL),
(121, 0, 2, NULL, NULL, NULL),
(122, 0, 2, NULL, NULL, NULL),
(123, 0, 2, NULL, NULL, NULL),
(124, 0, 2, NULL, NULL, NULL),
(125, 0, 2, NULL, NULL, NULL),
(126, 0, 2, NULL, NULL, NULL),
(127, 0, 2, NULL, NULL, NULL),
(128, 0, 2, NULL, NULL, NULL),
(129, 0, 2, NULL, NULL, NULL),
(130, 0, 2, NULL, NULL, NULL),
(131, 0, 2, NULL, NULL, NULL),
(132, 0, 2, NULL, NULL, NULL),
(133, 0, 2, NULL, NULL, NULL),
(134, 0, 2, NULL, NULL, NULL),
(135, 0, 2, NULL, NULL, NULL),
(136, 0, 2, NULL, NULL, NULL),
(137, 0, 2, NULL, NULL, NULL),
(138, 0, 2, NULL, NULL, NULL),
(139, 0, 2, NULL, NULL, NULL),
(140, 1, 2, NULL, NULL, NULL),
(141, 1, 2, NULL, NULL, NULL),
(142, 1, 2, NULL, NULL, NULL),
(143, 1, 2, NULL, NULL, NULL),
(144, 1, 2, NULL, NULL, NULL),
(145, 1, 2, NULL, NULL, NULL),
(146, 1, 2, NULL, NULL, NULL),
(147, 1, 2, NULL, NULL, NULL),
(148, 0, 2, NULL, NULL, NULL),
(149, 0, 2, NULL, NULL, NULL),
(150, 0, 2, NULL, NULL, NULL),
(151, 0, 2, NULL, NULL, NULL),
(152, 0, 2, NULL, NULL, NULL),
(153, 0, 2, NULL, NULL, NULL),
(154, 0, 2, NULL, NULL, NULL),
(155, 0, 2, NULL, NULL, NULL),
(156, 1, 2, NULL, NULL, NULL),
(157, 1, 2, NULL, NULL, NULL),
(158, 1, 2, NULL, NULL, NULL),
(159, 1, 2, NULL, NULL, NULL),
(160, 1, 2, NULL, NULL, NULL),
(161, 1, 2, NULL, NULL, NULL),
(162, 1, 2, NULL, NULL, NULL),
(163, 1, 2, NULL, NULL, NULL),
(164, NULL, NULL, 72, 5, 77),
(165, 0, 2, NULL, NULL, NULL),
(166, 0, 2, NULL, NULL, NULL),
(167, 0, 2, NULL, NULL, NULL),
(168, 0, 2, NULL, NULL, NULL),
(169, 0, 2, NULL, NULL, NULL),
(170, 0, 2, NULL, NULL, NULL),
(171, 0, 2, NULL, NULL, NULL),
(172, 0, 2, NULL, NULL, NULL),
(173, 0, 2, NULL, NULL, NULL),
(174, 0, 2, NULL, NULL, NULL),
(175, 0, 2, NULL, NULL, NULL),
(176, 0, 2, NULL, NULL, NULL),
(177, 0, 2, NULL, NULL, NULL),
(178, 0, 2, NULL, NULL, NULL),
(179, 0, 2, NULL, NULL, NULL),
(180, 0, 2, NULL, NULL, NULL),
(181, 0, 2, NULL, NULL, NULL),
(182, 0, 2, NULL, NULL, NULL),
(183, 0, 2, NULL, NULL, NULL),
(184, 0, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `valider`
--

CREATE TABLE `valider` (
  `id` int(11) NOT NULL,
  `referenceCommande` varchar(255) DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `deliveryCost` decimal(10,2) NOT NULL,
  `totalSum` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `valider`
--

INSERT INTO `valider` (`id`, `referenceCommande`, `id_utilisateur`, `subtotal`, `deliveryCost`, `totalSum`) VALUES
(61, 'CMD20240413195700', 2, 0.00, 0.00, 0.00),
(62, 'CMD20240413195758', 2, 0.00, 0.00, 0.00),
(63, 'CMD20240413200046', 2, 0.00, 0.00, 0.00),
(64, 'CMD20240413200551', 2, 0.00, 0.00, 0.00),
(65, 'CMD20240413200727', 2, 0.00, 0.00, 0.00),
(66, 'CMD20240413202547', 2, 0.00, 0.00, 0.00),
(67, 'CMD20240413204636', 2, 0.00, 0.00, 0.00),
(68, 'CMD20240413205315', 2, 0.00, 0.00, 0.00),
(69, 'CMD20240413210038', 2, 0.00, 0.00, 0.00),
(70, 'CMD20240413210038', 2, 0.00, 0.00, 0.00),
(71, 'CMD20240413210038', 2, 0.00, 0.00, 0.00),
(72, 'CMD20240413210921', 2, 0.00, 0.00, 0.00),
(73, 'CMD20240413210921', 2, 0.00, 0.00, 0.00),
(74, 'CMD20240413211005', 2, 0.00, 0.00, 0.00),
(75, NULL, 2, 0.00, 0.00, 0.00),
(76, 'CMD20240413211716', 2, 0.00, 0.00, 0.00),
(77, NULL, 2, 0.00, 0.00, 0.00),
(78, NULL, 2, 0.00, 0.00, 0.00),
(79, 'CMD20240413211924', 2, 0.00, 0.00, 0.00),
(80, 'CMD20240414113624', 2, 0.00, 0.00, 0.00),
(81, 'CMD20240414115936', 2, 0.00, 0.00, 0.00),
(82, 'CMD20240414120621', 2, 0.00, 0.00, 0.00),
(83, 'CMD20240414120621', 2, 0.00, 0.00, 0.00),
(84, 'CMD20240414120621', 2, 0.00, 0.00, 0.00),
(85, 'CMD20240414120621', 2, 0.00, 0.00, 0.00),
(86, 'CMD20240414120621', 2, 0.00, 0.00, 0.00),
(87, 'CMD20240414120621', 2, 0.00, 0.00, 0.00),
(88, 'CMD20240414122032', 2, 0.00, 0.00, 0.00),
(89, 'CMD20240414122032', 2, 0.00, 0.00, 0.00),
(90, 'CMD20240414122032', 2, 0.00, 0.00, 0.00),
(91, 'CMD20240414122032', 2, 0.00, 0.00, 0.00),
(92, 'CMD20240414122435', 2, 0.00, 0.00, 0.00),
(93, 'CMD20240414123742', 2, 0.00, 0.00, 0.00),
(94, 'CMD20240414193201', 2, 0.00, 0.00, 0.00),
(95, 'CMD20240414193201', 2, 0.00, 0.00, 0.00),
(96, 'CMD20240414193644', 2, 0.00, 0.00, 0.00),
(97, 'CMD20240414201043', 2, 0.00, 0.00, 0.00),
(98, 'CMD20240414201043', 2, 0.00, 0.00, 0.00),
(99, 'CMD20240414201043', 2, 0.00, 0.00, 0.00),
(100, 'CMD20240414201316', 2, 0.00, 0.00, 0.00),
(101, 'CMD20240414201640', 2, 0.00, 0.00, 0.00),
(102, 'CMD20240414201852', 2, 0.00, 0.00, 0.00),
(103, 'CMD20240414202139', 2, 0.00, 0.00, 0.00),
(104, 'CMD20240414202658', 2, 0.00, 0.00, 0.00),
(105, 'CMD20240414202735', 2, 0.00, 0.00, 0.00);

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
-- Index pour la table `valide`
--
ALTER TABLE `valide`
  ADD PRIMARY KEY (`id_valide`),
  ADD KEY `utilisateur_id` (`utilisateur_id`);

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
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commandee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=583;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `reset_codes`
--
ALTER TABLE `reset_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `utulisateurs`
--
ALTER TABLE `utulisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `valide`
--
ALTER TABLE `valide`
  MODIFY `id_valide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT pour la table `valider`
--
ALTER TABLE `valider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

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
-- Contraintes pour la table `valide`
--
ALTER TABLE `valide`
  ADD CONSTRAINT `valide_ibfk_1` FOREIGN KEY (`utilisateur_id`) REFERENCES `utulisateurs` (`id`);

--
-- Contraintes pour la table `valider`
--
ALTER TABLE `valider`
  ADD CONSTRAINT `valider_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utulisateurs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

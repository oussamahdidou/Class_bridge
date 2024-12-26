-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 19 juin 2023 à 18:32
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `organisation`
--

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE IF NOT EXISTS `cours` (
  `ID_COURS` int NOT NULL AUTO_INCREMENT,
  `NOM_MODULE` varchar(40) NOT NULL,
  `DESCRIPTION` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FILE_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `FILE_CHEMIN` varchar(40) NOT NULL,
  PRIMARY KEY (`ID_COURS`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `engagement`
--

DROP TABLE IF EXISTS `engagement`;
CREATE TABLE IF NOT EXISTS `engagement` (
  `ID_ENGAGEMENT` int NOT NULL AUTO_INCREMENT,
  `LA_DATE` datetime NOT NULL,
  `Description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ID_ETUDIANT` int NOT NULL,
  `Tache` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PRIVACY` varchar(40) NOT NULL,
  PRIMARY KEY (`ID_ENGAGEMENT`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `NOM_PRENOM` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `login` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pass` varchar(40) NOT NULL,
  `image_FILE` varchar(255) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `ID_ETUDIANT` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID_ETUDIANT`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `follow`
--

DROP TABLE IF EXISTS `follow`;
CREATE TABLE IF NOT EXISTS `follow` (
  `ID_FOLLOWING` int NOT NULL,
  `ID_FOLLOWERS` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `follow`
--

INSERT INTO `follow` (`ID_FOLLOWING`, `ID_FOLLOWERS`) VALUES
(9, 0),
(11, 0),
(9, 0),
(11, 0),
(14, 0),
(14, 0);

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `ID_PROJECT` int NOT NULL AUTO_INCREMENT,
  `NOM_MODULE` varchar(40) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `ID_ETUDIANT` int NOT NULL,
  `FILE_CHEMIN` varchar(255) NOT NULL,
  `FILE_NAME` int NOT NULL,
  PRIMARY KEY (`ID_PROJECT`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`ID_PROJECT`, `NOM_MODULE`, `DESCRIPTION`, `ID_ETUDIANT`, `FILE_CHEMIN`, `FILE_NAME`) VALUES
(7, 'Algorithmique et Complexite', 'le projet se base sur la creation d`un algorithme de gestion sur une entreprise de livraison ', 28, '../student/projects/RAPPORT CA.pdf', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

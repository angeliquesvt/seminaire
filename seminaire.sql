-- --------------------------------------------------------
-- Hôte :                        127.0.0.1
-- Version du serveur:           5.7.19 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour seminaire
DROP DATABASE IF EXISTS `seminaire`;
CREATE DATABASE IF NOT EXISTS `seminaire` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `seminaire`;

-- Export de la structure de la table seminaire. article
DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `id_flux` int(11) NOT NULL,
  `titre` varchar(64) DEFAULT NULL,
  `urlToImage` varchar(600) DEFAULT NULL,
  `url` varchar(600) DEFAULT NULL,
  `description` text,
  `author` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_article`),
  KEY `id_flux` (`id_flux`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table seminaire. categorie
DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_cat` int(11) NOT NULL AUTO_INCREMENT,
  `nom_cat` varchar(64) NOT NULL,
  PRIMARY KEY (`id_cat`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table seminaire. cat_flux
DROP TABLE IF EXISTS `cat_flux`;
CREATE TABLE IF NOT EXISTS `cat_flux` (
  `id_flux` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  PRIMARY KEY (`id_flux`,`id_cat`),
  KEY `id_flux` (`id_flux`,`id_cat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table seminaire. favori
DROP TABLE IF EXISTS `favori`;
CREATE TABLE IF NOT EXISTS `favori` (
  `id_article` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_article`,`id_user`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table seminaire. fav_mot_clef
DROP TABLE IF EXISTS `fav_mot_clef`;
CREATE TABLE IF NOT EXISTS `fav_mot_clef` (
  `id_favori` int(11) NOT NULL,
  `id_mot_clef` int(11) NOT NULL,
  PRIMARY KEY (`id_favori`,`id_mot_clef`),
  KEY `id_favori` (`id_favori`),
  KEY `id_mot_clef` (`id_mot_clef`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table seminaire. flux
DROP TABLE IF EXISTS `flux`;
CREATE TABLE IF NOT EXISTS `flux` (
  `id_flux` int(20) NOT NULL AUTO_INCREMENT,
  `titre` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `uri` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `langue` varchar(3) NOT NULL,
  PRIMARY KEY (`id_flux`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table seminaire. flux_user
DROP TABLE IF EXISTS `flux_user`;
CREATE TABLE IF NOT EXISTS `flux_user` (
  `id_flux` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_flux`,`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table seminaire. mot_clef
DROP TABLE IF EXISTS `mot_clef`;
CREATE TABLE IF NOT EXISTS `mot_clef` (
  `id_mot_clef` int(11) NOT NULL AUTO_INCREMENT,
  `mot_clef` varchar(64) NOT NULL,
  PRIMARY KEY (`id_mot_clef`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
-- Export de la structure de la table seminaire. user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `anniversary` varchar(32) NOT NULL,
  `sexe` varchar(6) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

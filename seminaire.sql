-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 13 Mars 2018 à 05:54
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `seminaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id_article` int(11) NOT NULL,
  `id_flux` int(11) NOT NULL,
  `titre` varchar(600) DEFAULT NULL,
  `urlToImage` text,
  `url` varchar(600) DEFAULT NULL,
  `description` text,
  `author` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id_article`, `id_flux`, `titre`, `urlToImage`, `url`, `description`, `author`) VALUES
(1, 1, 'Etudiante décédée d\'une otite : la vraie question est celle de l\'accès au spécialiste', '', 'https://www.pourquoidocteur.fr/Articles/Question-d-actu/24866-Etudiante-decedee-d-une-otite-question-l-acces-specialiste', NULL, NULL),
(2, 1, 'Les Français de plus en plus accros au grignotage', '', 'https://www.francetvinfo.fr/sante/alimentation/les-francais-de-plus-en-plus-accros-au-grignotage_2653510.html', '<table border="0" cellpadding="2" cellspacing="3"><tr><td><img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQF11uBUi9QCjIsN0uyVRlaKIOJbBv9-rGBzLX9XUjKdij5wbk_m8C2RvBt2nFkJOIJAS3gAx004-M" border="1"></td><td><ol style="list-style: none; margin: 0; padding: 0;"><strong><li><a href="https://www.francetvinfo.fr/sante/alimentation/les-francais-de-plus-en-plus-accros-au-grignotage_2653510.html" target="_blank">Les Français de plus en plus accros au grignotage</a>&nbsp;&nbsp;<font color="#6f6f6f">Franceinfo</font></li></strong><li><a href="http://www.lepoint.fr/sante/biscuits-apero-chocolat-le-grignotage-a-la-mode-chez-les-francais-12-03-2018-2201630_40.php" target="_blank">Biscuits, apéro, chocolat… le grignotage à la mode chez les Français</a>&nbsp;&nbsp;<font color="#6f6f6f">Le Point</font></li><li><a href="http://www.ohmymag.com/alimentation/cette-mauvaise-habitude-est-de-plus-en-plus-repandue_art116761.html" target="_blank">Selon une étude, on grignote de plus en plus entre les repas</a>&nbsp;&nbsp;<font color="#6f6f6f">Ohmymag</font></li><li><a href="https://www.pourquoidocteur.fr/Articles/Question-d-actu/24846-Biscuits-cafes-chocolat-4-francais-10-grignotent-repas-c-est-mauvais-poids-et-sante" target="_blank">Près de 4 français sur 10 grignotent entre les repas</a>&nbsp;&nbsp;<font color="#6f6f6f">Pourquoi Docteur ?</font></li><a href="https://news.google.com/story/dbMgny2gne5lYvMWkQER4K-3qMCHM?hl=fr&ned=fr" target="_blank">Full coverage</a></ol></td></tr></table>', NULL),
(3, 1, 'Berlinale : le jury célèbre les réalisatrices et salue le mouvement #MeToo', '', 'http://www.france24.com/fr/20180224-berlinale-palmares-femmes-realisatrices-metoo', 'Le jury du festival du film de Berlin a décerné, samedi, plusieurs prix majeurs à des femmes réalisatrices, ou à des films montrant des femmes fortes et indépendantes, alors que le monde du cinéma est secoué par des scandales d\'abus sexuels.  ', NULL),
(4, 1, 'Elle a un an et demi et est allergique à l\'eau', '', 'https://www.ouest-france.fr/leditiondusoir/data/20719/reader/reader.html?_escaped_fragment_=preferred/1/package/20719/pub/29713/page/8', '<table border="0" cellpadding="2" cellspacing="3"><tr><td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMQPd8Ol8FDuiSxVzIuFqz5G9DDHcbVM0yYGxSWAUiR0nFor8W6-X2P95ak2gBr1cGSnvP-uVLBg" border="1"></td><td><ol style="list-style: none; margin: 0; padding: 0;"><strong><li><a href="https://www.ouest-france.fr/leditiondusoir/data/20719/reader/reader.html?_escaped_fragment_=preferred/1/package/20719/pub/29713/page/8" target="_blank">Elle a un an et demi et est allergique à l\'eau</a>&nbsp;&nbsp;<font color="#6f6f6f">Ouest-France</font></li></strong><a href="https://news.google.com/story/da8Nl2pxWE2iBJM?hl=fr&ned=fr" target="_blank">Full coverage</a></ol></td></tr></table>', NULL),
(5, 1, 'Elle meurt d\'une otite compliquée malgré deux passages aux urgences : un cas très rare en France', '', 'https://www.pourquoidocteur.fr/Articles/Question-d-actu/24842-Lyon-decedee-d-une-otite-19-ans-passages-urgences', '<table border="0" cellpadding="2" cellspacing="3"><tr><td><img src="https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTWjiwAm147GxRvR2tRMxvE9hnSOOOp6WZEa6DmCTmNjRLgFiwUpKcdSjrqRJHckYgbeACWs2t1gq4" border="1"></td><td><ol style="list-style: none; margin: 0; padding: 0;"><strong><li><a href="https://www.pourquoidocteur.fr/Articles/Question-d-actu/24842-Lyon-decedee-d-une-otite-19-ans-passages-urgences" target="_blank">Elle meurt d\'une otite compliquée malgré deux passages aux urgences : un cas très rare en France</a>&nbsp;&nbsp;<font color="#6f6f6f">Pourquoi Docteur ?</font></li></strong><li><a href="http://www.europe1.fr/faits-divers/une-etudiante-meurt-dune-otite-malgre-deux-visites-aux-urgences-3596849" target="_blank">Une étudiante meurt d\'une otite malgré deux visites aux urgences</a>&nbsp;&nbsp;<font color="#6f6f6f">Europe1</font></li><li><a href="http://www.lyoncapitale.fr/Journal/Lyon/Actualite/Actualites/Sante/Lyon-apres-2-visites-aux-urgences-une-etudiante-decede-d-une-otite" target="_blank">Lyon : après 2 visites aux urgences, une étudiante décède d\'une otite</a>&nbsp;&nbsp;<font color="#6f6f6f">LyonCapitale.fr</font></li><a href="https://news.google.com/story/dpJ2OE6IZ5nxu6MJhlh2RYSQFURhM?hl=fr&ned=fr" target="_blank">Full coverage</a></ol></td></tr></table>', NULL),
(6, 1, 'Inde: Deux médecins suspendus après qu\'un patient a eu sa jambe amputée en guise d\'oreiller', '', 'https://www.20minutes.fr/monde/2235783-20180311-inde-deux-medecins-suspendus-apres-patient-jambe-amputee-guise-oreiller', '<table border="0" cellpadding="2" cellspacing="3"><tr><td><img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQpVL5ut87GXQPQTIF46HVio5VhDhT9VWJMH3y5KzwXUBfDlvp28xZ9qhtS9ftdnndzsyBPx0dhvg" border="1"></td><td><ol style="list-style: none; margin: 0; padding: 0;"><strong><li><a href="https://www.20minutes.fr/monde/2235783-20180311-inde-deux-medecins-suspendus-apres-patient-jambe-amputee-guise-oreiller" target="_blank">Inde: Deux médecins suspendus après qu\'un patient a eu sa jambe amputée en guise d\'oreiller</a>&nbsp;&nbsp;<font color="#6f6f6f">20minutes.fr</font></li></strong><li><a href="http://www.bfmtv.com/international/inde-deux-medecins-suspendus-pour-avoir-donne-a-un-patient-sa-jambe-amputee-comme-oreiller-1393429.html" target="_blank">Inde: deux médecins suspendus pour avoir donné à un patient sa jambe amputée comme oreiller</a>&nbsp;&nbsp;<font color="#6f6f6f">BFMTV.COM</font></li><li><a href="https://www.lexpress.fr/actualite/monde/asie/deux-medecins-suspendus-pour-avoir-utilise-la-jambe-d-un-ampute-comme-oreiller_1991496.html" target="_blank">Deux médecins suspendus pour avoir utilisé la jambe d\'un amputé comme oreiller</a>&nbsp;&nbsp;<font color="#6f6f6f">L\'Express</font></li><a href="https://news.google.com/story/d1r72daybFMiYmMn1yg_I1Lea_LRM?hl=fr&ned=fr" target="_blank">Full coverage</a></ol></td></tr></table>', NULL),
(7, 1, 'Elle meurt des suites d\'une otite : «un cas très rare» en France', '', 'http://www.leparisien.fr/societe/elle-meurt-des-suites-d-une-otite-un-cas-tres-rare-en-france-selon-un-specialiste-12-03-2018-7604514.php', '<table border="0" cellpadding="2" cellspacing="3"><tr><td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXdeZ4hzPUfv2ScGSNsJpFJRKhR_ZuAPeks-3ukAFlBVEAQRNHQXR8m9JCdQnfSS_p9yFjI9b_MyA" border="1"></td><td><ol style="list-style: none; margin: 0; padding: 0;"><strong><li><a href="http://www.leparisien.fr/societe/elle-meurt-des-suites-d-une-otite-un-cas-tres-rare-en-france-selon-un-specialiste-12-03-2018-7604514.php" target="_blank">Elle meurt des suites d\'une otite : «un cas très rare» en France</a>&nbsp;&nbsp;<font color="#6f6f6f">Le Parisien</font></li></strong><li><a href="http://www.europe1.fr/faits-divers/une-etudiante-meurt-dune-otite-malgre-deux-visites-aux-urgences-3596849" target="_blank">Une étudiante meurt d\'une otite malgré deux visites aux urgences</a>&nbsp;&nbsp;<font color="#6f6f6f">Europe1</font></li><li><a href="https://www.ladepeche.fr/article/2018/03/12/2758094-lyon-etudiante-meurt-otite-malgre-deux-visites-urgences.html" target="_blank">Lyon : une étudiante meurt d\'une otite malgré deux visites aux urgences</a>&nbsp;&nbsp;<font color="#6f6f6f">ladepeche.fr</font></li><a href="https://news.google.com/story/d1uqPI2V9NHgIzMJhlh2RYSQFURhM?hl=fr&ned=fr" target="_blank">Full coverage</a></ol></td></tr></table>', NULL),
(8, 1, 'Les français de plus en plus accros au grignotage', '', 'https://www.pourquoidocteur.fr/Articles/Question-d-actu/24846-Biscuits-cafes-chocolat-4-francais-10-grignotent-repas-c-est-mauvais-poids-et-sante', '<table border="0" cellpadding="2" cellspacing="3"><tr><td><img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQhDwutLhlVfgQSw0HzRsR2aNEKBcdxA1c2XdHa0NmkdB7FhJd8gvELfAVdwCrXAXQ4HXY1qnOJNlU" border="1"></td><td><ol style="list-style: none; margin: 0; padding: 0;"><strong><li><a href="https://www.pourquoidocteur.fr/Articles/Question-d-actu/24846-Biscuits-cafes-chocolat-4-francais-10-grignotent-repas-c-est-mauvais-poids-et-sante" target="_blank">Les français de plus en plus accros au grignotage</a>&nbsp;&nbsp;<font color="#6f6f6f">Pourquoi Docteur ?</font></li></strong><li><a href="http://www.ohmymag.com/alimentation/cette-mauvaise-habitude-est-de-plus-en-plus-repandue_art116761.html" target="_blank">Selon une étude, on grignote de plus en plus entre les repas</a>&nbsp;&nbsp;<font color="#6f6f6f">Ohmymag</font></li><li><a href="http://www.lepoint.fr/sante/biscuits-apero-chocolat-le-grignotage-a-la-mode-chez-les-francais-12-03-2018-2201630_40.php" target="_blank">Biscuits, apéro, chocolat… le grignotage à la mode chez les Français</a>&nbsp;&nbsp;<font color="#6f6f6f">Le Point</font></li><a href="https://news.google.com/story/dk1mwbrgoKP6z4MJcqnq43A2xvUuM?hl=fr&ned=fr" target="_blank">Full coverage</a></ol></td></tr></table>', NULL),
(9, 1, 'Les "anti-poux" tous efficaces à 100% ? Faux !', '', 'https://www.francetvinfo.fr/sante/enfant-ado/les-anti-poux-100-efficaces-faux_2653400.html', '<table border="0" cellpadding="2" cellspacing="3"><tr><td><img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQeE6JCGRoWubVwd1rQpMLEuK7awrLxdJwURwI_131IAeAzV2hFrhlheaK3ULdbeCuV6QrQuuIBHg" border="1"></td><td><ol style="list-style: none; margin: 0; padding: 0;"><strong><li><a href="https://www.francetvinfo.fr/sante/enfant-ado/les-anti-poux-100-efficaces-faux_2653400.html" target="_blank">Les "anti-poux" tous efficaces à 100% ? Faux !</a>&nbsp;&nbsp;<font color="#6f6f6f">Franceinfo</font></li></strong><li><a href="http://www.bfmtv.com/societe/quels-produits-choisir-pour-lutter-efficacement-contre-les-poux-1393878.html" target="_blank">Quels produits choisir pour lutter efficacement contre les poux?</a>&nbsp;&nbsp;<font color="#6f6f6f">BFMTV.COM</font></li><li><a href="https://fr.news.yahoo.com/poux-et-lentes-un-fl%C3%A9au-112505085.html" target="_blank">Poux et lentes : un fléau difficile à éradiquer</a>&nbsp;&nbsp;<font color="#6f6f6f">Yahoo Actualités</font></li><li><a href="http://www.leprogres.fr/france-monde/2018/03/12/poux-quelles-sont-les-methodes-qui-marchent-vraiment" target="_blank">Poux : les méthodes qui marchent vraiment</a>&nbsp;&nbsp;<font color="#6f6f6f">Le Progrès</font></li><a href="https://news.google.com/story/d3RcYeiLS3504IMcJzphcZ9IfV-kM?hl=fr&ned=fr" target="_blank">Full coverage</a></ol></td></tr></table>', NULL),
(10, 1, 'Niort : une cellule de soutien mise en place au lycée Paul Guérin après le décès d\'un élève', '', 'https://france3-regions.francetvinfo.fr/nouvelle-aquitaine/deux-sevres/niort/niort-cellule-soutien-mise-place-au-lycee-paul-guerin-apres-deces-eleve-1438739.html', '<table border="0" cellpadding="2" cellspacing="3"><tr><td><img src="https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT_KOhuVPgTDGg4ytW6_hAYgPQiWyZszkUqcevh7IUiAT-VqD4T39O2lbxyTkqbopwbhwQJPR7JKeY" border="1"></td><td><ol style="list-style: none; margin: 0; padding: 0;"><strong><li><a href="https://france3-regions.francetvinfo.fr/nouvelle-aquitaine/deux-sevres/niort/niort-cellule-soutien-mise-place-au-lycee-paul-guerin-apres-deces-eleve-1438739.html" target="_blank">Niort : une cellule de soutien mise en place au lycée Paul Guérin après le décès d\'un élève</a>&nbsp;&nbsp;<font color="#6f6f6f">Franceinfo</font></li></strong><li><a href="https://www.francebleu.fr/infos/sante-sciences/meningite-une-cellule-psychologique-au-lycee-paul-guerin-a-niort-1520868914" target="_blank">Méningite : une cellule psychologique au lycée Paul Guérin à Niort</a>&nbsp;&nbsp;<font color="#6f6f6f">France Bleu</font></li><li><a href="http://www.e-sante.fr/un-adolescent-de-17-ans-decede-des-suites-dune-meningite-a-niort/breve/615438" target="_blank">Un adolescent de 17 ans décède des suites d\'une méningite, à Niort</a>&nbsp;&nbsp;<font color="#6f6f6f">E-santé</font></li><a href="https://news.google.com/story/dR4-rb8PIx5rosM-LIREptwWf8rLM?hl=fr&ned=fr" target="_blank">Full coverage</a></ol></td></tr></table>', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_cat` int(11) NOT NULL,
  `nom_cat` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `nom_cat`) VALUES
(1, 'économie'),
(2, 'science'),
(3, 'culture'),
(4, 'sport'),
(5, 'santé');

-- --------------------------------------------------------

--
-- Structure de la table `cat_flux`
--

CREATE TABLE `cat_flux` (
  `id_flux` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `cat_flux`
--

INSERT INTO `cat_flux` (`id_flux`, `id_cat`) VALUES
(1, 5),
(2, 4),
(3, 3),
(4, 2),
(5, 1),
(6, 5),
(7, 3),
(8, 4),
(9, 1),
(10, 5),
(11, 2),
(12, 4),
(13, 3),
(14, 2),
(15, 1),
(16, 2),
(17, 4),
(18, 4),
(19, 5),
(20, 2),
(21, 3),
(22, 1),
(23, 1),
(24, 4),
(25, 3),
(26, 5),
(27, 4),
(28, 1),
(29, 2),
(30, 1),
(31, 1),
(32, 3),
(33, 3),
(34, 3),
(36, 5),
(37, 1),
(38, 2),
(39, 2),
(40, 1),
(41, 2),
(42, 3),
(43, 4),
(44, 3),
(45, 3),
(46, 4),
(47, 4),
(48, 1),
(49, 2),
(50, 4);

-- --------------------------------------------------------

--
-- Structure de la table `favori`
--

CREATE TABLE `favori` (
  `id_favori` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `favori`
--

INSERT INTO `favori` (`id_favori`, `id_article`, `id_user`) VALUES
(1, 10, 21);

-- --------------------------------------------------------

--
-- Structure de la table `fav_mot_clef`
--

CREATE TABLE `fav_mot_clef` (
  `id_favori` int(11) NOT NULL,
  `id_mot_clef` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `fav_mot_clef`
--

INSERT INTO `fav_mot_clef` (`id_favori`, `id_mot_clef`) VALUES
(1, 12);

-- --------------------------------------------------------

--
-- Structure de la table `flux`
--

CREATE TABLE `flux` (
  `id_flux` int(20) NOT NULL,
  `titre` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `uri` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `langue` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `flux`
--

INSERT INTO `flux` (`id_flux`, `titre`, `url`, `uri`, `type`, `langue`) VALUES
(1, 'Google Actualités Santé', 'https://news.google.com/news/rss/headlines/section/topic/HEALTH.fr_fr/Sant%C3%A9?ned=fr&hl=fr&gl=FR', 'gactusante', 'rss', 'fr'),
(2, 'Google Actualités Sport', 'https://news.google.com/news/rss/headlines/section/topic/SPORTS.fr_fr/Sport?ned=fr&gl=FR&hl=fr', 'gactusport', 'rss', 'fr'),
(3, 'Google Actualités Culture', 'https://news.google.com/news/rss/headlines/section/topic/ENTERTAINMENT.fr_fr/Culture?ned=fr&hl=fr&gl=FR', 'gactucult', 'rss', 'fr'),
(4, 'Google Actualités Science', 'https://news.google.com/news/rss/headlines/section/topic/SCITECH.fr_fr/Science%2FHigh-Tech?ned=fr&hl=fr&gl=FR', 'gactuscience', 'rss', 'fr'),
(5, 'Google Actualités Eco', 'https://news.google.com/news/rss/headlines/section/topic/BUSINESS.fr_fr/%C3%89conomie?ned=fr&hl=fr&gl=FR', 'gactueco', 'rss', 'fr'),
(6, 'Google News Здраве', 'https://news.google.com/news/rss/headlines/section/topic/HEALTH.bg_bg/%D0%97%D0%B4%D1%80%D0%B0%D0%B2%D0%B5?ned=bg_bg&hl=bg&gl=BG', 'gnsant', 'rss', 'bg'),
(7, 'Google Развлечение', 'https://news.google.com/news/rss/headlines/section/topic/ENTERTAINMENT.bg_bg/%D0%A0%D0%B0%D0%B7%D0%B2%D0%BB%D0%B5%D1%87%D0%B5%D0%BD%D0%B8%D0%B5?ned=bg_bg&hl=bg&gl=BG', 'gncult', 'rss', 'bg'),
(8, 'Google Спорт', 'https://news.google.com/news/rss/headlines/section/topic/SPORTS.bg_bg/%D0%A1%D0%BF%D0%BE%D1%80%D1%82?ned=bg_bg&hl=bg&gl=BG', 'gnsport', 'rss', 'bg'),
(9, 'Google Бизнес', 'https://news.google.com/news/rss/headlines/section/topic/BUSINESS.bg_bg/%D0%91%D0%B8%D0%B7%D0%BD%D0%B5%D1%81?ned=bg_bg&hl=bg&gl=BG', 'gnbuis', 'rss', 'bg'),
(10, 'Google News Health', 'https://news.google.com/news/rss/headlines/section/topic/HEALTH.en_uk/Health?ned=uk&hl=en-GB&gl=GB', 'gnheal', 'rss', 'eng'),
(11, 'Google News Science', 'https://news.google.com/news/rss/headlines/section/topic/SCIENCE.en_uk/Science?ned=uk&hl=en-GB&gl=GB', 'gnscience', 'rss', 'eng'),
(12, 'Google News Sport', 'https://news.google.com/news/rss/headlines/section/topic/SPORTS.en_uk/Sports?ned=uk&hl=en-GB&gl=GB', 'gnspor', 'rss', 'eng'),
(13, 'Google News Entertainment', 'https://news.google.com/news/rss/headlines/section/topic/ENTERTAINMENT.en_uk/Entertainment?ned=uk&hl=en-GB&gl=GB', 'gnentr', 'rss', 'eng'),
(14, 'Google News Technology', 'https://news.google.com/news/rss/headlines/section/topic/TECHNOLOGY.en_uk/Technology?ned=uk&hl=en-GB&gl=GB', 'gntech', 'rss', 'eng'),
(15, 'Google News Business', 'https://news.google.com/news/rss/headlines/section/topic/BUSINESS.en_uk/Business?ned=uk&hl=en-GB&gl=GB', 'gnb', 'rss', 'eng'),
(16, 'Ars Technica', 'https://newsapi.org/v2/top-headlines?sources=ars-technica&apiKey=076569535fd3444da3f93ebcf28e442e', 'arstech', 'json', 'eng'),
(17, 'BBC Sport', 'https://newsapi.org/v2/top-headlines?sources=bbc-sport&apiKey=076569535fd3444da3f93ebcf28e442e', 'bbcsport', 'json', 'eng'),
(18, 'Fox Sport', 'https://newsapi.org/v2/top-headlines?sources=fox-sports&apiKey=076569535fd3444da3f93ebcf28e442e', 'fsp', 'json', 'eng'),
(19, 'Medical News Today', 'https://newsapi.org/v2/top-headlines?sources=medical-news-today&apiKey=076569535fd3444da3f93ebcf28e442e', 'medicalNews', 'json', 'eng'),
(20, 'The Next Web', 'https://newsapi.org/v2/top-headlines?sources=the-next-web&apiKey=076569535fd3444da3f93ebcf28e442e', 'thenextweb', 'json', 'eng'),
(21, 'The Verge', 'https://newsapi.org/v2/top-headlines?sources=the-verge&apiKey=076569535fd3444da3f93ebcf28e442e', 'theVerge', 'json', 'eng'),
(22, 'Les Echos', 'https://newsapi.org/v2/everything?sources=les-echos&apiKey=076569535fd3444da3f93ebcf28e442e', 'lesEchos', 'json', 'fr'),
(23, 'Novinite', 'http://www.novinite.com/services/news_rdf.php?category_id=62', 'novi', 'rss', 'bg'),
(24, 'L\'Équipe', 'https://newsapi.org/v2/everything?sources=lequipe&apiKey=076569535fd3444da3f93ebcf28e442e', 'equipe', 'json', 'fr'),
(25, 'France 24 Culture', 'http://www.france24.com/fr/culture/rss', 'francecult', 'rss', 'fr'),
(26, 'France 24 santé', 'http://www.france24.com/fr/tag/sante/rss', 'francesant', 'rss', 'fr'),
(27, 'France 24 sport', 'http://www.france24.com/fr/sports/rss', 'francesport', 'rss', 'fr'),
(28, 'France 24 économie', 'http://www.france24.com/fr/eco-tech/rss', 'franceco', 'rss', 'fr'),
(29, 'Engadget', 'https://newsapi.org/v2/top-headlines?sources=engadget&apiKey=076569535fd3444da3f93ebcf28e442e', 'engadget', 'json', 'eng'),
(30, 'Bloomberg', 'https://newsapi.org/v2/everything?sources=bloomberg&apiKey=076569535fd3444da3f93ebcf28e442e', 'bloomberg', 'json', 'eng'),
(31, 'Financial Times', 'https://newsapi.org/v2/top-headlines?sources=financial-times&apiKey=076569535fd3444da3f93ebcf28e442e', 'financialtimes', 'json', 'eng'),
(32, 'Buzzfeed', 'https://newsapi.org/v2/top-headlines?sources=buzzfeed&apiKey=076569535fd3444da3f93ebcf28e442e', 'buzzfeed', 'json', 'eng'),
(33, 'Daily Mail', 'https://newsapi.org/v2/top-headlines?sources=daily-mail&apiKey=076569535fd3444da3f93ebcf28e442e', 'dailymail', 'json', 'eng'),
(34, '01net Culture', 'http://www.01net.com/rss/actualites/culture-medias/', 'netCulture', 'rss', 'fr'),
(35, 'Standart Стандарт нюз', 'http://www.standartnews.com/rss.php?c=92', 'standartsant', 'rss', 'bg'),
(36, 'Europa', 'http://ec.europa.eu/research/rss/whatsnew-1024.xml', 'europaHealth', 'rss', 'eng'),
(37, 'Стандарт нюз', 'http://www.standartnews.com/rss.php?c=110', 'standarteco', 'rss', 'bg'),
(38, 'Standart', 'http://www.standartnews.com/rss.php?c=21', 'standartscience', 'rss', 'bg'),
(39, 'Europa technology', 'http://ec.europa.eu/research/rss/whatsnew-1145.xml', 'europatech', 'rss', 'eng'),
(40, 'Australian Financial Review', 'https://newsapi.org/v2/top-headlines?sources=australian-financial-review&apiKey=076569535fd3444da3f93ebcf28e442e', 'austrabusiness', 'json', 'eng'),
(41, 'New Scientist', 'https://newsapi.org/v2/everything?sources=new-scientist&apiKey=076569535fd3444da3f93ebcf28e442e', 'newscientist', 'json', 'eng'),
(42, 'Standart Entertainment', 'http://www.standartnews.com/rss.php?c=120', 'stardartcult', 'rss', 'bg'),
(43, 'Standart foot', 'http://www.standartnews.com/rss.php?c=27', 'standartfoot', 'rss', 'bg'),
(44, 'Elle Mode', 'http://cdn-elle.ladmedia.fr/var/plain_site/storage/flux_rss/fluxMode.xml', 'elleentrtain', 'rss', 'fr'),
(45, 'MTV News', 'https://newsapi.org/v2/everything?sources=mtv-news&apiKey=076569535fd3444da3f93ebcf28e442e', 'mtvnews', 'json', 'eng'),
(46, 'NHL News', 'https://newsapi.org/v2/top-headlines?sources=nhl-news&apiKey=076569535fd3444da3f93ebcf28e442e', 'nhl', 'json', 'eng'),
(47, 'TalkSport', 'https://newsapi.org/v2/top-headlines?sources=talksport&apiKey=076569535fd3444da3f93ebcf28e442e', 'talksport', 'json', 'eng'),
(48, 'The Wallstreet Journal', 'https://newsapi.org/v2/top-headlines?sources=the-wall-street-journal&apiKey=076569535fd3444da3f93ebcf28e442e', 'wallstreet', 'json', 'eng'),
(49, 'Europ purescience', 'http://ec.europa.eu/research/rss/whatsnew-38.xml', 'europapurescience', 'rss', 'eng'),
(50, 'France bleu sport', 'https://www.francebleu.fr/rss/armorique/rubrique/sports.xml', 'francebleusport', 'rss', 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `flux_user`
--

CREATE TABLE `flux_user` (
  `id_flux` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `flux_user`
--

INSERT INTO `flux_user` (`id_flux`, `id_user`) VALUES
(1, 20),
(1, 21),
(2, 19),
(2, 20),
(2, 21),
(3, 20),
(3, 21),
(4, 20),
(4, 21),
(5, 20),
(6, 20),
(7, 21),
(19, 21);

-- --------------------------------------------------------

--
-- Structure de la table `mot_clef`
--

CREATE TABLE `mot_clef` (
  `id_mot_clef` int(11) NOT NULL,
  `mot_clef` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mot_clef`
--

INSERT INTO `mot_clef` (`id_mot_clef`, `mot_clef`) VALUES
(1, 'sport'),
(2, 'hello'),
(3, 'cacahuete'),
(4, 'eco'),
(5, 'sport'),
(6, 'auto'),
(7, 'otite'),
(8, 'inde'),
(9, 'santé'),
(10, 'LA RELIQUE'),
(11, 'LA RELIQUE'),
(12, 'chicoulou');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `anniversary` varchar(32) NOT NULL,
  `sexe` varchar(6) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id_user`, `firstname`, `lastname`, `anniversary`, `sexe`, `email`, `password`) VALUES
(1, 'Laurine', 'Lafontaine', '24 April, 1999', 'on', 'laurine.lafontaine@outlook.fr', 'eaa2bded32cc585d3f37c5319abe8890ad28a697ed66d5823f10536cc9c0fdb9'),
(2, 'Akame', 'Famille', '8 March, 2000', 'on', 'll@laposte.net', 'eaa2bded32cc585d3f37c5319abe8890ad28a697ed66d5823f10536cc9c0fdb9'),
(3, 'Abc', 'Def', '1 March, 2018', 'on', 'p@p.com', '5f4bd3ec1057f96455b1f3e5fbf707f712ccf93c37a60ed013887d8ed3660b02'),
(4, 'hhh', 'hhh', '5 March, 2018', 'on', 'hh@oo.copm', 'f284bdc3c1c9e24a494e285cb387c69510f28de51c15bb93179d9c7f28705398'),
(5, 'Prout', 'Prout', '1 March, 2018', 'on', 'prout@p.fr', 'eaa2bded32cc585d3f37c5319abe8890ad28a697ed66d5823f10536cc9c0fdb9'),
(6, 'hjkn', 'dfjhdfjk', '3 March, 2018', 'on', 'aaa@a.fr', '5f4bd3ec1057f96455b1f3e5fbf707f712ccf93c37a60ed013887d8ed3660b02'),
(9, 'eerzrez', 'rezrze', '6 March, 2018', 'on', 'lol@l.fr', 'eaa2bded32cc585d3f37c5319abe8890ad28a697ed66d5823f10536cc9c0fdb9'),
(19, 'Bamni', 'JKFDL', '4 January, 2002', 'on', 'pol@pol.fr', '5f4bd3ec1057f96455b1f3e5fbf707f712ccf93c37a60ed013887d8ed3660b02'),
(20, 'ffff', 'ffff', '6 March, 2018', 'on', 'ff@gmail.com', 'f29a448b780745bf2e10667f46c442b102e75e76a46a1fff969641866225ab56'),
(21, 'Billy', 'LE Clochard', '7 March, 2018', 'on', 'cacahuete@3.com', '7902699be42c8a8e46fbbb4501726517e86b22c56a189f7625a6da49081b2451');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `id_flux` (`id_flux`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `cat_flux`
--
ALTER TABLE `cat_flux`
  ADD PRIMARY KEY (`id_flux`,`id_cat`),
  ADD KEY `id_flux` (`id_flux`,`id_cat`);

--
-- Index pour la table `favori`
--
ALTER TABLE `favori`
  ADD PRIMARY KEY (`id_favori`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `fav_mot_clef`
--
ALTER TABLE `fav_mot_clef`
  ADD PRIMARY KEY (`id_favori`,`id_mot_clef`),
  ADD KEY `id_favori` (`id_favori`),
  ADD KEY `id_mot_clef` (`id_mot_clef`);

--
-- Index pour la table `flux`
--
ALTER TABLE `flux`
  ADD PRIMARY KEY (`id_flux`);

--
-- Index pour la table `flux_user`
--
ALTER TABLE `flux_user`
  ADD PRIMARY KEY (`id_flux`,`id_user`);

--
-- Index pour la table `mot_clef`
--
ALTER TABLE `mot_clef`
  ADD PRIMARY KEY (`id_mot_clef`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id_article` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `favori`
--
ALTER TABLE `favori`
  MODIFY `id_favori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `flux`
--
ALTER TABLE `flux`
  MODIFY `id_flux` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT pour la table `mot_clef`
--
ALTER TABLE `mot_clef`
  MODIFY `id_mot_clef` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

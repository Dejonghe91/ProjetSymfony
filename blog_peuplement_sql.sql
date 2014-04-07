-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 07 Avril 2014 à 16:59
-- Version du serveur :  5.6.15
-- Version de PHP :  5.3.28

SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categorie_id` int(11) DEFAULT NULL,
  `thread_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `titre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `urlAlias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dateModif` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CD8737FA63DCFD33` (`urlAlias`),
  UNIQUE KEY `UNIQ_CD8737FAE2904019` (`thread_id`),
  KEY `IDX_CD8737FABCF5E72D` (`categorie_id`),
  KEY `IDX_CD8737FAA76ED395` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `categorie_id`, `thread_id`, `user_id`, `titre`, `content`, `urlAlias`, `dateModif`) VALUES
(1, 1, 'Titre1', 1, 'Titre 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus rhoncus quam lectus, eget accumsan mauris feugiat sit amet. Nullam scelerisque nec magna vitae cursus. Suspendisse fermentum tempor blandit. Donec convallis vel augue sollicitudin cursus. Mauris id pretium nunc, eu cursus lectus. Cras at condimentum urna, imperdiet porttitor est. In volutpat congue ligula ac varius. Proin euismod ac lectus vitae mollis.', 'Titre1', '2014-03-23'),
(2, 5, 'Titre2', 1, 'Titre 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus rhoncus quam lectus, eget accumsan mauris feugiat sit amet. Nullam scelerisque nec magna vitae cursus. Suspendisse fermentum tempor blandit. Donec convallis vel augue sollicitudin cursus. Mauris id pretium nunc, eu cursus lectus. Cras at condimentum urna, imperdiet porttitor est. In volutpat congue ligula ac varius. Proin euismod ac lectus vitae mollis.', 'Titre2', '2014-03-24'),
(3, 3, 'Titre3', 1, 'Titre 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus rhoncus quam lectus, eget accumsan mauris feugiat sit amet. Nullam scelerisque nec magna vitae cursus. Suspendisse fermentum tempor blandit. Donec convallis vel augue sollicitudin cursus. Mauris id pretium nunc, eu cursus lectus. Cras at condimentum urna, imperdiet porttitor est. In volutpat congue ligula ac varius. Proin euismod ac lectus vitae mollis.', 'Titre3', '2014-03-24'),
(4, 2, 'Titre4', 1, 'Titre 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus rhoncus quam lectus, eget accumsan mauris feugiat sit amet. Nullam scelerisque nec magna vitae cursus. Suspendisse fermentum tempor blandit. Donec convallis vel augue sollicitudin cursus. Mauris id pretium nunc, eu cursus lectus. Cras at condimentum urna, imperdiet porttitor est. In volutpat congue ligula ac varius. Proin euismod ac lectus vitae mollis.', 'Titre4', '2014-03-24'),
(5, 3, 'Titre5', 1, 'Titre 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus rhoncus quam lectus, eget accumsan mauris feugiat sit amet. Nullam scelerisque nec magna vitae cursus. Suspendisse fermentum tempor blandit. Donec convallis vel augue sollicitudin cursus. Mauris id pretium nunc, eu cursus lectus. Cras at condimentum urna, imperdiet porttitor est. In volutpat congue ligula ac varius. Proin euismod ac lectus vitae mollis.', 'Titre5', '2014-03-24'),
(6, 4, 'Titre6', 1, 'Titre 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus rhoncus quam lectus, eget accumsan mauris feugiat sit amet. Nullam scelerisque nec magna vitae cursus. Suspendisse fermentum tempor blandit. Donec convallis vel augue sollicitudin cursus. Mauris id pretium nunc, eu cursus lectus. Cras at condimentum urna, imperdiet porttitor est. In volutpat congue ligula ac varius. Proin euismod ac lectus vitae mollis.', 'Titre6', '2014-03-24'),
(7, 3, 'Titre7', 1, 'Titre 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus rhoncus quam lectus, eget accumsan mauris feugiat sit amet. Nullam scelerisque nec magna vitae cursus. Suspendisse fermentum tempor blandit. Donec convallis vel augue sollicitudin cursus. Mauris id pretium nunc, eu cursus lectus. Cras at condimentum urna, imperdiet porttitor est. In volutpat congue ligula ac varius. Proin euismod ac lectus vitae mollis.', 'Titre7', '2014-03-24'),
(8, 4, 'Titre8', 1, 'Titre 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus rhoncus quam lectus, eget accumsan mauris feugiat sit amet. Nullam scelerisque nec magna vitae cursus. Suspendisse fermentum tempor blandit. Donec convallis vel augue sollicitudin cursus. Mauris id pretium nunc, eu cursus lectus. Cras at condimentum urna, imperdiet porttitor est. In volutpat congue ligula ac varius. Proin euismod ac lectus vitae mollis.', 'Titre8', '2014-03-24'),
(10, 4, 'Titre10', 1, 'Titre 10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus rhoncus quam lectus, eget accumsan mauris feugiat sit amet. Nullam scelerisque nec magna vitae cursus. Suspendisse fermentum tempor blandit. Donec convallis vel augue sollicitudin cursus. Mauris id pretium nunc, eu cursus lectus. Cras at condimentum urna, imperdiet porttitor est. In volutpat congue ligula ac varius. Proin euismod ac lectus vitae mollis.', 'Titre10', '2014-03-24'),
(11, 2, 'Titre11', 1, 'Titre 11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus rhoncus quam lectus, eget accumsan mauris feugiat sit amet. Nullam scelerisque nec magna vitae cursus. Suspendisse fermentum tempor blandit. Donec convallis vel augue sollicitudin cursus. Mauris id pretium nunc, eu cursus lectus. Cras at condimentum urna, imperdiet porttitor est. In volutpat congue ligula ac varius. Proin euismod ac lectus vitae mollis.', 'Titre11', '2014-03-24'),
(12, 4, 'Titre12', 2, 'Titre 12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec est a nisi vehicula consequat. Ut vehicula neque tincidunt rhoncus tristique. Nullam fringilla augue vitae imperdiet fermentum. Quisque aliquam est eget urna semper venenatis. Mauris rhoncus egestas erat, eget malesuada risus eleifend sed.', 'Titre12', '2014-04-07'),
(13, 5, 'Titre13', 2, 'Titre 13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus nec est a nisi vehicula consequat. Ut vehicula neque tincidunt rhoncus tristique. Nullam fringilla augue vitae imperdiet fermentum. Quisque aliquam est eget urna semper venenatis. Mauris rhoncus egestas erat, eget malesuada risus eleifend sed. test', 'Titre13', '2014-04-07');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CB8C54975E237E06` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `name`) VALUES
(1, 'Default'),
(5, 'Friends Of Symfony'),
(4, 'NodeJs'),
(2, 'SEO'),
(3, 'Symfony');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thread_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ancestors` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `depth` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5BC96BF0E2904019` (`thread_id`),
  KEY `IDX_5BC96BF0F675F31B` (`author_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `comment`
--

INSERT INTO `comment` (`id`, `thread_id`, `author_id`, `body`, `ancestors`, `depth`, `created_at`, `state`) VALUES
(1, 'Titre1', NULL, 'Commentaire numero 1', '', 0, '2014-03-24 13:00:44', 0),
(2, 'Titre1', NULL, 'commentaire numero 2', '', 0, '2014-03-29 19:43:26', 0),
(3, 'Titre1', 1, 'réponse au commentaire 1', '1', 1, '2014-03-29 19:45:00', 0),
(4, 'Titre2', NULL, 'coucou la galerie', '', 0, '2014-04-01 03:20:24', 0),
(5, 'Titre2', NULL, 'salut la companie', '', 0, '2014-04-01 03:20:48', 0),
(6, 'Titre2', NULL, 'please leave a message', '', 0, '2014-04-01 03:22:01', 0),
(7, 'Titre1', NULL, 'reponse de la reponse a admin', '1/3', 2, '2014-04-06 21:13:07', 0),
(8, 'Titre1', NULL, 'tata toto tutu', '', 0, '2014-04-06 21:13:39', 0);

-- --------------------------------------------------------

--
-- Structure de la table `thread`
--

CREATE TABLE IF NOT EXISTS `thread` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_commentable` tinyint(1) NOT NULL,
  `num_comments` int(11) NOT NULL,
  `last_comment_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_368C49B57294869C` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `thread`
--

INSERT INTO `thread` (`id`, `article_id`, `permalink`, `is_commentable`, `num_comments`, `last_comment_at`) VALUES
('Titre1', NULL, 'Titre1', 1, 5, '2014-04-06 21:13:39'),
('Titre10', NULL, 'Titre10', 1, 0, NULL),
('Titre11', NULL, 'Titre11', 1, 0, NULL),
('Titre12', NULL, 'Titre12', 1, 0, NULL),
('Titre13', NULL, 'Titre13', 1, 0, NULL),
('Titre2', NULL, 'Titre2', 1, 3, '2014-04-01 03:22:01'),
('Titre3', NULL, 'Titre3', 1, 0, NULL),
('Titre4', NULL, 'Titre4', 1, 0, NULL),
('Titre5', NULL, 'Titre5', 1, 0, NULL),
('Titre6', NULL, 'Titre6', 1, 0, NULL),
('Titre7', NULL, 'Titre7', 1, 0, NULL),
('Titre8', NULL, 'Titre8', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2DA1797792FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_2DA17977A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, 'admin', 'admin', 'admin@admin.fr', 'admin@admin.fr', 1, '7vumlla73qckg0wogw04o0o404c84cc', 'X7/OW9lrrUNbyKk1SbFFe3zLSuZ523B+6MW5pEtjBzCS271ZqoWcDkH/fzDV0YEwmUglW4Q4h2aMow5W5MqrkA==', '2014-04-07 05:29:55', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL),
(2, 'dejonghe91', 'dejonghe91', 'dejonghe91@gmail.com', 'dejonghe91@gmail.com', 1, 'rswgxt0wse84kosckgsc4owo8088w8c', 'wbPJ7yJI3ryf/a6B6nTxdoIDqji2sDlTPG51pmhbMPFps0hmEen4M8XhJXGxuEI9cDtfCsFBQQurY1X9JghutQ==', '2014-04-07 16:11:08', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_CD8737FAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_CD8737FABCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`),
  ADD CONSTRAINT `FK_CD8737FAE2904019` FOREIGN KEY (`thread_id`) REFERENCES `thread` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_5BC96BF0E2904019` FOREIGN KEY (`thread_id`) REFERENCES `thread` (`id`),
  ADD CONSTRAINT `FK_5BC96BF0F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `thread`
--
ALTER TABLE `thread`
  ADD CONSTRAINT `FK_368C49B57294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

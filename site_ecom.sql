-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 13 mars 2022 à 20:36
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `site_ecom`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idClient` int(11) NOT NULL,
  `nom` varchar(254) DEFAULT NULL,
  `prenom` varchar(254) DEFAULT NULL,
  `adresse` varchar(254) DEFAULT NULL,
  `telephone` varchar(254) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `pass` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `idCommande` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `adresseLivraison` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `detailscommande`
--

CREATE TABLE `detailscommande` (
  `idCommande` int(11) NOT NULL,
  `idProduit` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `idProduit` int(11) NOT NULL,
  `categorie` varchar(70) NOT NULL,
  `libelle` varchar(40) NOT NULL,
  `description` varchar(255) NOT NULL,
  `prix` decimal(8,0) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `image` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`idProduit`, `categorie`, `libelle`, `description`, `prix`, `stock`, `image`) VALUES
(1, 'BEARD OIL', 'MONEY SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '219', 80, 'beardWash.jpg'),
(2, 'BEARD OIL', 'SPICY SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '219', 70, 'beardWash.jpg'),
(3, 'BEARD OIL', 'TREE SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '219', 20, 'beardWash.jpg'),
(4, 'BEARD OIL', 'VICY SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '219', 70, 'beardWash.jpg'),
(5, 'BEARD OIL', 'CITRUS DNA', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '219', 45, 'beardWash.jpg'),
(6, 'BEARD OIL', 'BEARD SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '219', 70, 'beardWash.jpg'),
(7, 'BALM', 'CLAY BALM', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '370', 44, 'beardWash.jpg'),
(8, 'BALM', 'ORANGE BALM', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '370', 34, 'beardWash.jpg'),
(9, 'BALM', 'ARGAN BALM', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '370', 33, 'beardWash.jpg'),
(10, 'BALM', 'JOJOBA BALM', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '370', 45, 'beardWash.jpg'),
(11, 'BALM', 'STYLING BALM', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '370', 57, 'beardWash.jpg'),
(12, 'BALM', 'OATMEAL BALM', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '370', 3, 'beardWash.jpg'),
(13, 'MUSTACHE WAX', 'STRONG HOLD', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '120', 80, 'beardWash.jpg'),
(14, 'MUSTACHE WAX', 'NATURAL HOLD', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '120', 70, 'beardWash.jpg'),
(15, 'MUSTACHE WAX', 'DARK MOUSTACHE WAX', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '120', 45, 'beardWash.jpg'),
(16, 'MUSTACHE WAX', 'UNSCENTED LUCKY WAX', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '120', 70, 'beardWash.jpg'),
(17, 'MUSTACHE WAX', 'MEDIUM HOLD', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '120', 44, 'beardWash.jpg'),
(18, 'MUSTACHE WAX', 'MOUSTACHE CONDITIONER', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '120', 34, 'beardWash.jpg'),
(19, 'BEARD SOFTENER', 'BLUE BEARD SAVER', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '330', 34, 'beardWash.jpg'),
(20, 'BEARD SOFTENER', 'CLASSIC BEARD BUTTER', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '330', 55, 'beardWash.jpg'),
(21, 'BEARD SOFTENER', 'ALOE VERA SOFTENER', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '330', 0, 'beardWash.jpg'),
(22, 'BEARD SOFTENER', 'NATURAL SENT', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '330', 66, 'beardWash.jpg'),
(23, 'BEARD WASH', 'MONEY SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '310', 80, 'beardWash.jpg'),
(24, 'BEARD WASH', 'VICY SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '310', 70, 'beardWash.jpg'),
(26, 'BEARD WASH', 'BEARDY SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '310', 70, 'beardWash.jpg'),
(27, 'FRAGRANCE SAMPLE', 'MONEY SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '99', 44, 'beardWash.jpg'),
(28, 'FRAGRANCE SAMPLE', 'SPICY SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '99', 34, 'beardWash.jpg'),
(29, 'FRAGRANCE SAMPLE', 'TREE SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '99', 0, 'beardWash.jpg'),
(30, 'FRAGRANCE SAMPLE', 'VICY SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '99', 0, 'beardWash.jpg'),
(31, 'FRAGRANCE SAMPLE', 'CITRUS DNA', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '99', 57, 'beardWash.jpg'),
(32, 'FRAGRANCE SAMPLE', 'BEARDY SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '99', 3, 'beardWash.jpg'),
(33, 'BEARD SOAP', 'CITRUS', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '180', 80, 'beardWash.jpg'),
(34, 'BEARD SOAP', 'SMOKE', 'Keep it clean,for all our sakes Let’s face it—beards get a bad rep for being dirty and full of bacteria. So if you’re going to grow a beard, you owe it to beardsmen everywhere to keep yours clean. VKB Wash was formulated by beardsmen for the perfect beard', '180', 70, 'beardWash.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idClient`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`idCommande`),
  ADD KEY `FK_association1` (`idClient`);

--
-- Index pour la table `detailscommande`
--
ALTER TABLE `detailscommande`
  ADD PRIMARY KEY (`idCommande`,`idProduit`),
  ADD KEY `FK_association3` (`idProduit`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`idProduit`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idClient` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `fk_association1` FOREIGN KEY (`idClient`) REFERENCES `client` (`idClient`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `detailscommande`
--
ALTER TABLE `detailscommande`
  ADD CONSTRAINT `FK_association2` FOREIGN KEY (`idCommande`) REFERENCES `commande` (`idCommande`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_association3` FOREIGN KEY (`idProduit`) REFERENCES `produit` (`idProduit`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

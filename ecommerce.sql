-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 28 mars 2022 à 21:42
-- Version du serveur : 5.7.36
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `ads`
--

DROP TABLE IF EXISTS `ads`;
CREATE TABLE IF NOT EXISTS `ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `icon` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `icon`) VALUES
(1, 'Tee-shirt', 'tee-shirt'),
(2, 'Pantalon\r\n', 'pantalon'),
(3, 'Chaussures', 'chaussure'),
(4, 'Chemise\r\n', 'chemise'),
(5, 'Sweatshirt', 'sweatshirt'),
(6, 'Manteau', 'manteau');

-- --------------------------------------------------------

--
-- Structure de la table `command`
--

DROP TABLE IF EXISTS `command`;
CREATE TABLE IF NOT EXISTS `command` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` varchar(1000) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `command`
--

INSERT INTO `command` (`id`, `id_product`, `quantity`, `dat`, `statut`, `id_user`) VALUES
(41, 1, 1, '2017-02-06 13:58:34', 'paid', 7),
(69, 14, 1, '2017-02-07 19:14:55', 'paid', 5),
(129, 12, 1, '2022-03-28 08:13:57', 'paid', 12),
(130, 7, 2, '2022-03-28 08:13:57', 'paid', 12),
(133, 7, 2, '2022-03-28 14:35:28', 'paid', 12),
(134, 22, 1, '2022-03-28 14:36:06', 'paid', 12),
(135, 22, 1, '2022-03-28 20:24:28', 'paid', 12),
(136, 26, 1, '2022-03-28 20:25:20', 'paid', 12),
(137, 23, 1, '2022-03-28 20:26:16', 'paid', 12),
(138, 7, 1, '2022-03-28 20:27:05', 'paid', 12),
(139, 20, 1, '2022-03-28 20:27:05', 'paid', 12);

-- --------------------------------------------------------

--
-- Structure de la table `details_command`
--

DROP TABLE IF EXISTS `details_command`;
CREATE TABLE IF NOT EXISTS `details_command` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(1000) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `id_command` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `user` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `statut` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `details_command`
--

INSERT INTO `details_command` (`id`, `product`, `quantity`, `price`, `id_command`, `id_user`, `user`, `address`, `country`, `city`, `statut`) VALUES
(34, 'Chemise Oxford', 2, 50, 130, 12, 'Sou Tuan', '99 street Popo', '', 'Beijing', 'done'),
(35, 'Chemise Oxford', 2, 50, 133, 12, 'L Tuan', '99 street Popo', '', 'Beijing', 'done'),
(36, 'Pantalon lÃ©ger', 1, 30, 134, 12, 'L Tuan', '99 street Popo', '', 'Beijing', 'done'),
(37, 'Pantalon lÃ©ger', 1, 30, 135, 12, 'L Tuan', '99 street Popo', '', 'Beijing', 'done'),
(38, 'Manteau boutonnÃ© Oversize ', 1, 95, 136, 12, 'L Tuan', '99 street Popo', '', 'Beijing', 'done'),
(39, 'Pantoufles lavables', 1, 20, 137, 12, 'L Tuan', '99 street Popo', '', 'Beijing', 'done'),
(40, 'Chemise Oxford', 1, 25, 138, 12, 'L Tuan', '99 street Popo', '', 'Beijing', 'done'),
(41, 'Hokusai Tee-shirt', 1, 15, 139, 12, 'L Tuan', '99 street Popo', '', 'Beijing', 'done');

-- --------------------------------------------------------

--
-- Structure de la table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
CREATE TABLE IF NOT EXISTS `pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(1000) NOT NULL,
  `id_product` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pictures`
--

INSERT INTO `pictures` (`id`, `picture`, `id_product`) VALUES
(13, 'chemise1.png', 2),
(14, 'chemise2.png', 2),
(15, 'chemise3.png', 2),
(52, '', 20),
(53, '', 20),
(54, '', 20),
(55, '', 21),
(56, '', 21),
(57, '', 21),
(58, '', 22),
(59, '', 22),
(60, '', 22),
(61, 'index.jpg', 23),
(62, '', 23),
(63, '', 23),
(64, 'ezgif.com-gif-maker(10).png', 24),
(65, 'goods_446648_sub19.jpg', 24),
(66, 'ezgif.com-gif-maker(11).png', 24),
(67, 'ezgif.com-gif-maker(13).png', 25),
(68, 'ezgif.com-gif-maker(16).png', 25),
(69, 'ezgif.com-gif-maker(15).png', 25),
(70, 'ezgif.com-gif-maker(18).png', 26),
(71, 'ezgif.com-gif-maker(19).png', 26),
(72, 'ezgif.com-gif-maker(20).png', 26);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_category` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` int(11) NOT NULL,
  `id_picture` int(11) NOT NULL,
  `thumbnail` varchar(1000) NOT NULL,
  `promo` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `id_category`, `name`, `description`, `price`, `id_picture`, `thumbnail`, `promo`) VALUES
(7, 4, 'Chemise Oxford', 'Revisitee cette saison, cette chemise Oxford est un essentiel elegant et moderne. Chaque detail a ete choisi avec soin, de la matiere a la coupe.', 25, 2, 'chemiseOxford.png', ''),
(20, 1, 'Hokusai Tee-shirt', 'Premier tee-shirt de la collection Hokusai', 15, 20, 'hokusaiTeeShirt.png', ''),
(21, 1, 'Demon Slayer tee-shirt', 'Tee-shirt issu de l\'anime Kimetsu No Yaiba. Collection Permanente. ', 15, 21, 'tee-shirt.png', ''),
(22, 2, 'Pantalon lÃ©ger', 'Pantalon ultra lÃ©ger pour le golf.', 30, 22, 'pantalonLeger.png', ''),
(23, 3, 'Pantoufles lavables', 'Pantoufle gris lavable. Matiere :100% cotton.', 20, 23, 'goods_03_443650.jpg', ''),
(24, 5, 'Sweatshirt Art Icons', 'Blue Sweatshirt Salvador dali, the persistence of memory.', 25, 24, 'ezgif.com-gif-maker(9).png', ''),
(25, 5, 'Sweatshirt UT UYIKO', 'Unsodo, le seul Ã©diteur japonais de livres imprimÃ©s Ã  la planche encore en activitÃ© aujourdâ€™hui, sâ€™est associÃ© Ã  UT pour crÃ©er une collection exclusive, apportant les tons vibrants et les lignes uniques du mouvement ukiyo-e Ã  des vÃªtements du quotidien. Ne passez pas Ã  cÃ´tÃ© et invitez lâ€™art japonais dans votre quotidien avec cette collection UT, inspirÃ©e dâ€™Å“uvres ukiyo-e de deux des plus grands maÃ®tres japonais, Hokusai et Hiroshige. ', 25, 25, 'ezgif.com-gif-maker(14).png', ''),
(26, 6, 'Manteau boutonnÃ© Oversize ', 'UNIQLOâ€™s Popular collaboration with legendary designer Jil Sander continues to define the global modern uniform, giving it meaning and purpose for today.\r\n- Controlled oversized A-line cut with rounded sleeves.\r\n- Durable water-repellent coating.\r\n- Matte Nylon fabric.\r\n- Double hip pockets.', 95, 26, 'ezgif.com-gif-maker(17).png', '');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(1000) NOT NULL,
  `lastname` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `role` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `lastname`, `password`, `address`, `city`, `country`, `role`) VALUES
(12, 'tutu@gmail.com', 'L', 'Tuan', '202cb962ac59075b964b07152d234b70', '99 street Popo', 'Beijing', 'India', 'admin'),
(13, 'visiteur@gmail.com', 'Jean', 'Luc', 'b71985397688d6f1820685dde534981b', '99 rue de Beaujolais', 'Paris', 'India', 'client');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

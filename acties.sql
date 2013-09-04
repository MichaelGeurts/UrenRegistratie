-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 23 mei 2013 om 14:14
-- Serverversie: 5.5.24-log
-- PHP-versie: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `top1toys_nl`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `acties_een_plus_een`
--

CREATE TABLE IF NOT EXISTS `acties_een_plus_een` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `van` datetime NOT NULL,
  `tot` datetime NOT NULL,
  `coupon_code` varchar(16) NOT NULL,
  `toepassen_op` enum('alles','producten','alles_boven','producten_boven') NOT NULL,
  `toepassen_id` int(8) NOT NULL,
  `toepassen_bedrag` varchar(16) NOT NULL,
  `combineren_acties` varchar(64) NOT NULL,
  `balk_image` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Gegevens worden uitgevoerd voor tabel `acties_een_plus_een`
--

INSERT INTO `acties_een_plus_een` (`id`, `van`, `tot`, `coupon_code`, `toepassen_op`, `toepassen_id`, `toepassen_bedrag`, `combineren_acties`, `balk_image`) VALUES
(18, '2013-05-07 00:00:00', '2013-05-08 00:00:00', 'haii', 'producten', 115, '', 'alles', 'Tulips.jpg'),
(25, '2013-05-23 00:00:00', '2013-05-24 00:00:00', 'hai', 'alles', 114, '', 'alles', 'Jellyfish.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `acties_een_plus_een_gift`
--

CREATE TABLE IF NOT EXISTS `acties_een_plus_een_gift` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `van` datetime NOT NULL,
  `tot` datetime NOT NULL,
  `coupon_code` varchar(16) NOT NULL,
  `toepassen_op` enum('producten') NOT NULL,
  `toepassen_id` int(8) NOT NULL,
  `toepassen_artikel` varchar(8) NOT NULL,
  `toepassen_artikel_naam` varchar(64) NOT NULL,
  `toepassen_artikel_image` varchar(256) NOT NULL,
  `combineren_acties` varchar(64) NOT NULL,
  `balk_image` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Gegevens worden uitgevoerd voor tabel `acties_een_plus_een_gift`
--

INSERT INTO `acties_een_plus_een_gift` (`id`, `van`, `tot`, `coupon_code`, `toepassen_op`, `toepassen_id`, `toepassen_artikel`, `toepassen_artikel_naam`, `toepassen_artikel_image`, `combineren_acties`, `balk_image`) VALUES
(18, '2013-05-23 00:00:00', '2013-05-23 00:00:00', 'amnlz', 'producten', 99, '', 'hoi', '', '', ''),
(6, '2013-05-13 16:07:46', '2013-05-14 16:07:50', '', 'producten', 2, '', 'Test product', '/product_image/small/4040115', '', ''),
(7, '2013-05-16 00:00:00', '2013-05-17 00:00:00', 'gh', 'producten', 120, '', 'sleutelhanger', 'Tulips.jpg', 'alles', 'Desert.jpg'),
(8, '2013-05-17 00:00:00', '2013-05-18 00:00:00', 'ju', 'producten', 46, '', 'kaas', 'test2.png', '', ''),
(9, '2013-05-25 00:00:00', '2013-05-26 00:00:00', '', 'producten', 47, '', 'kaas', 'test.png', '', ''),
(10, '2013-05-30 00:00:00', '2013-05-31 00:00:00', 'ja', 'producten', 48, '', 'de', 'Chrysanthemum.jpg', '', ''),
(11, '2013-05-30 00:00:00', '2013-05-31 00:00:00', 'ja', 'producten', 49, '', 'de', 'Chrysanthemum.jpg', '', ''),
(12, '2013-05-22 00:00:00', '2013-05-22 00:00:00', 'hi', 'producten', 50, '', 'kaas', 'Jellyfish.jpg', '', ''),
(13, '2013-05-31 00:00:00', '2013-05-31 00:00:00', 'juj', 'producten', 51, '', 'alfred', 'ha.png', '', ''),
(14, '2013-05-22 00:00:00', '2013-05-23 00:00:00', 'jahaa', 'producten', 52, '', 'wopwop', 'ha.png', '', ''),
(19, '2013-05-23 00:00:00', '2013-05-24 00:00:00', 'what islove', 'producten', 119, '', 'baby', '', 'alles', 'Tulips.jpg'),
(20, '2013-05-31 00:00:00', '2013-05-31 00:00:00', 'last test', 'producten', 121, '', 'happer', 'test2.png', 'alles', 'ha.png');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `acties_een_plus_een_vast`
--

CREATE TABLE IF NOT EXISTS `acties_een_plus_een_vast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `van` datetime NOT NULL,
  `tot` datetime NOT NULL,
  `coupon_code` varchar(16) NOT NULL,
  `toepassen_op` enum('producten') NOT NULL,
  `toepassen_id` int(8) NOT NULL,
  `toepassen_artikel` varchar(64) NOT NULL,
  `combineren_acties` varchar(64) NOT NULL,
  `balk_image` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Gegevens worden uitgevoerd voor tabel `acties_een_plus_een_vast`
--

INSERT INTO `acties_een_plus_een_vast` (`id`, `van`, `tot`, `coupon_code`, `toepassen_op`, `toepassen_id`, `toepassen_artikel`, `combineren_acties`, `balk_image`) VALUES
(1, '2013-05-13 14:23:07', '2013-05-14 14:23:12', '', 'producten', 1, '3944519', '', ''),
(2, '2013-05-13 14:23:07', '2013-05-14 14:23:12', '', 'producten', 1, '3944519', '', ''),
(3, '2013-05-13 14:23:07', '2013-05-14 14:23:12', '', 'producten', 1, '3944519', '', ''),
(4, '2013-05-13 14:23:07', '2013-05-14 14:23:12', '', 'producten', 1, '3944519', '', ''),
(5, '2013-05-13 14:23:07', '2013-05-14 14:23:12', '', 'producten', 1, '3944519', '', ''),
(6, '2013-05-23 00:00:00', '2013-05-24 00:00:00', '789', '', 122, '98765432', 'alles', 'test.png'),
(7, '2013-05-23 00:00:00', '2013-05-24 00:00:00', 'haaaai', '', 122, '7654', 'alles', 'ha.png'),
(8, '2013-05-23 00:00:00', '2013-05-24 00:00:00', 'hagaaay', 'producten', 122, '6543', 'alles', 'ha.png'),
(9, '2013-05-23 00:00:00', '2013-05-24 00:00:00', 'het is 16 uur', 'producten', 129, '13378', 'alles', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `acties_verzendkosten`
--

CREATE TABLE IF NOT EXISTS `acties_verzendkosten` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `van` datetime NOT NULL,
  `tot` datetime NOT NULL,
  `korting` varchar(16) NOT NULL,
  `coupon_code` varchar(16) NOT NULL,
  `toepassen_op` enum('alles','post nl','zwerus','producten','alles_boven','producten_boven') NOT NULL,
  `toepassen_id` int(8) NOT NULL,
  `toepassen_bedrag` varchar(16) NOT NULL,
  `toepassen_eenmalig` enum('y','n') NOT NULL DEFAULT 'n',
  `combineren_acties` varchar(64) NOT NULL,
  `balk_image` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Gegevens worden uitgevoerd voor tabel `acties_verzendkosten`
--

INSERT INTO `acties_verzendkosten` (`id`, `van`, `tot`, `korting`, `coupon_code`, `toepassen_op`, `toepassen_id`, `toepassen_bedrag`, `toepassen_eenmalig`, `combineren_acties`, `balk_image`) VALUES
(20, '2013-05-08 00:00:00', '2013-05-09 00:00:00', '3', 'troll', 'producten', 109, '', 'n', 'alles', 'Tulips.jpg'),
(23, '2013-05-23 00:00:00', '2013-05-24 00:00:00', '200', 'huj', 'producten', 106, '', 'y', 'alles', 'Lighthouse.jpg'),
(24, '2013-05-24 00:00:00', '2013-05-25 00:00:00', '2', '', 'zwerus', 104, '', 'y', 'alles', 'kaas'),
(25, '2013-05-24 00:00:00', '2013-05-25 00:00:00', '30', 'hoera', 'producten', 105, '', 'y', 'alles', 'kaas'),
(26, '2013-05-24 00:00:00', '2013-05-25 00:00:00', '6', 'jui', 'alles', 106, '', 'y', 'alles', 'Koala.jpg'),
(27, '2013-05-24 00:00:00', '2013-05-25 00:00:00', '3', 'haha', 'zwerus', 106, '', 'y', 'alles', 'Hydrangeas.jpg'),
(28, '2013-05-23 00:00:00', '2013-05-24 00:00:00', '1', 'huij', 'alles_boven', 0, '90', 'n', 'alles', 'Penguins.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 29, 2018 at 06:20 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spoonacular`
--

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
CREATE TABLE IF NOT EXISTS `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `food` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `username`, `food`, `created_at`) VALUES
(1, 'user', 'Applewood Spiced BBQ Chicken Pizza, Chicago Thick, 12 Inch (Slice)', '2018-11-24 14:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location`) VALUES
(1, 'Giovanni Pizza Pasta & Grill'),
(2, 'Intrinsic Cafe'),
(3, 'Ramen Gami'),
(4, 'Burger Walla'),
(5, 'Thai Cuisine'),
(6, 'Resa Grill'),
(7, 'The Halal Guys'),
(8, 'Ono Grinds Poke'),
(9, 'McGovers Tavern'),
(10, 'The Green Chicpea'),
(11, 'La Cocina'),
(12, 'Sunrise Kitchen'),
(13, 'Harvest Table'),
(14, 'Panda Chinese Restaurant'),
(15, 'Mercato Tomato Pie'),
(16, 'Robert\'s Pizzeria'),
(17, 'Nizi Sushi'),
(18, '27 Mix'),
(19, 'Dinosaur Bar-B-Que'),
(20, 'Smashburger'),
(21, 'Subway'),
(22, 'Annabella\'s Kitchen'),
(23, 'Blaze Pizza'),
(24, 'QDOBA Mexican Eats'),
(25, 'IHOP'),
(26, 'E-Z Market'),
(27, 'Tops Diner'),
(28, 'Sonic Drive-In'),
(29, 'Dario\'s ');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu`) VALUES
(1, 'Burger'),
(2, 'Chicken'),
(3, 'Apple'),
(4, 'Pie');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `menu_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `username`, `menu_name`, `created_at`) VALUES
(1, 'user', 'Chopped Power Salad-Lunch', '2018-11-24 13:22:29'),
(2, 'user', 'Applewood Spiced BBQ Chicken Pizza, Chicago Thick, 12 Inch (Slice)', '2018-11-24 14:25:24'),
(3, 'user', 'Applewood Spiced BBQ Chicken Pizza, Chicago Thick, 12 Inch (Slice)', '2018-11-24 14:32:40'),
(4, 'user', 'Applewood Spiced BBQ Chicken Pizza, Chicago Thick, 12 Inch (Slice)', '2018-11-29 05:28:53'),
(5, 'user', 'Applewood Spiced BBQ Chicken Pizza, Chicago Thick, 12 Inch (Slice)', '2018-11-29 05:43:38'),
(6, 'user', 'Applewood Spiced BBQ Chicken Pizza, Chicago Thick, 12 Inch (Slice)', '2018-11-29 06:07:02'),
(7, 'user', 'Applewood Spiced BBQ Chicken Pizza, Chicago Thick, 12 Inch (Slice)', '2018-11-29 06:09:27'),
(8, 'user', 'Thai Chicken Lettuce Wraps', '2018-11-29 06:17:17');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE IF NOT EXISTS `restaurants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `restaurant` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `username`, `restaurant`, `created_at`) VALUES
(1, 'user', 'Old Chicago', '2018-11-24 14:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `regdate` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `regdate`) VALUES
(1, 'user', '5f4dcc3b5aa765d61d8327deb882cf99', 'November, 2018'),
(4, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'November, 2018');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

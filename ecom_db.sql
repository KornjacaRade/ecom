-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 12, 2020 at 09:18 AM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'example 1 '),
(2, 'example 2'),
(3, 'Jeans'),
(11, 'test'),
(13, 'test2');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_amount` float NOT NULL,
  `order_transaction` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `order_currency` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_amount`, `order_transaction`, `order_status`, `order_currency`) VALUES
(26, 345, '34535434', 'Completed', 'USD'),
(27, 345, '34535434', 'Completed', 'USD'),
(28, 345, '34535434', 'Completed', 'USD'),
(29, 345, '34535434', 'Completed', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `short_desc`, `product_image`) VALUES
(5, 'Product from admin', 2, 25, 12, 'asd', 'cxvx', 'IMG_20181020_101234.jpg'),
(6, 'new 3d', 1, 333, 33, 'new 3 des', 'new 3 sh', ''),
(7, 'fours', 1, 123, 11, 'four desc', 'four desc', '28112014062.jpg'),
(8, 'four', 2, 123, 11, 'four desc', 'four desc', 'uvac-special-nature-reserve-5442-1920x1080.jpg'),
(9, 'Blue Jeanss', 3, 60, 23, 'Blue Jeans Desc', 'Blue Jeans Short', 'zce-2017-php-80x80.gif'),
(10, 'fifth', 3, 666, 22, 'fifth desc', 'fifth short', 'IMG_20181020_101234.jpg'),
(11, 'six', 3, 25, 44, 'six desc', 'six short', 'uvac-special-nature-reserve-5442-1920x1080.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `product_id`, `order_id`, `product_title`, `product_price`, `product_quantity`) VALUES
(14, 1, 14, '', 24.99, 3),
(15, 2, 14, '', 2.99, 2),
(16, 1, 15, '', 24.99, 3),
(17, 2, 15, '', 2.99, 2),
(18, 1, 16, '', 24.99, 3),
(19, 2, 16, '', 2.99, 2),
(20, 1, 18, 'product 1', 24.99, 3),
(21, 2, 18, 'product 2', 2.99, 2),
(22, 1, 19, 'product 1', 24.99, 3),
(23, 2, 20, 'product 2', 2.99, 2),
(24, 1, 21, 'product 1', 24.99, 1),
(25, 2, 22, 'product 2', 2.99, 2),
(26, 1, 23, 'product 1', 24.99, 1),
(27, 1, 24, 'product 1', 24.99, 1),
(28, 2, 25, 'product 2', 2.99, 1),
(29, 1, 26, 'product 1', 24.99, 3),
(30, 2, 27, 'product 2', 2.99, 2),
(31, 1, 28, 'product 1', 24.99, 1),
(32, 2, 29, 'product 2', 2.99, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_photo` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `user_photo`) VALUES
(1, 'aco', 'aco@gmail.com', '123', ''),
(2, 'copica', 'copica@gmail.com', '1234', ''),
(5, 'test', 'test@email.com', '123', '28112014061.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

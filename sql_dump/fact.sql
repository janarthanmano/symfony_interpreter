-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 22, 2022 at 11:26 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `fact`
--

DROP TABLE IF EXISTS `fact`;
CREATE TABLE IF NOT EXISTS `fact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `security_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fact`
--

INSERT INTO `fact` (`id`, `security_id`, `attribute_id`, `value`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 1, 3, 3),
(4, 1, 4, 4),
(5, 1, 5, 5),
(6, 1, 6, 6),
(7, 1, 7, 7),
(8, 1, 8, 8),
(9, 1, 9, 9),
(10, 1, 10, 10),
(11, 2, 1, 2),
(12, 2, 2, 4),
(13, 2, 3, 6),
(14, 2, 4, 8),
(15, 2, 5, 10),
(16, 2, 6, 12),
(17, 2, 7, 14),
(18, 2, 8, 16),
(19, 2, 9, 18),
(20, 2, 10, 20),
(21, 3, 1, 3),
(22, 3, 2, 6),
(23, 3, 3, 9),
(24, 3, 4, 12),
(25, 3, 5, 15),
(26, 3, 6, 18),
(27, 3, 7, 21),
(28, 3, 8, 24),
(29, 3, 9, 27),
(30, 3, 10, 30),
(31, 4, 1, 4),
(32, 4, 2, 8),
(33, 4, 3, 12),
(34, 4, 4, 16),
(35, 4, 5, 20),
(36, 4, 6, 24),
(37, 4, 7, 28),
(38, 4, 8, 32),
(39, 4, 9, 36),
(40, 4, 10, 40),
(41, 5, 1, 5),
(42, 5, 2, 10),
(43, 5, 3, 15),
(44, 5, 4, 20),
(45, 5, 5, 25),
(46, 5, 6, 30),
(47, 5, 7, 35),
(48, 5, 8, 40),
(49, 5, 9, 45),
(50, 5, 10, 50),
(51, 6, 1, 6),
(52, 6, 2, 12),
(53, 6, 3, 18),
(54, 6, 4, 24),
(55, 6, 5, 30),
(56, 6, 6, 36),
(57, 6, 7, 42),
(58, 6, 8, 48),
(59, 6, 9, 54),
(60, 6, 10, 60),
(61, 7, 1, 7),
(62, 7, 2, 14),
(63, 7, 3, 21),
(64, 7, 4, 28),
(65, 7, 5, 35),
(66, 7, 6, 42),
(67, 7, 7, 49),
(68, 7, 8, 56),
(69, 7, 9, 63),
(70, 7, 10, 70),
(71, 8, 1, 8),
(72, 8, 2, 16),
(73, 8, 3, 24),
(74, 8, 4, 32),
(75, 8, 5, 40),
(76, 8, 6, 48),
(77, 8, 7, 56),
(78, 8, 8, 64),
(79, 8, 9, 72),
(80, 8, 10, 80),
(81, 9, 1, 9),
(82, 9, 2, 18),
(83, 9, 3, 27),
(84, 9, 4, 36),
(85, 9, 5, 45),
(86, 9, 6, 54),
(87, 9, 7, 63),
(88, 9, 8, 72),
(89, 9, 9, 81),
(90, 9, 10, 90),
(91, 10, 1, 10),
(92, 10, 2, 20),
(93, 10, 3, 30),
(94, 10, 4, 40),
(95, 10, 5, 50),
(96, 10, 6, 60),
(97, 10, 7, 70),
(98, 10, 8, 80),
(99, 10, 9, 90),
(100, 10, 10, 100);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

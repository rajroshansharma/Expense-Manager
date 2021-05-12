-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2021 at 04:09 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `budget`
--

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE IF NOT EXISTS `expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_expense` varchar(255) DEFAULT NULL,
  `date_of_expense` date DEFAULT NULL,
  `amount_spent` int(11) DEFAULT NULL,
  `by_whom` varchar(255) DEFAULT NULL,
  `bill` longblob,
  `users_id` int(11) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `title_expense`, `date_of_expense`, `amount_spent`, `by_whom`, `bill`, `users_id`, `plan_id`) VALUES
(7, 'Ticket', '2021-05-12', 2000, 'Abhishek', 0x4e6f2066696c652063686f6f73656e, 4, 5),
(8, 'Food', '2021-05-12', 1000, 'KP', 0x4e6f2066696c652063686f6f73656e, 4, 5),
(9, 'Hotel', '2021-05-13', 1500, 'Atul', 0x4e6f2066696c652063686f6f73656e, 4, 5),
(10, 'Travel in the city', '2021-05-14', 500, 'Yash', 0x4e6f2066696c652063686f6f73656e, 4, 5),
(11, 'Mandir dharsan', '2021-05-14', 500, 'Yash', 0x4e6f2066696c652063686f6f73656e, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
CREATE TABLE IF NOT EXISTS `plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_trip` varchar(255) DEFAULT NULL,
  `_from` date DEFAULT NULL,
  `_to` date DEFAULT NULL,
  `ibudget` int(11) DEFAULT NULL,
  `no_of_people` int(11) DEFAULT NULL,
  `name_of_person` longtext,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `title_trip`, `_from`, `_to`, `ibudget`, `no_of_people`, `name_of_person`, `user_id`) VALUES
(5, 'Kedarnath', '2021-05-12', '2021-05-15', 4000, 4, 'Abhishek,KP,Atul,Yash,', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` bigint(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Name`, `email`, `password`, `contact`) VALUES
(4, 'Abhishek Kumar', 'abhishek@gmail.com', 'abb73bf3ede2e70d797bea865bc43a5c', 9801361850);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

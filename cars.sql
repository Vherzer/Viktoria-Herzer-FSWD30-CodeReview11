-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2018 at 06:54 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr11_Viktoria_Herzer_php_car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `cars_id` int(11) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL,
  `aorm` varchar(10) NOT NULL,
  `availability` varchar(5) NOT NULL,
  `location` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`cars_id`, `car_name`, `color`, `aorm`, `availability`, `location`) VALUES
(1, 'Ford Fiesta', 'Silver', 'Manuel', 'No', 'GPS'),
(2, 'Mercedes A180', 'Blue', 'Automatic', 'Yes', 'Office 1'),
(3, 'Ford Fiesta', 'Black', 'Manuel', 'Yes', 'Office 1'),
(4, 'VW Golf', 'Red', 'Automatic', 'Yes', 'Office 2'),
(5, 'VW Golf', 'Black', 'Manuel', 'Yes', 'Office 3'),
(6, 'Seat Ibiza', 'White', 'Automatic', 'No', 'GPS'),
(7, 'Mercedes A180', 'White', 'Manuel', 'Yes', 'Office 3'),
(8, 'Ford Fiesta', 'Black', 'Manuel', 'No', 'GPS'),
(9, 'Seat Ibiza', 'Red', 'Manuel', 'Yes', 'Office 4'),
(10, 'VW Golf', 'Black', 'Automatic', 'Yes', 'Office 3'),
(11, 'Mercedes A180', 'Black', 'Automatic', 'No', 'GPS'),
(12, 'Ford Fiesta', 'Red', 'Manuel', 'Yes', 'Office 4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`cars_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

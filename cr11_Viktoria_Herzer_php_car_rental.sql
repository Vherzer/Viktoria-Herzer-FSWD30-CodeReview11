-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2018 at 06:57 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `office_id` int(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `fk_cars_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`office_id`, `address`, `fk_cars_id`) VALUES
(1, 'Kettenbrückengasse 1', NULL),
(2, 'Kettenbrückengasse 2', NULL),
(3, 'Kettenbrückengasse 3', NULL),
(4, 'Kettenbrückengasse 4', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `php_rental_car_agency`
--

CREATE TABLE `php_rental_car_agency` (
  `php_rental_car_agency_id` int(11) NOT NULL,
  `fk_offices_id` int(11) DEFAULT NULL,
  `fk_userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`) VALUES
(2, 'Viki', 'vherzer@gmail.com', 'ac818c81a10cff5361baa9af0353df5678370b1d2fe547eeb9c1f57cf96347dc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`cars_id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`office_id`),
  ADD KEY `fk_cars_id` (`fk_cars_id`);

--
-- Indexes for table `php_rental_car_agency`
--
ALTER TABLE `php_rental_car_agency`
  ADD PRIMARY KEY (`php_rental_car_agency_id`),
  ADD KEY `fk_offices_id` (`fk_offices_id`),
  ADD KEY `fk_userId` (`fk_userId`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `userEmail` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `offices`
--
ALTER TABLE `offices`
  ADD CONSTRAINT `fk_cars_id` FOREIGN KEY (`fk_cars_id`) REFERENCES `cars` (`cars_id`);

--
-- Constraints for table `php_rental_car_agency`
--
ALTER TABLE `php_rental_car_agency`
  ADD CONSTRAINT `fk_customers_id` FOREIGN KEY (`fk_userId`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_offices_id` FOREIGN KEY (`fk_offices_id`) REFERENCES `offices` (`office_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

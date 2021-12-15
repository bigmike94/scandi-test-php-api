-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2021 at 01:38 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scandi`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_properties`
--

CREATE TABLE `additional_properties` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `units` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `additional_properties`
--

INSERT INTO `additional_properties` (`id`, `type_id`, `name`, `units`) VALUES
(1, 2, 'Size', 'MB'),
(2, 3, 'WxHxL', 'CM'),
(3, 1, 'Weight', 'KG');

-- --------------------------------------------------------

--
-- Table structure for table `keys_and_values`
--

CREATE TABLE `keys_and_values` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `ad_prop_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys_and_values`
--

INSERT INTO `keys_and_values` (`id`, `prod_id`, `type_id`, `ad_prop_id`, `value`) VALUES
(2, 2, 1, 3, '2'),
(5, 5, 3, 2, '25x50x20'),
(6, 6, 3, 2, '80x200x80');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `sku` varchar(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `price`) VALUES
(2, 'WAP00101', 'War and Peace', 20.99),
(5, 'CH011100', 'Chair', 15.99),
(6, 'CPB11101', 'Сupboard', 99.99),

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, 'Book'),
(2, 'DVD'),
(3, 'Furniture');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_properties`
--
ALTER TABLE `additional_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys_and_values`
--
ALTER TABLE `keys_and_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_properties`
--
ALTER TABLE `additional_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `keys_and_values`
--
ALTER TABLE `keys_and_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

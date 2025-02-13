-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2025 at 09:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cosmetic`
--

-- --------------------------------------------------------

--
-- Table structure for table `price_man`
--

CREATE TABLE `price_man` (
  `price_id` int(11) NOT NULL,
  `prod_name` varchar(255) DEFAULT NULL,
  `category` enum('Hair','Oral','Sun','Skin','Decorative','Perfumes') NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `price_man`
--

INSERT INTO `price_man` (`price_id`, `prod_name`, `category`, `price`) VALUES
(1, 'tièqd', 'Hair', 12212),
(2, 'zez', 'Hair', 1221);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `category` enum('Hair','Oral','Sun','Skin','Decorative','Perfumes') NOT NULL,
  `desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `qty`, `category`, `desc`) VALUES
(1, 'lhh', '2123', 'Hair', 'pupmihm'),
(3, 'Carimo', '30', 'Skin', 'very good in dirt removal'),
(4, 'Carimo', '30', 'Skin', 'very good inv dirt removal'),
(5, 'Carimo', '30', 'Skin', 'very good in dirt removal'),
(6, 'Carimo', '300', 'Skin', 'very good in dirt removal'),
(7, 'Carimo', '3000', 'Skin', 'very good in dirt removal');

-- --------------------------------------------------------

--
-- Table structure for table `stock_man`
--

CREATE TABLE `stock_man` (
  `stock_id` int(11) NOT NULL,
  `prod_name` varchar(255) NOT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `category` enum('Hair','Oral','Sun','Skin','Decorative','Perfumes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stock_man`
--

INSERT INTO `stock_man` (`stock_id`, `prod_name`, `qty`, `category`) VALUES
(2, 'carimo', '230', 'Skin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_type` enum('Super Admin','Admin','Stock Manager','Warehouse Staff','Financial Manager') DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `s_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_type`, `Email`, `Password`, `s_id`) VALUES
(1, 'Admin', 'tekengyvan@gmail.com', 'password123', NULL),
(3, 'Warehouse Staff', 'thierrynti@gmail.com', '1234ze', NULL),
(4, 'Financial Manager', 'ornellamvondo@gmail.com', 'Password123', NULL),
(5, 'Super Admin', 'sup@gmail.com', 'sup123', NULL),
(30, 'Admin', 'tek@gmail.com', '123', NULL),
(32, 'Financial Manager', 'iti', 'oihoi', NULL),
(33, 'Admin', 'yvan@gmail.com', '1234', NULL),
(35, 'Warehouse Staff', 'nestor@gmail.com', '1234', NULL),
(38, 'Admin', 'lea', 'lea', NULL),
(39, 'Admin', 'are', 'rea', NULL),
(40, 'Warehouse Staff', 'rean', 'aze', NULL),
(41, 'Stock Manager', 'orela', 'AZER', NULL),
(42, 'Stock Manager', 'sted', 'ytdt', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `price_man`
--
ALTER TABLE `price_man`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `stock_man`
--
ALTER TABLE `stock_man`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `price_man`
--
ALTER TABLE `price_man`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stock_man`
--
ALTER TABLE `stock_man`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

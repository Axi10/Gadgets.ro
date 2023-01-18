-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2023 at 12:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gadget_ro`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesorii`
--

CREATE TABLE `accesorii` (
  `id` int(11) NOT NULL,
  `nume` varchar(255) NOT NULL,
  `pret` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accesorii`
--

INSERT INTO `accesorii` (`id`, `nume`, `pret`, `data`) VALUES
(1, 'Xiaomi Mi Smart Watch', '89,00 RON', '2019-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `altele`
--

CREATE TABLE `altele` (
  `id` int(11) NOT NULL,
  `nume` varchar(255) NOT NULL,
  `pret` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `altele`
--

INSERT INTO `altele` (`id`, `nume`, `pret`, `data`) VALUES
(1, 'Huawei P30 ', '2000,00 RON', '2021-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `iphone`
--

CREATE TABLE `iphone` (
  `id` int(11) NOT NULL,
  `nume` varchar(255) NOT NULL,
  `pret` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `iphone`
--

INSERT INTO `iphone` (`id`, `nume`, `pret`, `data`) VALUES
(1, 'iPhone X', '2500,00 RON', '2017-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `samsung`
--

CREATE TABLE `samsung` (
  `id` int(11) NOT NULL,
  `nume` varchar(255) NOT NULL,
  `pret` varchar(255) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `samsung`
--

INSERT INTO `samsung` (`id`, `nume`, `pret`, `data`) VALUES
(1, 'Samsung A32', '1000,00 RON', '2020-07-17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `surname`) VALUES
(1, 'test1@test.com', 'test', 'Ion', 'Craciun');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accesorii`
--
ALTER TABLE `accesorii`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `altele`
--
ALTER TABLE `altele`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iphone`
--
ALTER TABLE `iphone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `samsung`
--
ALTER TABLE `samsung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accesorii`
--
ALTER TABLE `accesorii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `altele`
--
ALTER TABLE `altele`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iphone`
--
ALTER TABLE `iphone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `samsung`
--
ALTER TABLE `samsung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

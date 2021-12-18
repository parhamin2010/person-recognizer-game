-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 11:20 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `person_recognizer`
--

-- --------------------------------------------------------

--
-- Table structure for table `difficulties`
--

CREATE TABLE `difficulties` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `level_name` varchar(255) NOT NULL,
  `showing_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `difficulties`
--

INSERT INTO `difficulties` (`id`, `level`, `level_name`, `showing_text`) VALUES
(1, 1, 'easy', 'Kitty'),
(2, 2, 'medium', 'Humanly'),
(3, 3, 'hard', 'Brain Blasting');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_address` varchar(255) NOT NULL,
  `nation` int(11) NOT NULL,
  `difficulties` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_address`, `nation`, `difficulties`) VALUES
(1, 'imgs/faces/f1.png', 1, 1),
(2, 'imgs/faces/f2.png', 1, 1),
(4, 'imgs/faces/f3.png', 1, 1),
(5, 'imgs/faces/f4.png', 1, 1),
(6, 'imgs/faces/f5.png', 1, 1),
(7, 'imgs/faces/f6.png', 1, 1),
(8, 'imgs/faces/f7.png', 1, 1),
(9, 'imgs/faces/f8.png', 1, 1),
(10, 'imgs/faces/f9.png', 1, 1),
(11, 'imgs/faces/f10.png', 1, 1),
(12, 'imgs/faces/f11.png', 1, 1),
(13, 'imgs/faces/f12.png', 1, 1),
(14, 'imgs/faces/f13.png', 1, 1),
(15, 'imgs/faces/f14.png', 1, 1),
(16, 'imgs/faces/f15.png', 1, 1),
(17, 'imgs/faces/f16.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nations`
--

CREATE TABLE `nations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nations`
--

INSERT INTO `nations` (`id`, `name`) VALUES
(1, 'china'),
(2, 'japon'),
(3, 'tailand'),
(4, 'korea');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `setting_index` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `difficulties`
--
ALTER TABLE `difficulties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nations`
--
ALTER TABLE `nations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `difficulties`
--
ALTER TABLE `difficulties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

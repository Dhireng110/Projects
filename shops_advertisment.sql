-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2016 at 05:14 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shops_advertisment`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categories_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categories_name`) VALUES
(1, 'Jwellery shops'),
(2, 'Clothing shops'),
(3, 'General shops'),
(4, 'Hardware shops'),
(6, 'Stationary shops');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `location_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location_name`) VALUES
(1, 'Mulund'),
(2, 'Nahur'),
(3, 'Bhandup'),
(4, 'Kanjurmarg'),
(5, 'Vikhroli'),
(6, 'Ghatkoper'),
(7, 'Kurla'),
(8, 'Sion');

-- --------------------------------------------------------

--
-- Table structure for table `shop info`
--

CREATE TABLE `shop info` (
  `shopid` int(11) NOT NULL,
  `shop name` varchar(12) NOT NULL,
  `shop address` varchar(20) NOT NULL,
  `shop licence no` varchar(10) NOT NULL,
  `specialinfo` int(11) NOT NULL,
  `shopkepeer_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shopkeeperinfo`
--

CREATE TABLE `shopkeeperinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone no` varchar(12) NOT NULL,
  `dob` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopkeeperinfo`
--

INSERT INTO `shopkeeperinfo` (`id`, `name`, `email`, `password`, `phone no`, `dob`) VALUES
(3, 'admin', 'dhiren.gangani@somai', 'dfghjk', '6524512', '8512'),
(4, 'admin', 'dhiren.gangani@somai', 'dfghjnk', '6524512', '8512'),
(5, 'admin', 'dhiren.gangani@somai', 'dfghjnk', '6524512', '8512'),
(6, 'admin', 'dhiren.gangani@somai', 'wesfdgthy', '6524512', '8512'),
(7, 'admin', 'dhiren.gangani@somai', 'wesfdgthy', '6524512', '8512'),
(8, 'admin', 'dhiren.gangani@somai', '234ergdf', '6524512', '8512'),
(9, 'suraj', 'dhiren.gangani@somai', 'dsafdgb', '95251251', '8512'),
(10, 'asdsv', 'kavit.v@somaiya.edu', 'asfdfgfb', '962395623', '5120');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop info`
--
ALTER TABLE `shop info`
  ADD PRIMARY KEY (`shopid`),
  ADD KEY `shopkepeer_id` (`shopkepeer_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `location_id` (`location_id`);

--
-- Indexes for table `shopkeeperinfo`
--
ALTER TABLE `shopkeeperinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `shop info`
--
ALTER TABLE `shop info`
  MODIFY `shopid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shopkeeperinfo`
--
ALTER TABLE `shopkeeperinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `shop info`
--
ALTER TABLE `shop info`
  ADD CONSTRAINT `shop info_ibfk_1` FOREIGN KEY (`shopkepeer_id`) REFERENCES `shopkeeperinfo` (`id`),
  ADD CONSTRAINT `shop info_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `shop info_ibfk_3` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

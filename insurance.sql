-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2022 at 07:29 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `addpolicy`
--

CREATE TABLE `addpolicy` (
  `policyname` varchar(50) NOT NULL,
  `pid` int(20) NOT NULL,
  `dis` varchar(100) NOT NULL,
  `mnthlypay` int(20) NOT NULL,
  `cid` int(50) NOT NULL,
  `id` int(50) NOT NULL,
  `ptype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addpolicy`
--

INSERT INTO `addpolicy` (`policyname`, `pid`, `dis`, `mnthlypay`, `cid`, `id`, `ptype`) VALUES
('Dhoom', 10001, 'VEHICLE INSURANCE SCEME', 1500, 5, 3, 'vehicle insurance'),
(' Life Saral Pension', 10002, 'Life insurance sceme', 2000, 5, 4, 'Term insurance.');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `shopname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `longt` varchar(10) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `username` varchar(50) NOT NULL,
  `usermobile` int(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `id` int(255) NOT NULL,
  `rs` varchar(50) NOT NULL DEFAULT 'notpayed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`shopname`, `email`, `mobile`, `city`, `lat`, `longt`, `status`, `username`, `usermobile`, `useremail`, `time`, `id`, `rs`) VALUES
('Reliance General Insurance', 'Reliance@gamil.com', 2147483647, 'kollam', '', '', 'approved', 'anaz', 2147483647, 'anazksunil@gmail.com', '2022-4-28 13:0:50', 20, ''),
('Reliance General Insurance', 'Reliance@gamil.com', 2147483647, 'kollam', '', '', 'approved', 'anaz', 2147483647, 'anazksunil@gmail.com', '2022-4-28 13:14:34', 21, 'notpayed'),
('Reliance General Insurance', 'Reliance@gamil.com', 2147483647, 'kollam', '', '', 'approved', 'anaz', 2147483647, 'anazksunil@gmail.com', '2022-4-28 13:15:36', 22, 'notpayed'),
('Reliance General Insurance', 'Reliance@gamil.com', 2147483647, 'kollam', '', '', 'pending', 'anaz', 2147483647, 'anazksunil@gmail.com', '2022-4-28 13:20:48', 23, 'notpayed'),
('Reliance General Insurance', 'Reliance@gamil.com', 2147483647, 'kollam', '', '', 'pending', 'anaz', 2147483647, 'anazksunil@gmail.com', '2022-4-29 10:33:26', 24, 'notpayed');

-- --------------------------------------------------------

--
-- Table structure for table `mechanics`
--

CREATE TABLE `mechanics` (
  `ShopName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` int(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cpassword` varchar(100) NOT NULL,
  `id` int(10) NOT NULL,
  `city` varchar(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mechanics`
--

INSERT INTO `mechanics` (`ShopName`, `email`, `mobile`, `password`, `cpassword`, `id`, `city`, `status`) VALUES
('Reliance General Insurance', 'Reliance@gamil.com', 2147483647, '111', '111', 5, 'kollam', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `rider`
--

CREATE TABLE `rider` (
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `mobile` int(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `repassword2` varchar(255) NOT NULL,
  `id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rider`
--

INSERT INTO `rider` (`email`, `username`, `mobile`, `password`, `repassword2`, `id`) VALUES
('anazksunil@gmail.com', 'anaz2', 2147483647, '111', '111', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addpolicy`
--
ALTER TABLE `addpolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mechanics`
--
ALTER TABLE `mechanics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addpolicy`
--
ALTER TABLE `addpolicy`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `mechanics`
--
ALTER TABLE `mechanics`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rider`
--
ALTER TABLE `rider`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

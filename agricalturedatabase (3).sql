-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 02:02 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agricalturedatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `advice`
--

CREATE TABLE `advice` (
  `faadharNumber` varchar(12) DEFAULT NULL,
  `phoneNumber` varchar(10) DEFAULT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  `answerby` varchar(10) DEFAULT NULL,
  `problem` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advice`
--

INSERT INTO `advice` (`faadharNumber`, `phoneNumber`, `emailid`, `answerby`, `problem`) VALUES
('981298129812', '9812981245', 'pushpakgill9@gmail.com', 'Call', '  How can plant breeding and biotechnology be used to develop crop varieties that are resistant to pests and diseases, drought-tolerant, and have higher yields?');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `aadharNumber` varchar(50) DEFAULT NULL,
  `accountNumber` varchar(10) DEFAULT NULL,
  `ifsc` varchar(10) DEFAULT NULL,
  `accholdername` varchar(50) DEFAULT NULL,
  `bankName` varchar(50) DEFAULT NULL,
  `branchName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`aadharNumber`, `accountNumber`, `ifsc`, `accholdername`, `bankName`, `branchName`) VALUES
('981298129812', '9812981212', 'SBIN12112', 'Pushpak', 'SBI', 'Jui');

-- --------------------------------------------------------

--
-- Table structure for table `cropsell`
--

CREATE TABLE `cropsell` (
  `aadharNumber` varchar(50) NOT NULL,
  `cropType` varchar(50) DEFAULT NULL,
  `cropName` varchar(50) NOT NULL,
  `cropArea` float DEFAULT NULL,
  `owner` varchar(50) DEFAULT NULL,
  `ownerName` varchar(50) DEFAULT NULL,
  `land` varchar(50) DEFAULT NULL,
  `careapart` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cropsell`
--

INSERT INTO `cropsell` (`aadharNumber`, `cropType`, `cropName`, `cropArea`, `owner`, `ownerName`, `land`, `careapart`) VALUES
('981298129812', 'Rabbi', 'Rice', 2, 'self', 'Pushpak', 'LD121', 'full');

-- --------------------------------------------------------

--
-- Table structure for table `farmer_login`
--

CREATE TABLE `farmer_login` (
  `id` int(11) NOT NULL,
  `aadharNumber` varchar(12) NOT NULL,
  `namee` varchar(50) NOT NULL,
  `emailAddress` varchar(50) NOT NULL,
  `email_verified` varchar(100) NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `vilBlock` varchar(50) NOT NULL,
  `distt` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cpassword` varchar(12) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `farmer_login`
--

INSERT INTO `farmer_login` (`id`, `aadharNumber`, `namee`, `emailAddress`, `email_verified`, `phoneNumber`, `vilBlock`, `distt`, `state`, `password`, `cpassword`, `dt`) VALUES
(20, '981298129812', 'Pushpak', 'pushpakgill@gmail.com', '', '9315285740', 'Ladawas Badra', 'Charkhi Dadri', 'Karnataka', '1234567890qw', '1234567890qw', '2023-05-09 13:48:01'),
(22, '981234981243', 'Krishan Yadav', 'pushpakgill@gmail.com', '', '9315285740', 'Ladawas', 'Charkhi Dadri', 'Karnataka', '0987654321qwe', '0987654321qw', '2023-05-09 14:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `land`
--

CREATE TABLE `land` (
  `emailid` varchar(50) DEFAULT NULL,
  `aadharofpc` varchar(12) DEFAULT NULL,
  `landid` varchar(50) DEFAULT NULL,
  `landarea` varchar(10) DEFAULT NULL,
  `docverficationcenter` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `land`
--

INSERT INTO `land` (`emailid`, `aadharofpc`, `landid`, `landarea`, `docverficationcenter`) VALUES
('pushpakgill@gmail.com', '23454321', 'LD8932', '2', 'Karkla');

-- --------------------------------------------------------

--
-- Table structure for table `newdetails`
--

CREATE TABLE `newdetails` (
  `aadharNumber` varchar(12) DEFAULT NULL,
  `cropName` varchar(50) DEFAULT NULL,
  `seedName` varchar(50) DEFAULT NULL,
  `cropYear` int(11) NOT NULL,
  `cropMonth` varchar(15) NOT NULL,
  `showingDate` date DEFAULT NULL,
  `harvestingDate` date DEFAULT NULL,
  `wateringNumber` int(11) DEFAULT NULL,
  `cropType` varchar(10) DEFAULT NULL,
  `fertilizers` varchar(1000) DEFAULT NULL,
  `cropYeild` varchar(10) DEFAULT NULL,
  `investment` varchar(10) DEFAULT NULL,
  `income` varchar(10) DEFAULT NULL,
  `landid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newdetails`
--

INSERT INTO `newdetails` (`aadharNumber`, `cropName`, `seedName`, `cropYear`, `cropMonth`, `showingDate`, `harvestingDate`, `wateringNumber`, `cropType`, `fertilizers`, `cropYeild`, `investment`, `income`, `landid`) VALUES
('981298129812', 'Rice', 'RI101', 2011, 'May', '2023-05-02', '2023-06-03', 2, 'Rabbi', 'Urea,DAP', '2.2tone', '1000', '10000', 'LDIN02'),
('981298129812', 'Wheat', 'CON234', 2011, 'June', '2023-05-12', '2023-05-13', 2, 'Kharif', 'Urea,DAP', '2000KG', '1000', '12345', 'LDL212'),
('981298129812', 'Mustard', 'MS101', 2012, 'July', '2023-07-01', '2023-09-10', 2, 'Rabbi', 'Urea,DAP', '2.2tone', '1000', '10000', 'LDL212');

-- --------------------------------------------------------

--
-- Table structure for table `officer_login`
--

CREATE TABLE `officer_login` (
  `govid` varchar(10) NOT NULL,
  `officername` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `salary` bigint(20) NOT NULL,
  `phonenum` bigint(20) NOT NULL,
  `emailaddr` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `officer_login`
--

INSERT INTO `officer_login` (`govid`, `officername`, `gender`, `salary`, `phonenum`, `emailaddr`, `password`) VALUES
('GOV1234567', 'Shyam Parshad', 'Male', 120000, 8912348912, 'shyamparshad12@gmail.com', '1234567890qw');

-- --------------------------------------------------------

--
-- Table structure for table `verify`
--

CREATE TABLE `verify` (
  `id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `emailAddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cropsell`
--
ALTER TABLE `cropsell`
  ADD PRIMARY KEY (`cropName`);

--
-- Indexes for table `farmer_login`
--
ALTER TABLE `farmer_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aadharNumber` (`aadharNumber`),
  ADD KEY `emailAddress` (`emailAddress`),
  ADD KEY `dt` (`dt`);

--
-- Indexes for table `newdetails`
--
ALTER TABLE `newdetails`
  ADD PRIMARY KEY (`landid`,`cropYear`,`cropMonth`);

--
-- Indexes for table `officer_login`
--
ALTER TABLE `officer_login`
  ADD PRIMARY KEY (`govid`);

--
-- Indexes for table `verify`
--
ALTER TABLE `verify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `code` (`code`),
  ADD KEY `expires` (`expires`),
  ADD KEY `emailAddress` (`emailAddress`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `farmer_login`
--
ALTER TABLE `farmer_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `verify`
--
ALTER TABLE `verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

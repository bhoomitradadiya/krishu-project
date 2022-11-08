-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 05:05 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tours`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `profilePicture` varchar(30) DEFAULT NULL,
  `mobileNumber` varchar(13) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `firstName`, `lastName`, `profilePicture`, `mobileNumber`, `email`, `password`, `created`, `updated`, `delete`) VALUES
(1, 'bhumit', 'radadiya', NULL, '9726546160', 'bhoomitradadiya@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-10-28 12:28:15', '2022-10-28 12:28:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `packageId` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `bookingDate` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: pending\r\n1: running\r\n2: completed\r\n3: canceled',
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingId`, `userId`, `packageId`, `price`, `date`, `bookingDate`, `status`, `created`, `updated`, `delete`) VALUES
(1, 1, 1, 2500, '0000-00-00', '0000-00-00', 0, '2022-11-06 14:32:26', '2022-11-06 14:32:26', 0),
(2, 1, 1, 2500, '2022-11-06', '2022-11-06', 0, '2022-11-06 14:33:30', '2022-11-06 14:33:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `inquiryId` int(11) NOT NULL,
  `fullName` varchar(60) DEFAULT NULL,
  `mobileNumber` varchar(13) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `packageId` int(11) NOT NULL,
  `packageName` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`packageId`, `packageName`, `description`, `day`, `price`, `active`, `created`, `updated`, `delete`) VALUES
(1, 'bombay special', 'rebdgjkdfnkbdsi beiw rhebskbuweifbg ihkn.RFI RK BIJDEFJKDBFEJK BRU MF BJNFJK', 3, 2500, 1, '2022-10-28 05:22:55', '2022-11-07 02:13:43', 0),
(2, 'taj special', 'etwdjfjdbj nje m,gbgjk dsm,g jk gkjs gsdgj sd fjksdjk gnwjef jkdnmf ndjlng fmdnfdfn m,dnjjk njktnjkd njen gjn', 4, 15000, 1, '2022-10-28 05:22:55', '2022-11-07 02:13:49', 0),
(3, 'test', 'fdsfsfdsvdsf', 1, 1200, 0, '2022-11-06 18:34:39', '2022-11-07 02:13:52', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `packageId` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `lastName` varchar(30) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobileNumber` varchar(13) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `firstName`, `lastName`, `email`, `mobileNumber`, `password`, `created`, `updated`, `delete`) VALUES
(1, 'bhumit', 'radadiya', 'bn1radadiya@gmail.com', '9726546160', '91ec91692e7b275a5673f53e588fd522', '2022-11-06 10:08:17', '2022-11-06 10:08:17', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingId`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`inquiryId`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`packageId`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `inquiryId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `packageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

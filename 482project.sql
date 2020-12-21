-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2018 at 10:56 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `311project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(13) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `role` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `pass`, `role`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(13) NOT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `contact` varchar(120) DEFAULT NULL,
  `sms` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `contact`, `sms`) VALUES
(1, 'Salman Rahman Auvi', 'salman.auvi@northsouth.edu', 'Vaturia ,Uttarkhan,Dhaka', '1686235902'),
(3, 'Himel Ahmed', 'himel.mahamud007@gmail.com', 'duuid', '1858723528');

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `id` int(13) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(130) NOT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `car_number` varchar(70) DEFAULT NULL,
  `quantity` int(3) DEFAULT NULL,
  `Start` date NOT NULL,
  `mytime` varchar(60) NOT NULL,
  `finish` date NOT NULL,
  `total_cost` int(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`id`, `name`, `email`, `phone`, `car_number`, `quantity`, `Start`, `mytime`, `finish`, `total_cost`) VALUES
(2, 'Himel Ahmed', 'himel.mahamud007@gmail.com', '01676', '0Ab1', 100, '2018-04-05', '10:54:51pm', '2018-05-05', 100000),
(1, 'Salman Rahman Auvi', 'salman.auvi@gmail.com', '01686235902', '4478', 2, '2018-03-30', '10:39:20pm', '2018-04-29', 2000),
(4, 'Syeda Benazir', 'sayeda.benazir@gmail.com', '0168', '123', 1, '2018-04-07', '10:39:40am', '2018-05-07', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(13) DEFAULT NULL,
  `email` varchar(130) NOT NULL,
  `car_number` varchar(70) DEFAULT NULL,
  `quantity` int(3) DEFAULT NULL,
  `Start` date NOT NULL,
  `mytime` time NOT NULL,
  `finish` date NOT NULL,
  `parking_location` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `email`, `car_number`, `quantity`, `Start`, `mytime`, `finish`, `parking_location`, `transaction_id`, `status`) VALUES
(2, 'himel.mahamud007@gmail.com', '0Ab1', 100, '2018-04-06', '08:53:54', '2018-05-06', 'Uttara', '3013', 'Paid'),
(1, 'salman.auvi@gmail.com', '4478', 2, '2018-04-06', '08:50:56', '2018-05-06', 'Nac 4201', '9577', 'Paid'),
(4, 'sayeda.benazir@gmail.com', '123', 1, '2018-04-07', '10:41:56', '2018-05-07', 'nsu', '3935', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `paid`
--

CREATE TABLE `paid` (
  `id` int(13) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(130) NOT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `car_number` varchar(70) DEFAULT NULL,
  `quantity` int(3) DEFAULT NULL,
  `Start` date NOT NULL,
  `mytime` varchar(60) NOT NULL,
  `finish` date NOT NULL,
  `total_cost` int(16) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paid`
--

INSERT INTO `paid` (`id`, `name`, `email`, `phone`, `car_number`, `quantity`, `Start`, `mytime`, `finish`, `total_cost`, `transaction_id`, `status`) VALUES
(1, 'Salman Rahman Auvi', 'salman.auvi@gmail.com', '01686235902', '4478', 2, '2018-04-06', '08:50:56pm', '2018-05-06', 2000, '9577', 'Paid'),
(4, 'Syeda Benazir', 'sayeda.benazir@gmail.com', '0168', '123', 1, '2018-04-07', '10:41:56am', '2018-05-07', 1000, '3935', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `parking_info`
--

CREATE TABLE `parking_info` (
  `id` int(13) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(130) NOT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `car_number` varchar(70) DEFAULT NULL,
  `car_color` varchar(19) DEFAULT NULL,
  `car_model` varchar(150) DEFAULT NULL,
  `quantity` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parking_info`
--

INSERT INTO `parking_info` (`id`, `name`, `email`, `phone`, `car_number`, `car_color`, `car_model`, `quantity`) VALUES
(2, 'Himel Ahmed', 'himel.mahamud007@gmail.com', '01676', '0Ab1', 'Merun', '22A5', 100),
(1, 'Salman Rahman Auvi', 'salman.auvi@gmail.com', '01686235902', '4478', 'Black', 'M2A0I', 2),
(4, 'Syeda Benazir', 'sayeda.benazir@gmail.com', '0168', '123', 'Black', 'M2A0I1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(7) NOT NULL,
  `name` varchar(90) NOT NULL,
  `url` text NOT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `name`, `url`, `title`, `content`) VALUES
(6, 'admin', '?page=6683', 'à¦®à¦¹à¦¾à¦¸à§œà¦•à§‡ à¦Ÿà§à¦°à¦¾à¦•à§‡à¦° à¦•à¦¾à¦—à¦œà¦ªà¦¤à§à¦° à¦¦à§‡à¦–à¦¤à§‡ à¦—à¦¿à§Ÿà§‡ à¦Ÿà§à¦°à¦¾à¦«à¦¿à¦• à¦ªà§à¦²à¦¿à¦¶à§‡à¦° à¦à¦• à¦¸à¦¾à¦°à§à¦œà§‡à¦¨à§à¦Ÿ ', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦Ÿà§à¦°à¦¾à¦•à¦¶à§à¦°à¦®à¦¿à¦•à¦¦à§‡à¦° à¦…à¦­à¦¿à¦¯à§‹à¦—, à¦¸à¦¾à¦°à§à¦œà§‡à¦¨à§à¦Ÿ à¦°à¦¬à¦¿à¦‰à¦² à¦‡à¦¸à¦²à¦¾à¦® à¦—à¦¾à§œà¦¿à¦° à¦•à¦¾à¦—à¦œà¦ªà¦¤à§à¦° à¦¦à§‡à¦–à¦¾à¦° à¦¨à¦¾à¦®à§‡ à¦šà¦¾à¦à¦¦à¦¾à¦¬à¦¾à¦œà¦¿ à¦•à¦°à¦›à¦¿à¦²à§‡à¦¨à¥¤ à¦¤à¦¬à§‡ à¦°à¦¬à¦¿à¦‰à¦² à¦¬à¦²à¦›à§‡à¦¨, à¦Ÿà§à¦°à¦¾à¦•à§‡à¦° à¦¬à§ˆà¦§ à¦•à¦¾à¦—à¦œà¦ªà¦¤à§à¦° à¦›à¦¿à¦² à¦¨à¦¾ à¦¬à¦²à§‡ à¦®à¦¾à¦®à¦²à¦¾ à¦¦à¦¿à¦¤à§‡ à¦—à§‡à¦²à§‡ à¦¶à§à¦°à¦®à¦¿à¦•à§‡à¦°à¦¾ à¦¤à¦¾à¦à¦° à¦“à¦ªà¦° à¦¹à¦¾à¦®à¦²à¦¾ à¦•à¦°à§‡à¦¨à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦ªà§à¦°à¦¤à§à¦¯à¦•à§à¦·à¦¦à¦°à§à¦¶à§€à¦¦à§‡à¦° à¦¸à§‚à¦¤à§à¦°à§‡ à¦œà¦¾à¦¨à¦¾ à¦—à§‡à¦›à§‡, à¦à¦•à¦Ÿà¦¿ à¦Ÿà§à¦°à¦¾à¦• à¦¬à¦¿à¦•à§‡à¦² à¦ªà¦¾à¦à¦šà¦Ÿà¦¾à¦° à¦¦à¦¿à¦•à§‡ à¦°à¦¾à¦œà¦¶à¦¾à¦¹à§€ à¦¨à¦—à¦°à§‡à¦° à¦†à¦®à¦šà¦¤à§à¦¬à¦° à¦¹à§Ÿà§‡ à¦¬à¦¾à¦‡à¦ªà¦¾à¦¸ à¦¸à§œà¦• à¦¦à¦¿à§Ÿà§‡ à¦¨à¦¾à¦Ÿà§‹à¦°à§‡à¦° à¦¦à¦¿à¦•à§‡ à¦¯à¦¾à¦šà§à¦›à¦¿à¦²à¥¤ à¦ à¦¸à¦®à§Ÿ à¦®à¦¹à¦¿à¦²à¦¾ à¦ªà¦²à¦¿à¦Ÿà§‡à¦•à¦¨à¦¿à¦• à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿà§‡à¦° à¦¸à¦¾à¦®à¦¨à§‡ à¦Ÿà§à¦°à¦¾à¦•à¦Ÿà¦¿à¦° à¦—à¦¤à¦¿ à¦°à§‹à¦§ à¦•à¦°à§‡ à¦¸à¦¾à¦°à§à¦œà§‡à¦¨à§à¦Ÿ à¦°à¦¬à¦¿à¦‰à¦² à¦‡à¦¸à¦²à¦¾à¦® à¦•à¦¾à¦—à¦œà¦ªà¦¤à§à¦° à¦¦à§‡à¦–à¦¤à§‡ à¦šà¦¾à¦¨à¥¤ à¦ à¦¨à¦¿à§Ÿà§‡ à¦šà¦¾à¦²à¦• à¦“ à¦¶à§à¦°à¦®à¦¿à¦•à¦¦à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦¤à¦¾à¦à¦° à¦¬à¦¿à¦¤à¦°à§à¦• à¦¹à§Ÿà¥¤ à¦à¦•à¦ªà¦°à§à¦¯à¦¾à§Ÿà§‡ à¦¶à§à¦°à¦®à¦¿à¦•à§‡à¦°à¦¾ à¦¸à¦‚à¦˜à¦¬à¦¦à§à¦§ à¦¹à§Ÿà§‡ à¦¸à¦¾à¦°à§à¦œà§‡à¦¨à§à¦Ÿà¦•à§‡ à¦ªà¦¿à¦Ÿà§à¦¨à¦¿ à¦¦à§‡à¦¨à¥¤ à¦ªà¦°à§‡ à¦…à¦¨à§à¦¯ à¦ªà§à¦²à¦¿à¦¶ à¦¸à¦¦à¦¸à§à¦¯à¦°à¦¾ à¦—à¦¿à§Ÿà§‡ à¦¤à¦¾à¦à¦•à§‡ à¦‰à¦¦à§à¦§à¦¾à¦° à¦•à¦°à§‡à¦¨à¥¤</p>'),
(7, 'admin', '?page=5613', 'à¦¸à§à¦¥à¦¾à¦¨à§€à§Ÿ à¦²à§‹à¦•à¦œà¦¨ à¦†à¦°à¦“ à¦œà¦¾à¦¨à¦¾à¦¨', '<p><span style=\"font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: #f0f0ed;\">à¦†à¦¹à¦¤ à¦ªà§à¦²à¦¿à¦¶ à¦¸à¦¾à¦°à§à¦œà§‡à¦¨à§à¦Ÿà¦•à§‡ à¦‰à¦¦à§à¦§à¦¾à¦° à¦•à¦°à§‡ à¦°à¦¾à¦œà¦¶à¦¾à¦¹à§€ à¦®à§‡à¦¡à¦¿à¦•à§‡à¦² à¦•à¦²à§‡à¦œ à¦¹à¦¾à¦¸à¦ªà¦¾à¦¤à¦¾à¦²à§‡ à¦­à¦°à§à¦¤à¦¿ à¦•à¦°à¦¾ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦¤à¦¿à¦¨à¦¿ à¦ªà§à¦°à¦¥à¦® à¦†à¦²à§‹à¦•à§‡ à¦¬à¦²à§‡à¦¨, à¦—à¦¾à§œà¦¿à¦° (à¦›à§‹à¦Ÿ à¦Ÿà§à¦°à¦¾à¦•) à¦•à§‹à¦¨à§‹ à¦•à¦¾à¦—à¦œà¦ªà¦¤à§à¦° à¦›à¦¿à¦² à¦¨à¦¾à¥¤ à¦¤à¦¿à¦¨à¦¿ à¦®à§‹à¦Ÿà¦°à¦¸à¦¾à¦‡à¦•à§‡à¦²à§‡à¦° à¦“à¦ªà¦°à§‡ à¦¬à¦¸à§‡ à¦®à¦¾à¦®à¦²à¦¾ à¦¦à§‡à¦“à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¦•à¦¾à¦—à¦œà¦ªà¦¤à§à¦° à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤ à¦•à¦°à¦›à¦¿à¦²à§‡à¦¨à¥¤ à¦ à¦¸à¦®à§Ÿ à¦¶à§à¦°à¦®à¦¿à¦•à§‡à¦°à¦¾ à¦¸à¦‚à¦˜à¦¬à¦¦à§à¦§ à¦¹à§Ÿà§‡ à¦¤à¦¾à¦à¦° à¦“à¦ªà¦° à¦¹à¦¾à¦®à¦²à¦¾ à¦šà¦¾à¦²à¦¾à¦¨à¥¤ à¦¤à¦¿à¦¨à¦¿ à¦¬à¦²à§‡à¦¨, à¦à¦–à¦¾à¦¨à§‡ à¦šà¦¾à¦à¦¦à¦¾ à¦šà¦¾à¦“à§Ÿà¦¾à¦° à¦•à§‹à¦¨à§‹ à¦˜à¦Ÿà¦¨à¦¾à¦‡ à¦¨à§‡à¦‡à¥¤ à¦¤à¦¾à¦à¦°à¦¾ à¦¤à¦¾à¦à¦¦à§‡à¦° à¦•à§à¦·à¦®à¦¤à¦¾ à¦¦à§‡à¦–à¦¿à§Ÿà§‡à¦›à§‡à¦¨à¥¤</span></p>'),
(8, 'ADMIN', '?page=5977', 'à¦†à¦¤à§à¦®à¦˜à¦¾à¦¤à¦¿ à¦—à§‹à¦²à§‡ à¦°à¦•à§à¦·à¦¾ à¦ªà§‡à¦² à¦ªà¦¿à¦à¦¸à¦œà¦¿', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #e8f5e9;\">à¦«à§à¦°à§‡à¦žà§à¦š à¦²à¦¿à¦—à§‡ à¦¶à§‡à¦· à¦›à§Ÿ à¦®à§à¦¯à¦¾à¦šà§‡à¦‡ à¦œà§Ÿ à¦ªà§‡à§Ÿà§‡à¦›à§‡ à¦ªà¦¿à¦à¦¸à¦œà¦¿à¥¤ à¦à¦–à¦¨à§‹ à¦ªà§Ÿà§‡à¦¨à§à¦Ÿ à¦Ÿà§‡à¦¬à¦¿à¦²à§‡à¦° à¦¶à§€à¦°à§à¦·à¦¸à§à¦¥à¦¾à¦¨ à¦§à¦°à§‡ à¦°à§‡à¦–à§‡à¦›à§‡ à¦¨à§‡à¦‡à¦®à¦¾à¦°à§‡à¦° à¦à¦‡ à¦•à§à¦²à¦¾à¦¬à¥¤ à¦†à¦œà¦•à§‡à¦° à¦–à§‡à¦²à¦¾à§Ÿ à¦¤à¦¾à¦²à¦¿à¦•à¦¾à¦° à§¯ à¦¨à¦®à§à¦¬à¦°à§‡ à¦¥à¦¾à¦•à¦¾ à¦¸à§‡à¦¨à§à¦Ÿ à¦à¦¤à¦¿à§Ÿà¦¾à¦¨à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦¹à§‡à¦°à§‡ à¦œà§Ÿà¦°à¦¥ à¦¥à§‡à¦®à§‡à¦‡ à¦—à¦¿à§Ÿà§‡à¦›à¦¿à¦²! à¦ªà§à¦°à¦¤à¦¿à¦ªà¦•à§à¦·à§‡à¦° à¦¡à¦¿à¦«à§‡à¦¨à§à¦¡à¦¾à¦° à¦®à§à¦¯à¦¾à¦¥à§ à¦¦à¦¿à¦¬à§à¦¶à¦¿à¦° à¦…à¦®à¦¨ à¦†à¦¤à§à¦®à¦˜à¦¾à¦¤à¦¿ à¦—à§‹à¦² à¦¨à¦¾ à¦¹à¦²à§‡ à¦¶à§‡à¦· à¦°à¦•à§à¦·à¦¾ à¦¹à¦¤à§‹ à¦¨à¦¾ à¦«à§à¦°à§‡à¦žà§à¦š à¦œà¦¾à§Ÿà¦¾à¦¨à§à¦Ÿà¦¦à§‡à¦°à¥¤ à¦…à¦¨à§à¦¯à¦¦à¦¿à¦•à§‡ à¦®à§à¦¯à¦¾à¦šà§‡à¦° à¦¶à§‡à¦· à¦¯à§‹à¦— à¦¹à¦“à§Ÿà¦¾ à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡ à¦†à¦¤à§à¦®à¦˜à¦¾à¦¤à¦¿ à¦—à§‹à¦²à§‡ à¦¨à¦¿à¦œà§‡à¦¦à§‡à¦° à¦®à¦¾à¦ à§‡ à§§-à§§ à¦—à§‹à¦²à§‡à¦° à¦¡à§à¦° à¦¨à¦¿à§Ÿà§‡ à¦¸à¦¨à§à¦¤à§à¦·à§à¦Ÿ à¦¥à¦¾à¦•à¦¤à§‡ à¦¹à§Ÿ à¦à¦¤à¦¿à§Ÿà¦¾à¦¨à¦¦à§‡à¦°à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #e8f5e9;\">à¦¬à¦² à¦¦à¦–à¦²à§‡ à¦à¦—à¦¿à§Ÿà§‡ à¦¥à§‡à¦•à§‡à¦“ à¦à¦¤à¦¿à§Ÿà¦¾à¦¨à§‡à¦° à¦°à¦•à§à¦·à¦£à§‡ à¦­à§Ÿ à¦§à¦°à¦¾à¦£à§‹ à¦†à¦•à§à¦°à¦®à¦£à§‡ à¦¯à§‡à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¦¿ à¦ªà¦¿à¦à¦¸à¦œà¦¿à¥¤ à¦‰à¦²à§à¦Ÿà§‹ à¦®à§à¦¯à¦¾à¦šà§‡à¦° à¦¶à§à¦°à§à¦¤à§‡ à¦—à§‹à¦² à¦–à§‡à§Ÿà§‡ à¦ªà¦¿à¦›à¦¿à§Ÿà§‡ à¦¯à¦¾à§Ÿ à¦«à§à¦°à§‡à¦žà§à¦š à¦œà¦¾à§Ÿà¦¾à¦¨à§à¦Ÿà¦°à¦¾à¥¤ à§§à§­à¦¤à¦® à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡ à¦à¦¤à¦¿à§Ÿà¦¾à¦¨ à¦¡à¦¿à¦«à§‡à¦¨à§à¦¡à¦¾à¦° à¦®à§à¦¯à¦¾à¦¥à§ à¦¦à¦¿à¦¬à§à¦¶à¦¿à¦° à¦¦à§à¦°à§à¦¦à¦¾à¦¨à§à¦¤ à¦•à§à¦°à¦¸ à¦¥à§‡à¦•à§‡ à¦°à§‡à¦®à¦¿ à¦•à¦¾à¦¬à§‡à¦²à¦¾à¦° à¦¶à¦Ÿ à¦ªà¦¿à¦à¦¸à¦œà¦¿à¦° à¦œà¦¾à¦²à§‡ à¦œà§œà¦¾à¦²à§‡ à§§-à§¦ à¦—à§‹à¦²à§‡ à¦à¦—à¦¿à§Ÿà§‡ à¦¯à¦¾à§Ÿ à¦à¦¤à¦¿à§Ÿà¦¾à¦¨à¥¤ à§¨à§¦ à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡à¦° à¦®à¦¾à¦¥à¦¾à§Ÿ à¦†à¦¬à¦¾à¦°à¦“ à¦­à¦¾à¦²à§‹ à¦¸à§à¦¯à§‹à¦— à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§‡ à¦à¦¤à¦¿à§Ÿà¦¾à¦¨à¥¤ à¦¤à¦¬à§‡ à¦—à§‹à¦²à¦¸à¦‚à¦–à§à¦¯à¦¾ à¦¬à¦¾à§œà¦¾à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¦¨à¦¿ à¦¦à¦¿à¦¬à§à¦¶à¦¿-à¦¹à¦¾à¦®à§à¦®à§‹à¦°à¦¾à¥¤ à¦à¦°à¦ªà¦° à¦›à§‹à¦Ÿà¦–à¦¾à¦Ÿà§‹ à¦¸à§à¦¯à§‹à¦— à¦¤à§ˆà¦°à¦¿ à¦•à¦°à¦²à§‡à¦“ à¦—à§‹à¦²à§‡à¦° à¦¦à§‡à¦–à¦¾ à¦ªà¦¾à§Ÿà¦¨à¦¿ à¦ªà¦¿à¦à¦¸à¦œà¦¿à¥¤ à¦‰à¦²à§à¦Ÿà§‹ à¦®à§à¦¯à¦¾à¦šà§‡à¦° à§©à§¦à¦¤à¦® à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡ à¦ªà¦¿à¦à¦¸à¦œà¦¿à¦° à¦•à¦¿à¦®à¦ªà§‡à¦®à¦¬à§‡ à¦¨à¦¿à¦œà§‡à¦¦à§‡à¦° à¦¡à¦¿-à¦¬à¦•à§à¦¸à§‡ à¦¹à¦¾à¦®à§à¦®à§‹à¦°à¦¾à¦•à§‡ à¦ªà§‡à¦›à¦¨ à¦¥à§‡à¦•à§‡ à¦Ÿà§‡à¦¨à§‡ à¦§à¦°à¦²à§‡ à¦ªà§‡à¦¨à¦¾à¦²à§à¦Ÿà¦¿à¦° à¦«à¦¾à¦à¦¦à§‡ à¦ªà§œà§‡ à¦ªà¦¿à¦à¦¸à¦œà¦¿à¥¤ à¦•à¦¾à¦¬à§‡à¦²à¦¾à¦° à¦ªà§‡à¦¨à¦¾à¦²à§à¦Ÿà¦¿ à¦¶à¦Ÿ à¦ªà¦¿à¦à¦¸à¦œà¦¿à¦° à¦—à§‹à¦²à¦°à¦•à§à¦·à¦• à¦†à¦Ÿà¦•à§‡ à¦¨à¦¾ à¦¦à¦¿à¦²à§‡ à¦ªà§à¦°à¦¥à¦®à¦¾à¦°à§à¦§à§‡ à¦…à¦¨à§à¦¤à¦¤ à¦¦à§à¦‡ à¦—à§‹à¦² à¦¨à¦¿à§Ÿà§‡à¦‡ à¦®à¦¾à¦  à¦›à¦¾à§œà¦¤à§‡ à¦ªà¦¾à¦°à¦¤ à¦¸à§à¦¬à¦¾à¦—à¦¤à¦¿à¦• à¦à¦¤à¦¿à§Ÿà¦¾à¦¨à¥¤ à¦¸à§‡à¦Ÿà¦¾ à¦†à¦° à¦¹à§Ÿà¦¨à¦¿à¥¤ à¦¤à¦¬à§‡ à¦¬à§‡à¦¶ à¦•à§Ÿà§‡à¦•à¦¬à¦¾à¦° à¦­à¦¾à¦²à§‹ à¦¸à§à¦¯à§‹à¦— à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§‡à¦›à¦¿à¦² à¦«à¦°à¦¾à¦¸à¦¿ à¦à¦‡ à¦•à§à¦²à¦¾à¦¬à¦Ÿà¦¿à¥¤ à¦®à§à¦¯à¦¾à¦šà§‡à¦° à§ªà§§à¦¤à¦® à¦®à¦¿à¦¨à¦¿à¦Ÿà§‡ à¦†à¦¬à¦¾à¦°à¦“ à¦«à¦¾à¦‰à¦² à¦•à¦°à§‡à¦¨ à¦•à¦¿à¦®à¦ªà§‡à¦®à¦¬à§‡à¥¤ à¦¦à§à¦¬à¦¿à¦¤à§€à§Ÿ à¦¹à¦²à§à¦¦ à¦•à¦¾à¦°à§à¦¡ à¦¦à§‡à¦–à§‡ à¦¤à¦¿à¦¨à¦¿ à¦®à¦¾à¦  à¦›à¦¾à§œà¦²à§‡ à§§à§¦ à¦œà¦¨à§‡à¦° à¦¦à¦²à§‡ à¦ªà¦°à¦¿à¦£à¦¤ à¦¹à§Ÿ à¦ªà¦¿à¦à¦¸à¦œà¦¿à¥¤</p>'),
(9, 'ADMIN', '?page=3152', 'à¦¸à§Œà¦¦à¦¿à¦¤à§‡ à§§à§® à¦à¦ªà§à¦°à¦¿à¦² à¦¥à§‡à¦•à§‡ à¦¸à¦¿à¦¨à§‡à¦®à¦¾', '<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦¸à§Œà¦¦à¦¿ à¦†à¦°à¦¬à§‡ à¦¸à¦¾à§œà§‡ à¦¤à¦¿à¦¨ à¦¦à¦¶à¦•à§‡à¦° à¦¨à¦¿à¦·à§‡à¦§à¦¾à¦œà§à¦žà¦¾ à¦¤à§à¦²à§‡ à§§à§® à¦à¦ªà§à¦°à¦¿à¦² à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦¬à¦¾ à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦° à¦šà¦¾à¦²à§ à¦¹à¦šà§à¦›à§‡à¥¤ à¦°à¦¾à¦œà¦§à¦¾à¦¨à§€ à¦°à¦¿à§Ÿà¦¾à¦¦à§‡à¦° à¦•à¦¿à¦‚ à¦†à¦¬à¦¦à§à¦²à§à¦²à¦¾à¦¹ à¦«à¦¿à¦¨à§à¦¯à¦¾à¦¨à§à¦¸à¦¿à§Ÿà¦¾à¦² à¦œà§‡à¦²à¦¾à§Ÿ à¦—à¦¾à¦¨à§‡à¦° à¦•à¦¨à¦¸à¦¾à¦°à§à¦Ÿà§‡à¦° à¦œà¦¨à§à¦¯ à¦¬à¦¾à¦¨à¦¾à¦¨à§‹ à¦¹à¦²à§‡ à¦à¦¦à¦¿à¦¨ à¦ªà§à¦°à¦¥à¦® à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦ªà§à¦°à¦¦à¦°à§à¦¶à¦¨ à¦•à¦°à¦¾ à¦¹à¦¬à§‡à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦à¦•à¦Ÿà¦¿ à¦¸à§‚à¦¤à§à¦° à¦¬à¦¾à¦°à§à¦¤à¦¾ à¦¸à¦‚à¦¸à§à¦¥à¦¾ à¦°à§Ÿà¦Ÿà¦¾à¦°à§à¦¸à¦•à§‡ à¦œà¦¾à¦¨à¦¿à§Ÿà§‡à¦›à§‡, à¦ªà§à¦°à¦¥à¦® à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦¹à¦¬à§‡ à¦®à¦¾à¦°à¦­à§‡à¦²à§‡à¦° à¦¸à§à¦ªà¦¾à¦°à¦¹à¦¿à¦°à§‹ &lsquo;à¦¬à§à¦²à§à¦¯à¦¾à¦• à¦ªà§à¦¯à¦¾à¦¨à¦¥à¦¾à¦°&rsquo;à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦¸à§Œà¦¦à¦¿ à¦†à¦°à¦¬à§‡à¦° à¦°à¦¾à¦·à§à¦Ÿà§à¦°à§€à§Ÿ à¦—à¦£à¦®à¦¾à¦§à§à¦¯à¦® à¦à¦¸à¦ªà¦¿à¦ à¦—à¦¤ à¦¬à§à¦§à¦¬à¦¾à¦° à¦œà¦¾à¦¨à¦¾à§Ÿ, à¦¦à§‡à¦¶à§‡à¦° à¦ªà§à¦°à¦§à¦¾à¦¨ à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à¦†à¦°à§à¦¥à¦¿à¦• à¦¤à¦¹à¦¬à¦¿à¦² à¦ªà¦¾à¦¬à¦²à¦¿à¦• à¦‡à¦¨à¦­à§‡à¦¸à§à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦«à¦¾à¦¨à§à¦¡ (à¦ªà¦¿à¦†à¦‡à¦à¦«) à¦à¦à¦®à¦¸à¦¿ à¦à¦¨à§à¦Ÿà¦¾à¦°à¦Ÿà§‡à¦‡à¦¨à¦®à§‡à¦¨à§à¦Ÿ à¦¹à§‹à¦²à§à¦¡à¦¿à¦‚à¦¸ à¦¨à¦¾à¦®à§‡à¦° à¦à¦•à¦Ÿà¦¿ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦° à¦ªà§à¦°à¦¦à¦°à§à¦¶à¦¨à§‡à¦° à¦œà¦¨à§à¦¯ à¦à¦•à¦Ÿà¦¿ à¦šà§à¦•à§à¦¤à¦¿ à¦¸à¦‡ à¦•à¦°à§‡à¦›à§‡à¥¤&nbsp;<br style=\"padding: 0px; margin: 0px; outline: 0px;\" /><br style=\"padding: 0px; margin: 0px; outline: 0px;\" />à¦¦à§à¦‡ à¦ªà¦•à§à¦· à¦†à¦—à¦¾à¦®à§€ à¦ªà¦¾à¦à¦š à¦¬à¦›à¦°à§‡ à¦¸à§Œà¦¦à¦¿ à¦†à¦°à¦¬à§‡à¦° à§§à§«à¦Ÿà¦¿ à¦¶à¦¹à¦°à§‡ à§ªà§¦à¦Ÿà¦¿ à¦ªà§à¦°à§‡à¦•à§à¦·à¦¾à¦—à§ƒà¦¹ à¦¨à¦¿à¦°à§à¦®à¦¾à¦£à§‡à¦° à¦†à¦¶à¦¾ à¦•à¦°à¦›à§‡à¥¤ à¦†à¦° à¦ªà¦°à§‡à¦° à¦¸à¦¾à¦¤ à¦¬à¦›à¦°à§‡ à¦¸à§Œà¦¦à¦¿à¦° à§¨à§«à¦Ÿà¦¿ à¦¶à¦¹à¦°à§‡ à§«à§¦ à¦¥à§‡à¦•à§‡ à§§à§¦à§¦à¦Ÿà¦¿à¦° à¦®à¦¤à§‹ à¦ªà§à¦°à§‡à¦•à§à¦·à¦¾à¦—à§ƒà¦¹ à¦¸à§à¦¥à¦¾à¦ªà¦¨ à¦•à¦°à¦¾ à¦¹à¦¬à§‡à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦¸à§Œà¦¦à¦¿ à¦†à¦°à¦¬à§‡à¦° à¦¤à¦¥à§à¦¯ à¦®à¦¨à§à¦¤à§à¦°à¦£à¦¾à¦²à§Ÿà§‡à¦° à¦¸à§‡à¦¨à§à¦Ÿà¦¾à¦° à¦«à¦° à¦‡à¦¨à§à¦Ÿà¦¾à¦°à¦¨à§à¦¯à¦¾à¦¶à¦¨à¦¾à¦² à¦•à¦®à¦¿à¦‰à¦¨à¦¿à¦•à§‡à¦¶à¦¨ à¦à¦• à¦¬à¦¿à¦¬à§ƒà¦¤à¦¿à¦¤à§‡ à¦œà¦¾à¦¨à¦¾à§Ÿ, à§§à§® à¦à¦ªà§à¦°à¦¿à¦² à¦°à¦¿à§Ÿà¦¾à¦¦à§‡ à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦ªà§à¦°à¦¦à¦°à§à¦¶à¦¿à¦¤ à¦¹à¦¬à§‡à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦à¦à¦®à¦¸à¦¿ à¦à¦¨à§à¦Ÿà¦¾à¦°à¦Ÿà§‡à¦‡à¦¨à¦®à§‡à¦¨à§à¦Ÿ à¦¹à§‹à¦²à§à¦¡à¦¿à¦‚à¦¸à§‡à¦° à¦ªà§à¦°à¦§à¦¾à¦¨ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦¹à§€ à¦•à¦°à§à¦®à¦•à¦°à§à¦¤à¦¾ à¦…à§à¦¯à¦¾à¦¡à¦¾à¦® à¦…à§à¦¯à¦¾à¦°à¦¨ à¦à¦• à¦¸à¦¾à¦•à§à¦·à¦¾à§Žà¦•à¦¾à¦°à§‡ à¦¬à¦²à§‡à¦›à§‡à¦¨, à¦•à¦¿à¦‚ à¦†à¦¬à¦¦à§à¦²à§à¦²à¦¾à¦¹ à¦«à¦¿à¦¨à§à¦¯à¦¾à¦¨à§à¦¸à¦¿à§Ÿà¦¾à¦² à¦œà§‡à¦²à¦¾à§Ÿ à¦—à¦¾à¦¨à§‡à¦° à¦•à¦¨à¦¸à¦¾à¦°à§à¦Ÿà§‡à¦° à¦œà¦¨à§à¦¯ à¦¬à¦¾à¦¨à¦¾à¦¨à§‹ à¦¹à¦²à§‡ à¦ªà§à¦°à¦¥à¦® à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦ªà§à¦°à¦¦à¦°à§à¦¶à¦¿à¦¤ à¦¹à¦¬à§‡à¥¤ à¦¸à§‡à¦–à¦¾à¦¨à¦•à¦¾à¦° à¦ªà§à¦°à¦§à¦¾à¦¨ à¦¥à¦¿à§Ÿà§‡à¦Ÿà¦¾à¦°à§‡ à§«à§¦à§¦à¦Ÿà¦¿ à¦šà¦¾à¦®à§œà¦¾à¦° à¦†à¦¸à¦¨ à¦¥à¦¾à¦•à¦¬à§‡à¥¤ à¦¥à¦¾à¦•à¦¬à§‡ à¦…à¦°à§à¦•à§‡à¦¸à§à¦Ÿà§à¦°à¦¾, à¦à§à¦² à¦¬à¦¾à¦°à¦¾à¦¨à§à¦¦à¦¾, à¦®à¦¾à¦°à§à¦¬à§‡à¦²à§‡à¦° à¦ªà§à¦°à¦•à§à¦·à¦¾à¦²à¦¨à¦•à¦•à§à¦·à¥¤ à¦®à¦§à§à¦¯ à¦—à§à¦°à§€à¦·à§à¦® à¦¨à¦¾à¦—à¦¾à¦¦ à¦†à¦°à¦“ à¦¤à¦¿à¦¨à¦Ÿà¦¿ à¦ªà¦°à§à¦¦à¦¾ à¦¯à§à¦•à§à¦¤ à¦¹à¦¬à§‡à¥¤ à¦à¦Ÿà¦¿ à¦¹à¦¬à§‡ à¦¬à¦¿à¦¶à§à¦¬à§‡à¦° à¦¸à¦¬à¦šà§‡à§Ÿà§‡ à¦šà¦¾à¦•à¦šà¦¿à¦•à§à¦¯à¦ªà§‚à¦°à§à¦£ à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦¥à¦¿à§Ÿà§‡à¦Ÿà¦¾à¦°à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦¸à§Œà¦¦à¦¿ à¦†à¦°à¦¬à§‡à¦° à¦¸à¦‚à¦¸à§à¦•à§ƒà¦¤à¦¿ à¦“ à¦¤à¦¥à§à¦¯à¦®à¦¨à§à¦¤à§à¦°à§€ à¦à¦• à¦¬à¦¿à¦¬à§ƒà¦¤à¦¿à¦¤à§‡ à¦¬à¦²à§‡à¦›à§‡à¦¨, à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦šà¦¾à¦²à§à¦° à¦¬à¦¿à¦·à§Ÿà¦Ÿà¦¿ à¦¸à§à¦¥à¦¾à¦¨à§€à§Ÿ à¦…à¦°à§à¦¥à¦¨à§€à¦¤à¦¿à¦•à§‡ à¦¸à¦®à§ƒà¦¦à§à¦§ à¦•à¦°à¦¤à§‡ à¦¸à¦¾à¦¹à¦¾à¦¯à§à¦¯ à¦•à¦°à¦¬à§‡à¥¤ à¦¬à¦¿à¦¨à§‹à¦¦à¦¨ à¦–à¦¾à¦¤à§‡ à¦–à¦¾à¦¨à¦¾à¦ªà§à¦°à¦¤à¦¿ à¦¬à§à¦¯à§Ÿ à¦¬à¦¾à§œà¦¬à§‡à¥¤ à¦•à¦°à§à¦®à¦¸à¦‚à¦¸à§à¦¥à¦¾à¦¨ à¦¸à§ƒà¦·à§à¦Ÿà¦¿ à¦¹à¦¬à§‡à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦—à¦¤ à¦¶à¦¤à¦•à§‡à¦° à§­à§¦-à¦à¦° à¦¦à¦¶à¦•à§‡ à¦¸à§Œà¦¦à¦¿ à¦†à¦°à¦¬à§‡ à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦ªà§à¦°à¦¦à¦°à§à¦¶à¦¿à¦¤ à¦¹à¦¤à§‹à¥¤ à¦•à¦¿à¦¨à§à¦¤à§ à¦¦à§‡à¦¶à¦Ÿà¦¿à¦° à¦•à§à¦·à¦®à¦¤à¦¾à¦¶à¦¾à¦²à§€ à¦•à¦Ÿà§à¦Ÿà¦° à¦§à¦°à§à¦®à§€à§Ÿ à¦¨à§‡à¦¤à¦¾à¦°à¦¾ à¦¤à¦¾ à¦¬à¦¨à§à¦§ à¦•à¦°à§‡ à¦¦à§‡à¦¨à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à§¨à§¦à§§à§­ à¦¸à¦¾à¦²à§‡ à¦¦à§‡à¦¶à¦Ÿà¦¿à¦° à¦•à¦°à§à¦¤à§ƒà¦ªà¦•à§à¦· à¦œà¦¾à¦¨à¦¾à§Ÿ, à¦¤à¦¾à¦°à¦¾ à¦¸à¦¿à¦¨à§‡à¦®à¦¾ à¦ªà§à¦°à¦¦à¦°à§à¦¶à¦¨à§‡à¦° à¦“à¦ªà¦° à¦¥à§‡à¦•à§‡ à¦¨à¦¿à¦·à§‡à¦§à¦¾à¦œà§à¦žà¦¾ à¦¤à§à¦²à§‡ à¦¦à§‡à¦¬à§‡à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px 0px 16px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦¸à§Œà¦¦à¦¿ à¦¯à§à¦¬à¦°à¦¾à¦œ à¦®à§‹à¦¹à¦¾à¦®à§à¦®à¦¦ à¦¬à¦¿à¦¨ à¦¸à¦¾à¦²à¦®à¦¾à¦¨à§‡à¦° à¦¬à¦¹à§à¦² à¦†à¦²à§‹à¦šà¦¿à¦¤ à¦…à¦°à§à¦¥à¦¨à§ˆà¦¤à¦¿à¦• à¦“ à¦¸à¦¾à¦®à¦¾à¦œà¦¿à¦• à¦¸à¦‚à¦¸à§à¦•à¦¾à¦° à¦•à¦°à§à¦®à¦¸à§‚à¦šà¦¿à¦° à¦…à¦‚à¦¶ à¦¹à¦¿à¦¸à§‡à¦¬à§‡ à¦¦à§‡à¦¶à¦Ÿà¦¿ à¦à¦‡ à¦ªà¦¦à¦•à§à¦·à§‡à¦ª à¦¨à¦¿à¦šà§à¦›à§‡à¥¤</p>\r\n<p style=\"padding: 0px; margin: 0px; outline: 0px; overflow: hidden; font-size: 18px; line-height: 30px; word-wrap: break-word; font-family: kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; background-color: #f0f0ed;\">à¦¤à¦¬à§‡ à¦¸à§Œà¦¦à¦¿ à¦†à¦°à¦¬à§‡ à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦°à§‡à¦° à¦¦à§à¦¨à¦¿à§Ÿà¦¾ à¦–à§à¦²à§‡ à¦—à§‡à¦²à§‡à¦‡ à¦®à¦¤à¦ªà§à¦°à¦•à¦¾à¦¶à§‡à¦° à¦¸à§à¦¬à¦¾à¦§à§€à¦¨à¦¤à¦¾à¦° à¦¯à§à¦—à§‡à¦° à¦¸à§‚à¦šà¦¨à¦¾ à¦¹à¦¬à§‡ à¦¬à¦²à§‡ à¦®à¦¨à§‡ à¦•à¦°à§‡à¦¨ à¦¨à¦¾ à¦®à¦¿à¦¸à¦°à§‡à¦° à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦° à¦¸à¦®à¦¾à¦²à§‹à¦šà¦• à¦“ à¦…à¦¨à§à¦·à§à¦ à¦¾à¦¨à§‡à¦° à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾à¦•à¦¾à¦°à§€ à¦œà§‹à¦¸à§‡à¦« à¦«à¦¾à¦¹à¦¿à¦®à¥¤ à¦¤à¦¾à¦à¦° à¦­à¦¾à¦·à¦¾à§Ÿ, à¦¸à§Œà¦¦à¦¿à¦¤à§‡ à¦†à¦—à§‡à¦“ à¦¬à§‡à¦¶ à¦•à¦¿à¦›à§ à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦° à¦“ à¦Ÿà§‡à¦²à¦¿à¦­à¦¿à¦¶à¦¨à§‡à¦° à¦…à¦¨à§à¦·à§à¦ à¦¾à¦¨ à¦¹à§Ÿà§‡à¦›à§‡à¥¤ à¦†à¦° à¦¦à§‡à¦¶à¦Ÿà¦¿à¦¤à§‡ à¦†à¦‡à¦¨à¦‡ à¦†à¦›à§‡ à¦¯à§‡ à¦¸à§Œà¦¦à¦¿ à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦°à¦•à¦¾à¦°à§‡à¦°à¦¾ à¦¬à¦¾à¦¦à¦¶à¦¾à¦¹à§‡à¦° à¦ªà¦°à¦¿à¦¬à¦¾à¦°à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦¸à¦®à§à¦ªà¦°à§à¦•à¦¿à¦¤ à¦•à§‹à¦¨à§‹ à¦•à¦¿à¦›à§à¦° à¦¨à¦¾à¦® à¦¨à¦¿à¦¤à§‡ à¦ªà¦¾à¦°à¦¬à§‡à¦¨ à¦¨à¦¾à¥¤</p>');

-- --------------------------------------------------------

--
-- Table structure for table `unpaid`
--

CREATE TABLE `unpaid` (
  `id` int(13) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(130) NOT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `car_number` varchar(70) DEFAULT NULL,
  `quantity` int(3) DEFAULT NULL,
  `Start` date NOT NULL,
  `mytime` varchar(60) NOT NULL,
  `finish` date NOT NULL,
  `total_cost` int(16) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unpaid`
--

INSERT INTO `unpaid` (`id`, `name`, `email`, `phone`, `car_number`, `quantity`, `Start`, `mytime`, `finish`, `total_cost`, `transaction_id`, `status`) VALUES
(2, 'Himel Ahmed', 'himel.mahamud007@gmail.com', '01676', '0Ab1', 100, '2018-04-07', '10:50:41am', '2018-05-07', 100000, '3013', 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(13) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(130) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass`) VALUES
(1, 'Salman Rahman Auvi', 'salman.auvi@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'Himel Ahmed', 'himel.mahamud007@gmail.com', '202cb962ac59075b964b07152d234b70'),
(3, 'Swagata', 'swagata.mazumder03@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(4, 'Syeda Benazir', 'sayeda.benazir@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(13) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(130) NOT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `name`, `email`, `phone`, `pic`) VALUES
(2, 'Himel Ahmed', 'himel.mahamud007@gmail.com', '01676', 'uploads/44550162280a091a3d64cae2f261bccd.png'),
(1, 'Salman Rahman Auvi', 'salman.auvi@gmail.com', '01686235902', 'uploads/819bf29fc0eb0c416e3dd11a048eee22.jpg'),
(4, 'Syeda Benazir', 'sayeda.benazir@gmail.com', '0168', 'uploads/56f7f8addc14868a8f711ef91c5db7af.jpg'),
(3, 'Swagata', 'swagata.mazumder03@gmail.com', '01858723528', 'uploads/cce109647a63db905f04be6648454718.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cost`
--
ALTER TABLE `cost`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `paid`
--
ALTER TABLE `paid`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `parking_info`
--
ALTER TABLE `parking_info`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unpaid`
--
ALTER TABLE `unpaid`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2020 at 04:57 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `van_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `title` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`title`, `name`, `no`) VALUES
('สวยจัด ต้อง A แล้วปะ', 'Isara', 1),
('@Isara เออๆๆต้อง A แล้วแหละ', 'Sathit', 2),
('ศวัษฎี', 'สาธิต', 3),
('สุดยอดมากๆๆเลยอะ app นี้สดวกมากเลย ไอกร๊วก', 'โจ', 4),
('Good', 'Sathit', 5),
('So good', 'Jom', 6),
('Good', 'Jom', 7),
('', '', 8);

-- --------------------------------------------------------

--
-- Table structure for table `conf`
--

CREATE TABLE `conf` (
  `logic` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conf`
--

INSERT INTO `conf` (`logic`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `message` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`name`, `email`, `message`) VALUES
('', '', ''),
('Sathit Srisawat', 'Zeno.pk640@gmail.com', 'App สวยมาก'),
('', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Countdown`
--

CREATE TABLE `Countdown` (
  `logic` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Countdown`
--

INSERT INTO `Countdown` (`logic`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `History`
--

CREATE TABLE `History` (
  `Htime` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Hdate` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `History`
--

INSERT INTO `History` (`Htime`, `Hdate`) VALUES
('10:30', '25 sep 2020'),
('12:00', '27 sep 2020'),
('12:00', '4 oct 2020'),
('12:00', '10 oct 2020'),
('', ''),
('', ''),
('', ''),
('09:30', '13 oct 2020'),
('11:00', '13 oct 2020'),
('11', '13 oct 2020'),
('12', '13 oct 2020'),
('13:00', '13 oct 2020'),
('11', '13 oct 2020'),
('12', '13 oct 2020'),
('13', '13 oct 2020'),
('14', '13 oct 2020'),
('12 : 00', '13 out 2020');

-- --------------------------------------------------------

--
-- Table structure for table `locate`
--

CREATE TABLE `locate` (
  `name` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locate`
--

INSERT INTO `locate` (`name`) VALUES
(''),
(''),
(''),
(''),
('off'),
(''),
(''),
('Sathit'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('V'),
('ควย'),
('ควย'),
('ควย_'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('6');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL,
  `first name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sex` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `first name`, `lastname`, `sex`) VALUES
('satit.sr@mail.wu.ac.th', 'sathit15190', 'Sathit', 'Srisawat', 'man');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8 NOT NULL,
  `position` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`firstname`, `lastname`, `email`, `phone`, `position`) VALUES
('Sathit', 'Srisawat', 'Sathit.sr@mail.wu.ac.th', '0801455967', 'Mr');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `counts` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `table_queue`
--

CREATE TABLE `table_queue` (
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `van_stack` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `table_queue`
--

INSERT INTO `table_queue` (`time`, `van_stack`) VALUES
('6:00', '2'),
('6:30', '5'),
('7:00', '13'),
('7:30', '12'),
('8:00', '11'),
('8:30', '13'),
('9:00', '13'),
('9:30', '6'),
('10:00', '8'),
('10:30', '9'),
('11', '11'),
('11:30', '13'),
('12:00', '13'),
('12:30', '11'),
('13:00', '9'),
('13:30', '5'),
('14:00', '13'),
('14:30', '12'),
('15:00', '12'),
('15:30', '13'),
('16:00', '11'),
('16:30', '12'),
('17', '13');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `time` varchar(25) CHARACTER SET utf8 NOT NULL,
  `date` varchar(25) CHARACTER SET utf8 NOT NULL,
  `no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`time`, `date`, `no`) VALUES
('13:00', '13 oct 2020', 7),
('12', '13 oct 2020', 9),
('14', '13 oct 2020', 11),
('12 : 00', '13 out 2020', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

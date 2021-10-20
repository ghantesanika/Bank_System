-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2021 at 10:15 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `accountno` varchar(100) NOT NULL,
  `Amount` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `accountno`, `Amount`) VALUES
(3, 'Neha_G', 'nehagandhmal123@gmail.com', 'pass123', '111363', 1800),
(4, 'Sanu', 'sanikaghante@gmail.com', '12345', '111121', 12000),
(5, 'priyanka', 'priyankadandi@gmail.com', 'priya@123', '4501', 500),
(6, 'Shraddha_jannu', 'shraddhajannu@gmail.com', 'shraddha123', '1269001', 12000),
(7, 'Akanksha_ghante', 'akanksha@gmail.com', 'akanksha1234', '116808', 3600),
(8, 'Nikita_ghante', 'nikitaghante@gmail.com', 'nikkii78', '111456', 0),
(9, 'Yash_patil', 'yash@gmail.com', 'yash1234', '11234', 0),
(10, 'Parth_banushali', 'Parth@gmail.com', 'parth1234', '1122345', 2400),
(11, 'sakshi kamble', 'sakshi@gmail.com', 'sakshi1234', '1123489', 7800);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2020 at 07:42 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthychild_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `consultation`
--

CREATE TABLE `consultation` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `weight` varchar(10) NOT NULL,
  `doa` date NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'Dr. Monte Costa,phd', 'costamonte@hcdoctor.ac.id', 'doctor1234');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `doa` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `fullname`, `doa`, `description`, `message`) VALUES
(7, 'Jonas de Deus Guterr', '2020-04-13', 'Headache', 'Do more sportss. ok'),
(8, 'Jorge Guterres', '2020-04-28', 'My son has a cought and cannot sleep well', 'ok Sleep a lot');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `generic_name` varchar(20) NOT NULL,
  `strength` varchar(20) NOT NULL,
  `form` varchar(20) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `generic_name`, `strength`, `form`, `price`) VALUES
(4, 'Paracetamol', '200 mg', 'Tablet', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `orderpharmacie`
--

CREATE TABLE `orderpharmacie` (
  `id` int(11) NOT NULL,
  `generic_name` varchar(20) NOT NULL,
  `strength` varchar(20) NOT NULL,
  `form` varchar(20) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderpharmacie`
--

INSERT INTO `orderpharmacie` (`id`, `generic_name`, `strength`, `form`, `price`) VALUES
(4, 'Paracetamol', '200 mg', 'Tablet', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacie`
--

CREATE TABLE `pharmacie` (
  `id` int(11) NOT NULL,
  `generic_name` varchar(20) NOT NULL,
  `strength` varchar(20) NOT NULL,
  `form` varchar(11) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pharmacie`
--

INSERT INTO `pharmacie` (`id`, `generic_name`, `strength`, `form`, `price`) VALUES
(1, 'Acetylsalicylic acid', '50 mg', 'Suppository', 10000),
(2, 'Ibuprofen', '20 mg', 'Tablet', 3000),
(3, 'Paracetamol', '200 mg', 'Tablet', 3000),
(4, 'Paracetamol', '10 mg/mL', 'Oral liquid', 4000),
(5, 'Quinine', '250 mL', 'Cap tablet', 10000),
(6, 'Morphine', '10 mg/mL', 'Oral liquid', 14000),
(7, 'Haloperidol', '2 mg/mL', 'Oral liquid', 22000),
(8, 'Lactulose', '3.5 g/5mL', 'Oral liquid', 13000),
(9, 'Deferoxamine', '500 mg', 'Pouder of i', 14000),
(10, 'Sodium calcium edeta', '200 mg/mL', 'Injection', 33000),
(11, 'Midazolam', '5 mg/mL', 'Ampoule', 10000),
(12, 'valproic acid (sodiu', '200 mg/5mL', 'Oral liquid', 15000),
(13, 'Ethosuximide', '250 mg', 'Capsule', 3000),
(14, 'Azithromycin', '200 mg/5mL', 'Oral liquid', 24000);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `dos` date NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `fullname`, `email`, `phone`, `address`) VALUES
(1, 'jonas', 'Inacio', 'guterres19dedeus@gmail.com', '02939392893', 'Dili'),
(6, '12345', 'armando', 'armando@gmail.com', '081243564456', 'Madagaskar'),
(7, 'mata', 'helio', 'helio@gmail.com', '08839443434', 'laga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderpharmacie`
--
ALTER TABLE `orderpharmacie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacie`
--
ALTER TABLE `pharmacie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consultation`
--
ALTER TABLE `consultation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderpharmacie`
--
ALTER TABLE `orderpharmacie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pharmacie`
--
ALTER TABLE `pharmacie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

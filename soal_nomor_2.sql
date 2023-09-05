-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2023 at 10:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logical_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambilmk`
--

CREATE TABLE `ambilmk` (
  `mk_id` varchar(10) NOT NULL,
  `mk_kode` varchar(5) NOT NULL,
  `mk_sks` varchar(6) NOT NULL,
  `mk_nama` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ambilmk`
--

INSERT INTO `ambilmk` (`mk_id`, `mk_kode`, `mk_sks`, `mk_nama`) VALUES
('1', 'MK202', '3', 'OOP'),
('2', 'MK203', '2', 'BASIS DAT');

-- --------------------------------------------------------

--
-- Table structure for table `mhs`
--

CREATE TABLE `mhs` (
  `nim` varchar(10) NOT NULL,
  `namamhs` varchar(30) DEFAULT NULL,
  `mhs_angkatan` text DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mhs`
--

INSERT INTO `mhs` (`nim`, `namamhs`, `mhs_angkatan`, `sex`) VALUES
('20180001', 'jono', '2018', 'L'),
('2018002', 'taufik', '2018', 'P'),
('2018003', 'maria', '2018', 'L'),
('2019004', 'sari', '2019', 'P'),
('2019005', 'bambang', '2019', 'L');

-- --------------------------------------------------------

--
-- Table structure for table `mk`
--

CREATE TABLE `mk` (
  `mhs_nilai_id` varchar(5) NOT NULL,
  `mhs_id` varchar(20) DEFAULT NULL,
  `mk_id` int(11) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mk`
--

INSERT INTO `mk` (`mhs_nilai_id`, `mhs_id`, `mk_id`, `nilai`) VALUES
('1', '1', 1, 70),
('2', '1', 1, 80),
('3', '2', 1, 82),
('4', '2', 2, 74),
('5', '4', 1, 76),
('6', '4', 2, 8),
('7', '5', 1, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambilmk`
--
ALTER TABLE `ambilmk`
  ADD PRIMARY KEY (`mk_id`,`mk_kode`,`mk_sks`,`mk_nama`);

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `mk`
--
ALTER TABLE `mk`
  ADD PRIMARY KEY (`mhs_nilai_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

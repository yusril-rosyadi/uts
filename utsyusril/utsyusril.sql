-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 12:59 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utsyusril`
--

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(20) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `no_hp_lama` varchar(50) NOT NULL,
  `no_hp_baru` varchar(50) NOT NULL,
  `tgl_diubah` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `nim`, `no_hp_lama`, `no_hp_baru`, `tgl_diubah`) VALUES
(22, '161240000563', '089532123456', '089532123456', '2019-11-12 00:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(20) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama_mhs`, `jenis_kelamin`, `alamat`, `no_hp`) VALUES
(1, '161240000563', 'yusril', 'Laki-laki', 'tahunan', '089532123456'),
(2, '161240000555', 'bima', 'Laki-laki', 'bawu', '085678909876'),
(3, '161240000580', 'melati nur indah sari', 'Perempuan', 'ngabul', '082345678909'),
(4, '161240000321', 'safik', 'Laki-laki', 'sowan kidul', '089098765432'),
(6, '161240000178', 'walia', 'laki-laki', 'pulau darat', '089135123456');

--
-- Triggers `mahasiswa`
--
DELIMITER $$
CREATE TRIGGER `membuat_log` BEFORE UPDATE ON `mahasiswa` FOR EACH ROW INSERT INTO log
SET nim = old.nim,
no_hp_lama = old.no_hp,
no_hp_baru = new.no_hp,
tgl_diubah = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `tampil`
-- (See below for the actual view)
--
CREATE TABLE `tampil` (
`id` int(20)
,`nim` varchar(20)
,`nama_mhs` varchar(50)
,`jenis_kelamin` varchar(15)
,`alamat` varchar(50)
,`no_hp` varchar(20)
);

-- --------------------------------------------------------

--
-- Structure for view `tampil`
--
DROP TABLE IF EXISTS `tampil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tampil`  AS  select `mahasiswa`.`id` AS `id`,`mahasiswa`.`nim` AS `nim`,`mahasiswa`.`nama_mhs` AS `nama_mhs`,`mahasiswa`.`jenis_kelamin` AS `jenis_kelamin`,`mahasiswa`.`alamat` AS `alamat`,`mahasiswa`.`no_hp` AS `no_hp` from `mahasiswa` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 03:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2110020034`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail`
--

CREATE TABLE `tbl_detail` (
  `id_reservasi` varchar(5) NOT NULL,
  `no_kamar` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kamar`
--

CREATE TABLE `tbl_kamar` (
  `jenis_kamar` varchar(10) NOT NULL,
  `no_kamar` varchar(10) NOT NULL,
  `harga_weekday` int(10) NOT NULL,
  `harga_weekend` int(10) NOT NULL,
  `status_kamar` varchar(10) NOT NULL,
  `harga_high_season` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservasi`
--

CREATE TABLE `tbl_reservasi` (
  `id_reservasi` varchar(5) NOT NULL,
  `email` varchar(15) NOT NULL,
  `jenis_kamar` varchar(10) NOT NULL,
  `tgl_check_in` varchar(15) NOT NULL,
  `tgl_check_out` varchar(15) NOT NULL,
  `jumlah_kamar` int(10) NOT NULL,
  `id_tamu` varchar(5) NOT NULL,
  `kebangsaan` varchar(15) NOT NULL,
  `pekerjaan` varchar(10) NOT NULL,
  `total_harga` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tamu`
--

CREATE TABLE `tbl_tamu` (
  `id_tamu` varchar(5) NOT NULL,
  `nama_pemesan` varchar(15) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `telepon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tipe kamar`
--

CREATE TABLE `tbl_tipe kamar` (
  `id_type` int(10) NOT NULL,
  `nama_kamar` varchar(15) NOT NULL,
  `harga` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_detail`
--
ALTER TABLE `tbl_detail`
  ADD KEY `id_reservasi` (`id_reservasi`);

--
-- Indexes for table `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  ADD PRIMARY KEY (`jenis_kamar`);

--
-- Indexes for table `tbl_reservasi`
--
ALTER TABLE `tbl_reservasi`
  ADD PRIMARY KEY (`id_reservasi`),
  ADD KEY `id_tamu` (`id_tamu`);

--
-- Indexes for table `tbl_tamu`
--
ALTER TABLE `tbl_tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `tbl_tipe kamar`
--
ALTER TABLE `tbl_tipe kamar`
  ADD PRIMARY KEY (`id_type`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_detail`
--
ALTER TABLE `tbl_detail`
  ADD CONSTRAINT `tbl_detail_ibfk_1` FOREIGN KEY (`id_reservasi`) REFERENCES `tbl_reservasi` (`id_reservasi`);

--
-- Constraints for table `tbl_reservasi`
--
ALTER TABLE `tbl_reservasi`
  ADD CONSTRAINT `tbl_reservasi_ibfk_1` FOREIGN KEY (`id_tamu`) REFERENCES `tbl_tamu` (`id_tamu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

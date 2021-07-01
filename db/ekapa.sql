-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2021 at 04:00 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekapa`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kendaraan`
--

CREATE TABLE `jenis_kendaraan` (
  `idjenis` int(11) NOT NULL,
  `jeniskendaraan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_kendaraan`
--

INSERT INTO `jenis_kendaraan` (`idjenis`, `jeniskendaraan`) VALUES
(1, 'Mobil'),
(2, 'Sepeda Motor'),
(3, 'Sepeda');

-- --------------------------------------------------------

--
-- Table structure for table `karcis`
--

CREATE TABLE `karcis` (
  `nomorkarcis` int(11) NOT NULL,
  `idtempat` int(11) NOT NULL,
  `idkendaraan` int(11) NOT NULL,
  `idjenis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `idkendaraan` int(10) NOT NULL,
  `nomorkendaraan` varchar(10) NOT NULL,
  `idjenis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tempat`
--

CREATE TABLE `tempat` (
  `idtempat` int(11) NOT NULL,
  `namatempat` varchar(10) NOT NULL,
  `kapasitas` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tipe_akun`
--

CREATE TABLE `tipe_akun` (
  `tipeakun_id` int(11) NOT NULL,
  `keterangan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipe_akun`
--

INSERT INTO `tipe_akun` (`tipeakun_id`, `keterangan`) VALUES
(1, 'Dosen'),
(2, 'Mahasiswa'),
(3, 'Tamu');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_kendaraan`
--
ALTER TABLE `jenis_kendaraan`
  ADD PRIMARY KEY (`idjenis`);

--
-- Indexes for table `karcis`
--
ALTER TABLE `karcis`
  ADD PRIMARY KEY (`nomorkarcis`),
  ADD KEY `fk_karcis_kendaraan` (`idkendaraan`),
  ADD KEY `fk_karcis_tempat` (`idtempat`),
  ADD KEY `fk_karcis_jenis` (`idjenis`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`idkendaraan`),
  ADD KEY `fk_kendaraan_jenis` (`idjenis`);

--
-- Indexes for table `tempat`
--
ALTER TABLE `tempat`
  ADD PRIMARY KEY (`idtempat`);

--
-- Indexes for table `tipe_akun`
--
ALTER TABLE `tipe_akun`
  ADD PRIMARY KEY (`tipeakun_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karcis`
--
ALTER TABLE `karcis`
  MODIFY `nomorkarcis` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `idkendaraan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `karcis`
--
ALTER TABLE `karcis`
  ADD CONSTRAINT `fk_karcis_jenis` FOREIGN KEY (`idjenis`) REFERENCES `jenis_kendaraan` (`idjenis`),
  ADD CONSTRAINT `fk_karcis_kendaraan` FOREIGN KEY (`idkendaraan`) REFERENCES `kendaraan` (`idkendaraan`),
  ADD CONSTRAINT `fk_karcis_tempat` FOREIGN KEY (`idtempat`) REFERENCES `tempat` (`idtempat`);

--
-- Constraints for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD CONSTRAINT `fk_kendaraan_jenis` FOREIGN KEY (`idjenis`) REFERENCES `jenis_kendaraan` (`idjenis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

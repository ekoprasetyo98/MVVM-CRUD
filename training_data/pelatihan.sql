-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 21, 2020 at 05:12 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelatihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_user` int(4) NOT NULL,
  `nik_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `rule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_user`, `nik_user`, `nama_user`, `password`, `rule`) VALUES
(2, '123', 'iav', '123', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `id_training` int(255) NOT NULL,
  `kode_training` int(255) NOT NULL,
  `nama_training` varchar(255) DEFAULT NULL,
  `type_training` varchar(255) DEFAULT NULL,
  `jumlah_training` varchar(255) DEFAULT NULL,
  `harga_training` varchar(255) DEFAULT NULL,
  `tanggal_training` varchar(255) DEFAULT NULL,
  `gambar_training` text,
  `status_training` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`id_training`, `kode_training`, `nama_training`, `type_training`, `jumlah_training`, `harga_training`, `tanggal_training`, `gambar_training`, `status_training`) VALUES
(1, 32432, 'Android Dasar', 'Mahir', '3000', '2500000', '21-09-2020', 'https://d17ivq9b7rppb3.cloudfront.net/original/academy/belajar_membuat_aplikasi_android_untuk_pemula_logo_071119140631.png', 'aktif'),
(9, 32432, 'Android Dasar', 'Mahir', '3000', '2500000', '21-09-2020', 'https://d17ivq9b7rppb3.cloudfront.net/original/academy/belajar_membuat_aplikasi_android_untuk_pemula_logo_071119140631.png', 'aktif'),
(11, 342, 'Cloud Developer', 'Mahir', '1000', '1500000', 'xx-xx-xx', 'https://d17ivq9b7rppb3.cloudfront.net/original/academy/menjadi_azure_cloud_developer_logo_231219145948.png', 'pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_user`,`nik_user`) USING BTREE;

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id_training`,`kode_training`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `id_training` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 05:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dailytest`
--

-- --------------------------------------------------------

--
-- Table structure for table `lap_txr1`
--

CREATE TABLE `lap_txr1` (
  `id_lap` int(11) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `sn` varchar(20) NOT NULL,
  `peleton` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `nama_tes` varchar(5) NOT NULL,
  `dinas` varchar(10) NOT NULL,
  `tes2` int(2) DEFAULT NULL,
  `tes3` int(2) DEFAULT NULL,
  `tes4` int(2) DEFAULT NULL,
  `tes5` int(2) DEFAULT NULL,
  `tes6` int(2) DEFAULT NULL,
  `tes7` int(2) DEFAULT NULL,
  `tes8` int(2) DEFAULT NULL,
  `tes9` int(2) DEFAULT NULL,
  `tes10` int(2) DEFAULT NULL,
  `tes11` int(2) DEFAULT NULL,
  `tes12` int(2) DEFAULT NULL,
  `tes13` int(2) DEFAULT NULL,
  `tes14` int(2) DEFAULT NULL,
  `tes15` int(2) DEFAULT NULL,
  `tes16` int(2) DEFAULT NULL,
  `tes17` int(2) DEFAULT NULL,
  `tes18` int(2) DEFAULT NULL,
  `tes19` int(2) DEFAULT NULL,
  `tes20` int(2) DEFAULT NULL,
  `tes21` int(2) DEFAULT NULL,
  `tes22` int(2) DEFAULT NULL,
  `tes23` int(2) DEFAULT NULL,
  `tes24` int(2) DEFAULT NULL,
  `tes25` int(2) DEFAULT NULL,
  `tes26` int(2) DEFAULT NULL,
  `tes27` int(2) DEFAULT NULL,
  `tes28` int(2) DEFAULT NULL,
  `tes29` int(2) DEFAULT NULL,
  `tes30` int(2) DEFAULT NULL,
  `tes31` int(2) DEFAULT NULL,
  `tes32` int(2) DEFAULT NULL,
  `tes33` int(2) DEFAULT NULL,
  `tes34` int(2) DEFAULT NULL,
  `tes35` int(2) DEFAULT NULL,
  `tes36` int(2) DEFAULT NULL,
  `test1a` varchar(100) DEFAULT NULL,
  `test1b` varchar(100) DEFAULT NULL,
  `test2` varchar(100) DEFAULT NULL,
  `test3` varchar(100) DEFAULT NULL,
  `test4` varchar(100) DEFAULT NULL,
  `test5` varchar(100) DEFAULT NULL,
  `petugas` varchar(50) NOT NULL,
  `id_petugas` varchar(20) NOT NULL,
  `jenis_lap` varchar(20) NOT NULL,
  `ttd_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lap_txr1`
--

INSERT INTO `lap_txr1` (`id_lap`, `lokasi`, `merk`, `sn`, `peleton`, `tanggal`, `jam`, `nama_tes`, `dinas`, `tes2`, `tes3`, `tes4`, `tes5`, `tes6`, `tes7`, `tes8`, `tes9`, `tes10`, `tes11`, `tes12`, `tes13`, `tes14`, `tes15`, `tes16`, `tes17`, `tes18`, `tes19`, `tes20`, `tes21`, `tes22`, `tes23`, `tes24`, `tes25`, `tes26`, `tes27`, `tes28`, `tes29`, `tes30`, `tes31`, `tes32`, `tes33`, `tes34`, `tes35`, `tes36`, `test1a`, `test1b`, `test2`, `test3`, `test4`, `test5`, `petugas`, `id_petugas`, `jenis_lap`, `ttd_img`) VALUES
(10, 'Gardu Utama Terminal 2', 'RAPISCAN 620DV', '6180804', 'A', '2023-06-04', '19:56:48', 'CTP', 'MALAM', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
(11, 'VIP PEMDA T1', 'HEIMANN HS6040i ', '19287', '', '2023-06-04', '19:57:19', 'CTP', 'SIANG', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
(12, 'LAGS Inspection  Selatan', 'RAPISCAN 620DV  ', '6181101-AT-NAR', '', '2023-06-08', '07:06:58', 'CTP', 'PAGI', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', 'NORMAL', 'NORMAL', '', '', '', '', '', '', ''),
(13, 'LAGS Inspection  Selatan', 'RAPISCAN 620DV  ', '6181101-AT-NAR', 'A', '2023-06-08', '10:16:58', 'CTP', 'PAGI', 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lap_wtmd1`
--

CREATE TABLE `lap_wtmd1` (
  `id_lap` int(11) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `sn` varchar(20) NOT NULL,
  `peleton` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `nama_tes` varchar(5) NOT NULL,
  `dinas` varchar(10) NOT NULL,
  `lk1` int(2) NOT NULL,
  `lk2` int(2) NOT NULL,
  `lk3` int(2) NOT NULL,
  `lk4` int(2) NOT NULL,
  `lk5` int(2) NOT NULL,
  `lk6` int(2) NOT NULL,
  `lk7` int(2) NOT NULL,
  `lk8` int(2) NOT NULL,
  `lk9` int(2) NOT NULL,
  `lk10` int(2) NOT NULL,
  `pk1` int(2) NOT NULL,
  `pk2` int(2) NOT NULL,
  `pk3` int(2) NOT NULL,
  `pk4` int(2) NOT NULL,
  `pk5` int(2) NOT NULL,
  `pk6` int(2) NOT NULL,
  `pk7` int(2) NOT NULL,
  `pk8` int(2) NOT NULL,
  `pk9` int(2) NOT NULL,
  `pk10` int(2) NOT NULL,
  `p1` int(2) NOT NULL,
  `p2` int(2) NOT NULL,
  `p3` int(2) NOT NULL,
  `p4` int(2) NOT NULL,
  `p5` int(2) NOT NULL,
  `p6` int(2) NOT NULL,
  `p7` int(2) NOT NULL,
  `p8` int(2) NOT NULL,
  `p9` int(2) NOT NULL,
  `p10` int(2) NOT NULL,
  `perka1` int(2) NOT NULL,
  `perka2` int(2) NOT NULL,
  `perka3` int(2) NOT NULL,
  `perka4` int(2) NOT NULL,
  `perka5` int(2) NOT NULL,
  `perka6` int(2) NOT NULL,
  `perka7` int(2) NOT NULL,
  `perka8` int(2) NOT NULL,
  `perka9` int(2) NOT NULL,
  `perka10` int(2) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `keterangan2` varchar(100) NOT NULL,
  `keterangan3` varchar(100) NOT NULL,
  `keterangan4` varchar(100) NOT NULL,
  `lk11` int(2) NOT NULL,
  `lk12` int(2) NOT NULL,
  `lk13` int(2) NOT NULL,
  `lk14` int(2) NOT NULL,
  `lk15` int(2) NOT NULL,
  `lk16` int(2) NOT NULL,
  `lk17` int(2) NOT NULL,
  `lk18` int(2) NOT NULL,
  `lk19` int(2) NOT NULL,
  `lk20` int(2) NOT NULL,
  `pk11` int(2) NOT NULL,
  `pk12` int(2) NOT NULL,
  `pk13` int(2) NOT NULL,
  `pk14` int(2) NOT NULL,
  `pk15` int(2) NOT NULL,
  `pk16` int(2) NOT NULL,
  `pk17` int(2) NOT NULL,
  `pk18` int(2) NOT NULL,
  `pk19` int(2) NOT NULL,
  `pk20` int(2) NOT NULL,
  `p11` int(2) NOT NULL,
  `p12` int(2) NOT NULL,
  `p13` int(2) NOT NULL,
  `p14` int(2) NOT NULL,
  `p15` int(2) NOT NULL,
  `p16` int(2) NOT NULL,
  `p17` int(2) NOT NULL,
  `p18` int(2) NOT NULL,
  `p19` int(2) NOT NULL,
  `p20` int(2) NOT NULL,
  `perka11` int(2) NOT NULL,
  `perka12` int(2) NOT NULL,
  `perka13` int(2) NOT NULL,
  `perka14` int(2) NOT NULL,
  `perka15` int(2) NOT NULL,
  `perka16` int(2) NOT NULL,
  `perka17` int(2) NOT NULL,
  `perka18` int(2) NOT NULL,
  `perka19` int(2) NOT NULL,
  `perka20` int(2) NOT NULL,
  `keterangan11` varchar(100) NOT NULL,
  `keterangan12` varchar(100) NOT NULL,
  `keterangan13` varchar(100) NOT NULL,
  `keterangan14` varchar(100) NOT NULL,
  `petugas` varchar(50) NOT NULL,
  `id_petugas` varchar(20) NOT NULL,
  `jenis_lap` varchar(20) NOT NULL,
  `ttd_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `lap_wtmd1`
--

INSERT INTO `lap_wtmd1` (`id_lap`, `lokasi`, `merk`, `sn`, `peleton`, `tanggal`, `jam`, `nama_tes`, `dinas`, `lk1`, `lk2`, `lk3`, `lk4`, `lk5`, `lk6`, `lk7`, `lk8`, `lk9`, `lk10`, `pk1`, `pk2`, `pk3`, `pk4`, `pk5`, `pk6`, `pk7`, `pk8`, `pk9`, `pk10`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `perka1`, `perka2`, `perka3`, `perka4`, `perka5`, `perka6`, `perka7`, `perka8`, `perka9`, `perka10`, `keterangan`, `keterangan2`, `keterangan3`, `keterangan4`, `lk11`, `lk12`, `lk13`, `lk14`, `lk15`, `lk16`, `lk17`, `lk18`, `lk19`, `lk20`, `pk11`, `pk12`, `pk13`, `pk14`, `pk15`, `pk16`, `pk17`, `pk18`, `pk19`, `pk20`, `p11`, `p12`, `p13`, `p14`, `p15`, `p16`, `p17`, `p18`, `p19`, `p20`, `perka11`, `perka12`, `perka13`, `perka14`, `perka15`, `perka16`, `perka17`, `perka18`, `perka19`, `perka20`, `keterangan11`, `keterangan12`, `keterangan13`, `keterangan14`, `petugas`, `id_petugas`, `jenis_lap`, `ttd_img`) VALUES
(12, 'SCP Transit Citilink', 'CEIA', '21606026450', 'A', '2023-06-08', '07:06:10', 'OTP', 'PAGI', 0, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, '', '', '', '', 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 'NORMAL', 'NORMAL', 'NORMAL', 'NORMAL', '', '', 'WTMD', ''),
(13, 'SCP Transit Citilink', 'CEIA', '21606026450', 'B', '2023-06-08', '10:17:35', 'OTP', 'SIANG', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', '', '', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 'WTMD', '');

-- --------------------------------------------------------

--
-- Table structure for table `txr1`
--

CREATE TABLE `txr1` (
  `id_xtype` int(10) NOT NULL,
  `xtype` varchar(50) NOT NULL,
  `xsn` varchar(20) NOT NULL,
  `xlokasi` varchar(50) NOT NULL,
  `xtes` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `txr1`
--

INSERT INTO `txr1` (`id_xtype`, `xtype`, `xsn`, `xlokasi`, `xtes`) VALUES
(1, 'RAPISCAN 628DV 160 ', '6181334', 'SCP 1B No 1 dari Barat', 'CTP'),
(2, 'RAPISCAN 628DV 160 ', '6181335', 'SCP 1B No 2 dari Barat', 'CTP'),
(3, 'RAPISCAN 628DV 160 ', '6181336', 'SCP 1B No 3 dari Barat', 'CTP'),
(4, 'HEIMANN SMITH HS 100100T-2is ', '143468', 'SCP 1A No 1 dari Barat', 'CTP'),
(5, 'HEIMANN SMITH HS 100100T-2is ', '141873', 'SCP 1A No 2 dari Barat', 'CTP'),
(6, 'RAPISCAN 620DV  ', '6180716', 'SCP 2 Sentralize 1B No 1', 'CTP'),
(7, 'RAPISCAN 620DV  ', '6181002', 'SCP 2 Sentralize 1B No 2', 'CTP'),
(8, 'HEIMANN SMITH HS 6040-2is  ', '145499', 'SCP 2 Sentralize 1B No 3', 'CTP'),
(9, 'HEIMANN SMITH HS 6040-2is  ', '145497', 'SCP 2 Sentralize 1B No 4', 'CTP'),
(10, 'RAPISCAN 620DV  ', '6181101-AT-NAR', 'LAGS Inspection  Selatan', 'CTP'),
(11, 'RAPISCAN 620DV  ', '6183024', 'LAGS Inspection  Utara', 'CTP'),
(12, 'HEIMANN SMITH HS 6040-2is   ', '148727', 'SCP 2 sentralize 1A No 1 dari barat', 'CTP'),
(13, 'HEIMANN SMITH HS 6040-2is   ', '145498', 'SCP 2 sentralize 1A No 2 dari Barat', 'CTP'),
(14, 'HEIMANN SMITH HS 6040-2is   ', '145487', 'SCP 2 sentralize 1A No 3 dari barat', 'CTP'),
(15, 'RAPISCAN 620DV ', '6181041', 'SCP 2 sentralize 1A No 4 dari barat', 'CTP'),
(16, 'RAPISCAN RAP 515  ', '60443N22', 'SCP Transit Citilink', 'CTP'),
(17, 'RAPISCAN 620DV ', '6181104', 'Gardu Utama Terminal 1', 'CTP'),
(18, 'RAPISCAN 620DV ', '6181103', 'Akses Karyawan 1A', 'CTP'),
(19, 'RAPISCAN 620DV ', '6181042', 'Akses Karyawan 1B', 'CTP'),
(20, 'HEIMANN HS6040i ', '19287', 'VIP PEMDA T1', 'CTP'),
(21, 'RAPISCAN 628DV 160', '6181127', 'SCP I Make-up No 1 dari Barat', 'CTP'),
(22, 'L3 PX10.10MV', '100138', 'SCP I Make-up No 2 dari Barat', 'CTP'),
(23, 'RAPISCAN 628DV 160', '6181128', 'SCP I Make-up No 3 dari Barat', 'CTP'),
(24, 'RAPISCAN 628DV', '6181337', 'Loading Dock Barat', 'CTP'),
(25, 'RAPISCAN 628DV', '6181332', 'Meeting Point Barat', 'CTP'),
(26, 'RAPISCAN 628DV', '6181333', 'Meeting Point TIMUR', 'CTP'),
(27, 'RAPISCAN 620DV', '6183023', 'SCP 2 Non Garbarata Barat', 'CTP'),
(28, 'RAPISCAN 620DV', '6184313', 'SCP 2 Non Garbarata TIMUR', 'CTP'),
(29, 'RAPISCAN 620DV', '6183025', 'SCP 2 Domestik (Sltn)', 'CTP'),
(30, 'RAPISCAN 620DV', '6183022', 'SCP 2 Domestik (Tengah)', 'CTP'),
(31, 'RAPISCAN 620DV', '6183727', 'SCP 2 Domestik (Utara)', 'CTP'),
(32, 'RAPISCAN 620DV', '6181040', 'SCP 2 Internasional (Sltn)', 'CTP'),
(33, 'RAPISCAN 620DV', '6181105', 'SCP 2 Internasional (Tngh)', 'CTP'),
(34, 'RAPISCAN 620DV', '6181102', 'SCP 2 Internasional (Utara)', 'CTP'),
(35, 'RAPISCAN 620DV', '6183718', 'Loading Dock Timur', 'CTP'),
(36, 'RAPISCAN 620DV', '6180804', 'Gardu Utama Terminal 2', 'CTP'),
(44, 'RAPISCAN 628DV Z', '1770132', 'SCP 1A No 3 dari Barat', 'CTA');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ttd_img` varchar(100) NOT NULL,
  `level` tinyint(3) NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `ttd_img`, `level`, `status`) VALUES
(36, 'Admin', 'admin', 'Administrator', 'Admin.png', 2, 1),
(37, 'Widhiat', 'widhiat123', 'widhiata', 'widhiat.png', 1, 0),
(38, 'Raditya', '12345', 'radit', '2.png', 2, 1),
(39, 'Rama', '123', 'rama', 'hh.png', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wtmd1`
--

CREATE TABLE `wtmd1` (
  `id_merk` int(10) NOT NULL,
  `merk` varchar(20) NOT NULL,
  `sn` varchar(20) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `nama_tes` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wtmd1`
--

INSERT INTO `wtmd1` (`id_merk`, `merk`, `sn`, `lokasi`, `nama_tes`) VALUES
(64, 'CEIA', '21606026447', 'SCP 1B No 1 dari Barat', 'OTP'),
(65, 'CEIA', '21806020086', 'SCP 1B No 2 dari Barat', 'OTP'),
(66, 'CEIA', '21606026446', 'SCP 1B No 3 dari Barat', 'OTP'),
(67, 'CEIA', '21306006076', 'SCP 1A No 1 dari Barat', 'OTP'),
(68, 'CEIA', '21606026448', 'SCP 2 Sentralize 1B No 1', 'OTP'),
(69, 'CEIA', '21606026432', 'SCP 2 Sentralize 1B No 2', 'OTP'),
(70, 'CEIA', '21606026406', 'SCP 2 Sentralize 1B No 3', 'OTP'),
(71, 'CEIA', '21606026438', 'SCP 2 Sentralize 1B No 4', 'OTP'),
(72, 'CEIA', '21606026450', 'SCP Transit Citilink', 'OTP'),
(73, 'CEIA', '21806020095', 'Gardu Utama Terminal 1', 'OTP');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lap_txr1`
--
ALTER TABLE `lap_txr1`
  ADD PRIMARY KEY (`id_lap`);

--
-- Indexes for table `lap_wtmd1`
--
ALTER TABLE `lap_wtmd1`
  ADD PRIMARY KEY (`id_lap`);

--
-- Indexes for table `txr1`
--
ALTER TABLE `txr1`
  ADD PRIMARY KEY (`id_xtype`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `wtmd1`
--
ALTER TABLE `wtmd1`
  ADD PRIMARY KEY (`id_merk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lap_txr1`
--
ALTER TABLE `lap_txr1`
  MODIFY `id_lap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lap_wtmd1`
--
ALTER TABLE `lap_wtmd1`
  MODIFY `id_lap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `txr1`
--
ALTER TABLE `txr1`
  MODIFY `id_xtype` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `wtmd1`
--
ALTER TABLE `wtmd1`
  MODIFY `id_merk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 12:14 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mylogos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `logos_tbl`
--

CREATE TABLE `logos_tbl` (
  `id` int(11) NOT NULL COMMENT 'Id',
  `file` mediumtext NOT NULL COMMENT 'File'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logos_tbl`
--

INSERT INTO `logos_tbl` (`id`, `file`) VALUES
(1, '2A.png'),
(2, '44850_InternetMarketingPros.png'),
(3, 'AttackIQ11.png'),
(4, 'APS_logo_2011.png'),
(5, 'CyberoamLogo.png'),
(6, '1785244723.jpg'),
(7, 'Acceleprise Logo.png'),
(8, 'akacrm.png'),
(10, 'ClientTickler-NoSheen.png'),
(11, 'AppsGeyserLogoTransparent.png'),
(12, 'Kinvey-Logo-Orange-2700px.png'),
(13, 'Linkdex-Logo.png'),
(16, 'kuukie-logo-en.png'),
(17, 'Uqido_logomodv2-21.png'),
(18, 'unity.png'),
(19, 'Solid_logo_png.png'),
(20, 'xtinct3d logo.png'),
(21, 'spike_it_logo.png'),
(22, 'OpscodeLogo_Tag_FINAL.png'),
(23, 'final.png'),
(24, 'florida.png'),
(25, 'TechxCentral-redone3.png'),
(26, 'logo_network3.png'),
(27, 'akacrm.png'),
(28, '3d-NEW.png'),
(29, 'SPEED_SkillStorm-Recruiter-Success-Training-white-BG.png'),
(30, 'social_fuse_Logo_MMME.png'),
(31, 'Sherry Logo Options-01finalcropped.png'),
(32, 'AntiDrug-Alliance.png'),
(33, 'CreativeWallGraphics_LOGO_Final.png');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `id` int(11) NOT NULL COMMENT 'Id',
  `fullname` char(255) NOT NULL COMMENT 'Fullname',
  `username` char(255) NOT NULL COMMENT 'Username',
  `password` text NOT NULL COMMENT 'Password',
  `email` mediumtext NOT NULL COMMENT 'Email',
  `active` int(1) NOT NULL COMMENT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`id`, `fullname`, `username`, `password`, `email`, `active`) VALUES
(1, 'David T Camacho', 'DavidTCamacho', 'TheHulk$2022', 'camachoonline@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logos_tbl`
--
ALTER TABLE `logos_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logos_tbl`
--
ALTER TABLE `logos_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

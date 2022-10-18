-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 01:01 AM
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
(2, '3d-NEW.png'),
(3, '44850_InternetMarketingPros.png'),
(4, '1785244723.jpg'),
(5, 'Acceleprise Logo.png'),
(6, 'akacrm.png'),
(7, 'AntiDrug-Alliance.png'),
(8, 'AppsGeyserLogoTransparent.png'),
(9, 'APS_logo_2011.png'),
(10, 'AttackIQ11.png'),
(11, 'ClientTickler-NoSheen.png'),
(12, 'CreativeWallGraphics_LOGO_Final.png'),
(13, 'CyberoamLogo.png'),
(14, 'final.png'),
(15, 'florida.png'),
(16, 'Kinvey-Logo-Orange-2700px.png'),
(17, 'kuukie-logo-en.png'),
(18, 'Linkdex-Logo.png'),
(19, 'logo_network3.png'),
(20, 'OpscodeLogo_Tag_FINAL.png'),
(21, 'Sherry Logo Options-01finalcropped.png'),
(22, 'social_fuse_Logo_MMME.png'),
(23, 'Solid_logo_png.png'),
(24, 'SPEED_SkillStorm-Recruiter-Success-Training-white-BG.png'),
(25, 'spike_it_logo.png'),
(26, 'TechxCentral-redone3.png'),
(27, 'unity.png'),
(28, 'Uqido_logomodv2-21.png'),
(29, 'xtinct3d-logo.png');

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

-- --------------------------------------------------------

--
-- Table structure for table `whologos_tbl`
--

CREATE TABLE `whologos_tbl` (
  `id` int(11) NOT NULL COMMENT 'Id',
  `userid` int(11) NOT NULL COMMENT 'UserId',
  `logoid` int(11) NOT NULL COMMENT 'LogoId'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `whologos_tbl`
--

INSERT INTO `whologos_tbl` (`id`, `userid`, `logoid`) VALUES
(1, 1, 1),
(2, 1, 2),
(4, 1, 3),
(5, 1, 4),
(7, 1, 5),
(8, 1, 6),
(9, 1, 7),
(10, 1, 8),
(11, 1, 9),
(12, 1, 10),
(13, 1, 11),
(14, 1, 12),
(15, 1, 13),
(16, 1, 14),
(17, 1, 15),
(18, 1, 16),
(19, 1, 17),
(20, 1, 18),
(21, 1, 19),
(22, 1, 20),
(23, 1, 21),
(24, 1, 22),
(25, 1, 23),
(26, 1, 24),
(27, 1, 25),
(28, 1, 26);

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
-- Indexes for table `whologos_tbl`
--
ALTER TABLE `whologos_tbl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`,`logoid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logos_tbl`
--
ALTER TABLE `logos_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `whologos_tbl`
--
ALTER TABLE `whologos_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id', AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

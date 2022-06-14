-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 11:49 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `live_username_checker`
--

-- --------------------------------------------------------

--
-- Table structure for table `usernames_list`
--

CREATE TABLE `usernames_list` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usernames_list`
--

INSERT INTO `usernames_list` (`id`, `username`) VALUES
(1, 'Aspect'),
(2, 'Bender'),
(3, 'Kraken'),
(4, 'Lynch'),
(5, 'Big Papa'),
(6, 'Mad Dog'),
(7, 'Bowser'),
(8, 'Bruise'),
(9, 'Psycho'),
(10, 'Cannon'),
(11, 'Ranger'),
(12, 'Clink'),
(13, 'Ratchet'),
(14, 'Cobra'),
(15, 'Reaper'),
(16, 'Colt'),
(17, 'Crank'),
(18, 'Rigs'),
(19, 'Ripley'),
(20, 'Roadkill'),
(21, 'Ronin'),
(22, 'Rubble'),
(23, 'Decay'),
(24, 'Diablo'),
(25, 'BoomBlaster'),
(26, 'Sasquatch'),
(27, 'Fender'),
(28, 'Skull Crusher'),
(29, 'Indominus'),
(30, 'Steel Foil');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usernames_list`
--
ALTER TABLE `usernames_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usernames_list`
--
ALTER TABLE `usernames_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

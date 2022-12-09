-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2022 at 04:58 PM
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
-- Database: `nailsalon`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `no_antri` int(3) NOT NULL,
  `nama_cust` varchar(30) NOT NULL,
  `alamat_cust` varchar(30) NOT NULL,
  `no_tlp` char(13) NOT NULL,
  `treat` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`no_antri`, `nama_cust`, `alamat_cust`, `no_tlp`, `treat`) VALUES
(2, 'ambu', 'pemuda', '081258987890', 'T5');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `id_treat` varchar(3) NOT NULL,
  `nama_treat` varchar(30) NOT NULL,
  `harga_treat` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`id_treat`, `nama_treat`, `harga_treat`) VALUES
('T1', 'Nail Art', 70000),
('T2', 'Manicure', 60000),
('T3', 'Pedicure', 50000),
('T4', 'Nail Art + Manicure', 120000),
('T5', 'Nail Art + Pedicure', 110000),
('T6', 'Manicure + Pedicure', 100000),
('T7', 'Nail Art + Manicure + Pedicure', 170000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`no_antri`),
  ADD KEY `treat` (`treat`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`id_treat`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`treat`) REFERENCES `treatment` (`id_treat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

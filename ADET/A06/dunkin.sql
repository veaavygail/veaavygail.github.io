-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 04:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dunkin`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(10) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `name`) VALUES
(1, 'Classic Donut'),
(2, 'Premium'),
(3, 'Munchkins'),
(4, 'Hot Beverages'),
(5, 'Cold Beverages'),
(6, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` int(10) NOT NULL,
  `categoryID` int(10) NOT NULL,
  `isAvailable` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `categoryID`, `isAvailable`, `name`, `code`, `price`, `image`) VALUES
(1, 1, '1', 'Bavarian Filled', 'BFD', 32, './assets/images/Classic/BavarianFilled.png'),
(2, 1, '1', 'Boston Kreme', 'BKD', 32, './assets/images/Classic/BostonKreme.png'),
(3, 1, '1', 'Choco Candy Sprinkler', 'CCSD', 32, './assets/images/Classic/ChocoCandySprinkler.png'),
(4, 1, '1', 'Choco Marble', 'CMD', 32, './assets/images/Classic/ChocoMarble.png'),
(5, 1, '1', 'Nutty Choco', 'NCD', 32, './assets/images/Classic/NuttyChoco.png'),
(6, 1, '1', 'Nutty Ube', 'NUD', 32, './assets/images/Classic/NuttyUbe.png'),
(7, 1, '1', 'Strawberry Candy Sprinkler', 'SCSD', 32, './assets/images/Classic/StrawberryCandySprinkler.png'),
(8, 1, '1', 'Strawberry Filled', 'SFD', 32, './assets/images/Classic/StrawberryFilled.png'),
(9, 1, '1', 'Sugar Raised', 'SRD', 32, './assets/images/Classic/SugarRaised.png'),
(10, 1, '1', 'Vanilla Candy Sprinkler', 'VCSD', 32, './assets/images/Classic/VanillaCandySprinkler.png'),
(11, 1, '1', 'Vanilla Marble', 'VMD', 32, './assets/images/Classic/VanillaMarble.png'),
(12, 2, '1', 'BTN', 'BTNPD', 44, './assets/images/Premium/BTN.png'),
(13, 2, '1', 'Choco BTN', 'CBTNPD', 44, './assets/images/Premium/ChocoBTN.png'),
(14, 2, '1', 'Choco Glazed', 'CGPD', 44, './assets/images/Premium/ChocoGlazed.png'),
(15, 2, '1', 'Choco Kreme', 'CKPD', 44, './assets/images/Premium/ChocoKreme.png'),
(16, 2, '1', 'Cinnamon Sugar Dusted', 'CSDPD', 44, './assets/images/Premium/CinnamonSugarDusted.png'),
(17, 2, '1', 'Dark Choco', 'DCPD', 50, './assets/images/Premium/DarkChoco.png'),
(18, 2, '1', 'Quezo Duo', 'QDPD', 44, './assets/images/Premium/QuezoDuo.png'),
(19, 2, '1', 'Strawberry Kreme Filled', 'SKFPD', 44, './assets/images/Premium/StrawberryKremeFilled.png'),
(20, 3, '1', 'Bavarian Munchkins', 'BM', 8, './assets/images/Munchkins/Bavarian.png'),
(21, 3, '1', 'BTN Munchkins', 'BTNM', 8, './assets/images/Munchkins/BTN.png'),
(22, 3, '1', 'Cheese Trickles Donut', 'CTM', 8, './assets/images/Munchkins/CheeseTrickles.png'),
(23, 3, '1', 'Choco Bavarian Munchkins', 'CBM', 8, './assets/images/Munchkins/ChocoBavarian.png'),
(24, 3, '1', 'Choco BTN Munchkins', 'CBM', 8, './assets/images/Munchkins/ChocoBTN.png'),
(25, 3, '1', 'Choco Coconut Munchkins', 'CCM', 8, './assets/images/Munchkins/ChocoCoconut.png'),
(26, 3, '1', 'Choco Filled Munchkins', 'CFM', 8, './assets/images/Munchkins/ChocoFilled.png'),
(27, 3, '1', 'Glazed Munchkins', 'GM', 8, './assets/images/Munchkins/Glazed.png'),
(28, 3, '1', 'Purple Yam Munchkins', 'PYM', 8, './assets/images/Munchkins/PurpleYam.png'),
(29, 3, '1', 'Strawberry Filled Munchkins', 'SFM', 8, './assets/images/Munchkins/StrawberryFilled.png'),
(30, 3, '1', 'Sugar Raised Munchkins', 'SRM', 8, './assets/images/Munchkins/SugarRaised.png'),
(31, 4, '1', 'Cafe Americano', 'CAHB', 104, './assets/images/HotBeverages/CafeAmericano.png'),
(32, 4, '1', 'Cappucino', 'CHB', 104, './assets/images/HotBeverages/Cappucino.png'),
(33, 4, '1', 'Espresso', 'EHB', 104, './assets/images/HotBeverages/Espresso.png'),
(34, 4, '1', 'Hot Choco', 'HCHB', 77, './assets/images/HotBeverages/HotChoco.png'),
(35, 4, '1', 'Hot Latte', 'HLHB', 104, './assets/images/HotBeverages/HotLatte.png'),
(36, 5, '1', 'Iced Brewed Tea', 'IBTCB', 70, './assets/images/ColdBeverages/IcedBrewedTea.png'),
(37, 5, '1', 'Iced Choco Java', 'ICJCB', 115, './assets/images/ColdBeverages/IcedChocoJava.png'),
(38, 5, '1', 'Iced Coffee', 'ICCB', 104, './assets/images/ColdBeverages/IcedCoffee.png'),
(39, 5, '1', 'Iced Cooler', 'ICCLCB', 70, './assets/images/ColdBeverages/IcedCooler.png'),
(40, 6, '1', 'Choco Bang', 'CBO', 40, './assets/images/Others/ChocoBang.png'),
(41, 6, '1', 'Dunkin Yam', 'DYO', 40, './assets/images/Others/DunkinYam.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

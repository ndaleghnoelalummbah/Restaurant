-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 10, 2023 at 02:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `AdminID` int(11) NOT NULL,
  `AdminName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`AdminID`, `AdminName`) VALUES
(1, 'Default'),
(2, 'Roger'),
(3, 'Gustav'),
(4, 'Egbe'),
(5, 'Admin1');

-- --------------------------------------------------------

--
-- Table structure for table `Catering`
--

CREATE TABLE `Catering` (
  `OrderID` int(11) NOT NULL,
  `DeliveryLocation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `CustID` int(11) NOT NULL,
  `CustName` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Tel` varchar(14) NOT NULL,
  `CustLocation` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Logging`
--

CREATE TABLE `Logging` (
  `CustID` int(11) NOT NULL,
  `Passwd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `MenuItems`
--

CREATE TABLE `MenuItems` (
  `ItemName` varchar(20) NOT NULL,
  `ItemDesc` text DEFAULT 'VERY DELICIOUS DELICACY',
  `Price` float NOT NULL,
  `ItemImage` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MenuItems`
--

INSERT INTO `MenuItems` (`ItemName`, `ItemDesc`, `Price`, `ItemImage`) VALUES
('Barbecue Set', 'Is it brunch or party?...Na me this!', 4000, NULL),
('Dodo and Ndole', 'Chop et yamo!', 3500, NULL),
('Egusi Pudding', 'Egusi paste but Cameroonian! Oya now!', 2000, NULL),
('Ekwang', 'Na to spread leg and wash hand!', 6000, NULL),
('Fried Rice', 'Seasoned-cooked rice with extras.', 3000, NULL),
('Fufu and Eru', 'Is there anything better?!', 1500, NULL),
('Grilled Chicken', 'Low fat Chicken grilled to perfection!', 5000, NULL),
('Kwacoco', 'VERY DELICIOUS DELICACY', 500, NULL),
('Stake & Taco', 'Crunchy and munchy!', 7000, NULL),
('Yam and Koki', 'Chop bellefull!', 3000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `MenuList`
--

CREATE TABLE `MenuList` (
  `Branch` varchar(50) NOT NULL,
  `MenuDate` date NOT NULL DEFAULT curdate(),
  `ItemName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MenuList`
--

INSERT INTO `MenuList` (`Branch`, `MenuDate`, `ItemName`) VALUES
('Mile-17', '2023-06-10', 'Barbecue Set'),
('Mile-17', '2023-06-10', 'Dodo and Ndole'),
('Mile-17', '2023-06-10', 'Egusi Pudding'),
('Mile-17', '2023-06-10', 'Kwacoco'),
('UB Junction', '2023-06-10', 'Barbecue Set'),
('UB Junction', '2023-06-10', 'Dodo and Ndole'),
('UB Junction', '2023-06-10', 'Ekwang'),
('UB Junction', '2023-06-10', 'Fried Rice'),
('UB Junction', '2023-06-10', 'Fufu and Eru'),
('UB Junction', '2023-06-10', 'Grilled Chicken');

-- --------------------------------------------------------

--
-- Table structure for table `OrderMenuContent`
--

CREATE TABLE `OrderMenuContent` (
  `OrderID` int(11) NOT NULL,
  `ItemName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Orders`
--

CREATE TABLE `Orders` (
  `OrderID` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `DeliveryDate` date DEFAULT NULL,
  `Quantity` int(11) NOT NULL,
  `TotalPrice` float NOT NULL,
  `Delivery_Time` time DEFAULT NULL,
  `stat` varchar(5) DEFAULT 'FALSE',
  `CustID` int(11) NOT NULL,
  `AdminID` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Payment`
--

CREATE TABLE `Payment` (
  `OrderID` int(11) NOT NULL,
  `Amount` float NOT NULL,
  `Payment_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Reservation`
--

CREATE TABLE `Reservation` (
  `OrderID` int(11) NOT NULL,
  `Reservation_size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `Catering`
--
ALTER TABLE `Catering`
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`CustID`);

--
-- Indexes for table `Logging`
--
ALTER TABLE `Logging`
  ADD KEY `CustID` (`CustID`);

--
-- Indexes for table `MenuItems`
--
ALTER TABLE `MenuItems`
  ADD PRIMARY KEY (`ItemName`);

--
-- Indexes for table `MenuList`
--
ALTER TABLE `MenuList`
  ADD PRIMARY KEY (`Branch`,`MenuDate`,`ItemName`),
  ADD KEY `ItemName` (`ItemName`);

--
-- Indexes for table `OrderMenuContent`
--
ALTER TABLE `OrderMenuContent`
  ADD PRIMARY KEY (`OrderID`,`ItemName`),
  ADD KEY `ItemName` (`ItemName`);

--
-- Indexes for table `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustID` (`CustID`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `Payment`
--
ALTER TABLE `Payment`
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `Reservation`
--
ALTER TABLE `Reservation`
  ADD KEY `OrderID` (`OrderID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admin`
--
ALTER TABLE `Admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Customer`
--
ALTER TABLE `Customer`
  MODIFY `CustID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Orders`
--
ALTER TABLE `Orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Catering`
--
ALTER TABLE `Catering`
  ADD CONSTRAINT `Catering_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Logging`
--
ALTER TABLE `Logging`
  ADD CONSTRAINT `Logging_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `Customer` (`CustID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MenuList`
--
ALTER TABLE `MenuList`
  ADD CONSTRAINT `MenuList_ibfk_1` FOREIGN KEY (`ItemName`) REFERENCES `MenuItems` (`ItemName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `OrderMenuContent`
--
ALTER TABLE `OrderMenuContent`
  ADD CONSTRAINT `OrderMenuContent_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `OrderMenuContent_ibfk_2` FOREIGN KEY (`ItemName`) REFERENCES `MenuItems` (`ItemName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`CustID`) REFERENCES `Customer` (`CustID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`AdminID`) REFERENCES `Admin` (`AdminID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Payment`
--
ALTER TABLE `Payment`
  ADD CONSTRAINT `Payment_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Reservation`
--
ALTER TABLE `Reservation`
  ADD CONSTRAINT `Reservation_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

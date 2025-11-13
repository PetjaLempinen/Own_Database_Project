-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 13.11.2025 klo 16:32
-- Palvelimen versio: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petjalempinen`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `budget`
--

CREATE TABLE `budget` (
  `BudgetID` int(11) NOT NULL,
  `BudgetAmount` decimal(10,2) NOT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `budget`
--

INSERT INTO `budget` (`BudgetID`, `BudgetAmount`, `UserID`) VALUES
(1, '2000.00', 1),
(2, '1800.00', 2),
(3, '2200.00', 3),
(4, '2500.00', 4),
(5, '1900.00', 5),
(6, '2100.00', 6),
(7, '2300.00', 7),
(8, '2400.00', 8),
(9, '1950.00', 9),
(10, '2050.00', 10);

-- --------------------------------------------------------

--
-- Rakenne taululle `category`
--

CREATE TABLE `category` (
  `Categoryid` int(11) NOT NULL,
  `Type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `category`
--

INSERT INTO `category` (`Categoryid`, `Type`) VALUES
(1, 'Income'),
(2, 'Income'),
(3, 'Income'),
(4, 'Expense'),
(5, 'Expense'),
(6, 'Expense'),
(7, 'Expense'),
(8, 'Expense');

-- --------------------------------------------------------

--
-- Rakenne taululle `expense`
--

CREATE TABLE `expense` (
  `ExpenseID` int(11) NOT NULL,
  `ExpenseAmount` decimal(10,2) NOT NULL,
  `ExpenseDate` date NOT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `PaymentMethodID` int(11) DEFAULT NULL,
  `BudgetID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `expense`
--

INSERT INTO `expense` (`ExpenseID`, `ExpenseAmount`, `ExpenseDate`, `CategoryID`, `UserID`, `PaymentMethodID`, `BudgetID`) VALUES
(1, '1150.00', '2025-11-02', 4, 1, 3, 1),
(2, '120.00', '2025-11-04', 6, 1, 2, 1),
(3, '90.00', '2025-11-06', 5, 2, 2, 2),
(4, '60.00', '2025-11-08', 7, 2, 1, 2),
(5, '40.00', '2025-11-09', 8, 3, 2, 3),
(6, '75.00', '2025-11-10', 6, 3, 1, 3),
(7, '1300.00', '2025-11-11', 4, 4, 3, 4),
(8, '110.00', '2025-11-12', 5, 5, 2, 5),
(9, '55.00', '2025-11-13', 7, 6, 1, 6),
(10, '200.00', '2025-11-14', 8, 7, 2, 7),
(11, '1250.00', '2025-11-15', 4, 8, 3, 8),
(12, '95.00', '2025-11-16', 5, 9, 2, 9),
(13, '80.00', '2025-11-17', 6, 10, 1, 10),
(14, '65.00', '2025-11-18', 7, 1, 2, 1),
(15, '150.00', '2025-11-19', 8, 2, 2, 2),
(16, '1400.00', '2025-11-20', 4, 3, 3, 3),
(17, '120.00', '2025-11-21', 5, 4, 2, 4),
(18, '85.00', '2025-11-22', 6, 5, 1, 5),
(19, '70.00', '2025-11-23', 7, 6, 2, 6),
(20, '220.00', '2025-11-24', 8, 7, 2, 7),
(21, '1280.00', '2025-11-25', 4, 8, 3, 8),
(22, '100.00', '2025-11-26', 5, 9, 2, 9),
(23, '95.00', '2025-11-27', 6, 10, 1, 10),
(24, '75.00', '2025-11-28', 7, 1, 2, 1),
(25, '160.00', '2025-11-29', 8, 2, 2, 2),
(26, '1350.00', '2025-11-30', 4, 3, 3, 3),
(27, '130.00', '2025-12-01', 5, 4, 2, 4),
(28, '90.00', '2025-12-02', 6, 5, 1, 5),
(29, '80.00', '2025-12-03', 7, 6, 2, 6),
(30, '210.00', '2025-12-04', 8, 7, 2, 7),
(31, '1275.00', '2025-12-05', 4, 8, 3, 8),
(32, '105.00', '2025-12-06', 5, 9, 2, 9),
(33, '100.00', '2025-12-07', 6, 10, 1, 10),
(34, '85.00', '2025-12-08', 7, 1, 2, 1),
(35, '170.00', '2025-12-09', 8, 2, 2, 2),
(36, '1320.00', '2025-12-10', 4, 3, 3, 3),
(37, '140.00', '2025-12-11', 5, 4, 2, 4),
(38, '95.00', '2025-12-12', 6, 5, 1, 5),
(39, '90.00', '2025-12-13', 7, 6, 2, 6),
(40, '230.00', '2025-12-14', 8, 7, 2, 7),
(41, '1260.00', '2025-12-15', 4, 8, 3, 8),
(42, '110.00', '2025-12-16', 5, 9, 2, 9),
(43, '105.00', '2025-12-17', 6, 10, 1, 10),
(44, '95.00', '2025-12-18', 7, 1, 2, 1),
(45, '180.00', '2025-12-19', 8, 2, 2, 2),
(46, '1310.00', '2025-12-20', 4, 3, 3, 3),
(47, '150.00', '2025-12-21', 5, 4, 2, 4),
(48, '100.00', '2025-12-22', 6, 5, 1, 5),
(49, '95.00', '2025-12-23', 7, 6, 2, 6),
(50, '240.00', '2025-12-24', 8, 7, 2, 7);

-- --------------------------------------------------------

--
-- Rakenne taululle `income`
--

CREATE TABLE `income` (
  `IncomeID` int(11) NOT NULL,
  `IncomeAmount` decimal(10,2) NOT NULL,
  `IncomeDate` date NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `income`
--

INSERT INTO `income` (`IncomeID`, `IncomeAmount`, `IncomeDate`, `UserID`, `CategoryID`) VALUES
(1, '3200.00', '2025-11-01', 1, 1),
(2, '450.00', '2025-11-05', 1, 2),
(3, '2800.00', '2025-11-01', 2, 1),
(4, '600.00', '2025-11-10', 2, 2),
(5, '1500.00', '2025-11-03', 3, 3),
(6, '300.00', '2025-11-07', 3, 2),
(7, '4000.00', '2025-11-01', 4, 1),
(8, '800.00', '2025-11-04', 4, 2),
(9, '3500.00', '2025-11-01', 5, 1),
(10, '200.00', '2025-11-06', 5, 2),
(11, '3100.00', '2025-11-01', 6, 1),
(12, '1200.00', '2025-11-08', 6, 3),
(13, '2900.00', '2025-11-01', 7, 1),
(14, '500.00', '2025-11-09', 7, 2),
(15, '3300.00', '2025-11-01', 8, 1),
(16, '900.00', '2025-11-05', 8, 3),
(17, '3600.00', '2025-11-01', 9, 1),
(18, '400.00', '2025-11-07', 9, 2),
(19, '3700.00', '2025-11-01', 10, 1),
(20, '1100.00', '2025-11-11', 10, 3),
(21, '3250.00', '2025-10-01', 1, 1),
(22, '500.00', '2025-10-05', 1, 2),
(23, '2850.00', '2025-10-01', 2, 1),
(24, '550.00', '2025-10-10', 2, 2),
(25, '1600.00', '2025-10-03', 3, 3),
(26, '350.00', '2025-10-07', 3, 2),
(27, '4050.00', '2025-10-01', 4, 1),
(28, '850.00', '2025-10-04', 4, 2),
(29, '3550.00', '2025-10-01', 5, 1),
(30, '250.00', '2025-10-06', 5, 2),
(31, '3150.00', '2025-10-01', 6, 1),
(32, '1250.00', '2025-10-08', 6, 3),
(33, '2950.00', '2025-10-01', 7, 1),
(34, '550.00', '2025-10-09', 7, 2),
(35, '3350.00', '2025-10-01', 8, 1),
(36, '950.00', '2025-10-05', 8, 3),
(37, '3650.00', '2025-10-01', 9, 1),
(38, '450.00', '2025-10-07', 9, 2),
(39, '3750.00', '2025-10-01', 10, 1),
(40, '1150.00', '2025-10-11', 10, 3),
(41, '3300.00', '2025-09-01', 1, 1),
(42, '2900.00', '2025-09-01', 2, 1),
(43, '1700.00', '2025-09-03', 3, 3),
(44, '4100.00', '2025-09-01', 4, 1),
(45, '3600.00', '2025-09-01', 5, 1),
(46, '1300.00', '2025-09-08', 6, 3),
(47, '600.00', '2025-09-09', 7, 2),
(48, '1000.00', '2025-09-05', 8, 3),
(49, '500.00', '2025-09-07', 9, 2),
(50, '3800.00', '2025-09-01', 10, 1);

-- --------------------------------------------------------

--
-- Rakenne taululle `paymentmethod`
--

CREATE TABLE `paymentmethod` (
  `PaymentMethodID` int(11) NOT NULL,
  `MethodName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `paymentmethod`
--

INSERT INTO `paymentmethod` (`PaymentMethodID`, `MethodName`) VALUES
(1, 'Cash'),
(2, 'Card'),
(3, 'Bank Transfer'),
(4, 'Mobile Pay');

-- --------------------------------------------------------

--
-- Rakenne taululle `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vedos taulusta `user`
--

INSERT INTO `user` (`UserID`, `FirstName`, `LastName`, `Email`) VALUES
(1, 'Alice', 'Wong', 'alice@example.com'),
(2, 'Bob', 'Smith', 'bob@example.com'),
(3, 'Carla', 'Diaz', 'carla@example.com'),
(4, 'David', 'Johnson', 'david@example.com'),
(5, 'Emma', 'Brown', 'emma@example.com'),
(6, 'Frank', 'Miller', 'frank@example.com'),
(7, 'Grace', 'Lee', 'grace@example.com'),
(8, 'Henry', 'Adams', 'henry@example.com'),
(9, 'Isabella', 'Clark', 'isabella@example.com'),
(10, 'Jack', 'Turner', 'jack@example.com');

-- --------------------------------------------------------

--
-- Näkymän vararakenne `userbudgetstatus`
--
CREATE TABLE `userbudgetstatus` (
`UserID` int(11)
,`BudgetAmount` decimal(10,2)
,`ActualExpenses` decimal(32,2)
,`RemainingBudget` decimal(33,2)
);

-- --------------------------------------------------------

--
-- Näkymän rakenne `userbudgetstatus`
--
DROP TABLE IF EXISTS `userbudgetstatus`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `userbudgetstatus`  AS  select `user`.`UserID` AS `UserID`,`budget`.`BudgetAmount` AS `BudgetAmount`,sum(`expense`.`ExpenseAmount`) AS `ActualExpenses`,(`budget`.`BudgetAmount` - sum(`expense`.`ExpenseAmount`)) AS `RemainingBudget` from ((`user` join `budget` on((`user`.`UserID` = `budget`.`UserID`))) join `expense` on((`budget`.`BudgetID` = `expense`.`BudgetID`))) group by `user`.`UserID`,`budget`.`BudgetAmount` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`BudgetID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Categoryid`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`ExpenseID`),
  ADD KEY `CategoryID` (`CategoryID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `PaymentMethodID` (`PaymentMethodID`),
  ADD KEY `BudgetID` (`BudgetID`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`IncomeID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `paymentmethod`
--
ALTER TABLE `paymentmethod`
  ADD PRIMARY KEY (`PaymentMethodID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `budget`
--
ALTER TABLE `budget`
  MODIFY `BudgetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `ExpenseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `IncomeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `paymentmethod`
--
ALTER TABLE `paymentmethod`
  MODIFY `PaymentMethodID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Rajoitteet vedostauluille
--

--
-- Rajoitteet taululle `budget`
--
ALTER TABLE `budget`
  ADD CONSTRAINT `budget_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Rajoitteet taululle `expense`
--
ALTER TABLE `expense`
  ADD CONSTRAINT `expense_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`Categoryid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `expense_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `expense_ibfk_3` FOREIGN KEY (`PaymentMethodID`) REFERENCES `paymentmethod` (`PaymentMethodID`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `expense_ibfk_4` FOREIGN KEY (`BudgetID`) REFERENCES `budget` (`BudgetID`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Rajoitteet taululle `income`
--
ALTER TABLE `income`
  ADD CONSTRAINT `income_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `income_ibfk_2` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`Categoryid`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

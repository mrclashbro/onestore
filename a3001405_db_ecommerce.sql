-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2020 at 12:12 PM
-- Server version: 5.7.32
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a3001405_db_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '2020', 1, 98, 'PROID', 10),
(2, '0', 1, 96, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGID` int(11) NOT NULL,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(5, 'Fruit & Vegetable', 0),
(11, 'Meat & Seafood', 0),
(12, 'Dairy', 0),
(13, 'Bakery', 0),
(14, 'Frozen', 0),
(15, 'Drinks', 0),
(16, 'Health & Beauty', 0),
(17, 'Household', 0),
(18, 'Baby Needs', 0),
(19, 'Alcohol', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `CUSHOMENUM` varchar(90) NOT NULL,
  `STREETADD` text NOT NULL,
  `BRGYADD` text NOT NULL,
  `CITYADD` text NOT NULL,
  `PROVINCE` varchar(80) NOT NULL,
  `COUNTRY` varchar(30) NOT NULL,
  `DBIRTH` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `EMAILADD` varchar(40) NOT NULL,
  `ZIPCODE` int(6) NOT NULL,
  `CUSUNAME` varchar(20) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `CUSPHOTO` varchar(255) NOT NULL,
  `TERMS` tinyint(4) NOT NULL,
  `DATEJOIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `MNAME`, `CUSHOMENUM`, `STREETADD`, `BRGYADD`, `CITYADD`, `PROVINCE`, `COUNTRY`, `DBIRTH`, `GENDER`, `PHONE`, `EMAILADD`, `ZIPCODE`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `TERMS`, `DATEJOIN`) VALUES
(10, 'Avishka', 'Deldeniya', '', '', '', '', 'Mount Maunganui', '', '', '0000-00-00', 'Male', '0226103367', '', 0, 'clash1331', '4472833d74b0df55a472c4932ac1c734eaec5aef', '', 1, '2020-10-30'),
(11, 'Avishka', 'Deldeniya', '', '', '', '', 'Mount Maunganui', '', '', '0000-00-00', 'Male', '0226103367', '', 0, 'clash1331', '69dbb4697997ad6d92ff972498b5bf6ee2475ead', '', 1, '2020-10-30'),
(12, 'Navpreet', 'Bal', '', '', '', '', 'te puke', '', '', '0000-00-00', 'Female', '9412345678', '', 0, 'NavpreetBal', '67990df1849fee7318007ab128fe13c97287cc59', '', 1, '2020-10-31'),
(13, 'Avishka', 'Deldeniya', '', '', '', '', 'Mount Maunganui', '', '', '0000-00-00', 'Male', '0226103367', '', 0, 'kumara', '30ca3057d55b841c7a7c4b0329c635a9a8e8c235', '', 1, '2020-11-01'),
(14, 'Avishka', 'Deldeniya', '', '', '', '', 'Mount Maunganui', '', '', '0000-00-00', 'Male', '0226103367', '', 0, 'ghjk', '86f8c1383711744256c14b9901f85dea146a0f48', '', 1, '2020-11-01'),
(15, 'Avishka', 'Deldeniya', '', '', '', '', 'Mount Maunganui', '', '', '0000-00-00', 'Male', '0226103367', '', 0, 'SDTHERT', 'c23aea4bef877ba2e50ca0660a9a8d3568775298', '', 1, '2020-11-01');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDERID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ORDERID`, `PROID`, `ORDEREDQTY`, `ORDEREDPRICE`, `ORDEREDNUM`, `USERID`) VALUES
(4, 201797, 1, 3690, 95, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PRODESC` varchar(255) DEFAULT NULL,
  `INGREDIENTS` varchar(255) NOT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `ORIGINALPRICE` double NOT NULL,
  `PROPRICE` double DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL,
  `OWNERNAME` varchar(90) NOT NULL,
  `OWNERPHONE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PRODESC`, `INGREDIENTS`, `PROQTY`, `ORIGINALPRICE`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`, `OWNERNAME`, `OWNERPHONE`) VALUES
(201745, 'Banana', '', 1, 90, 90, 5, 'uploaded_photos/Banana.png', 'Available', 'Bal', '0220214205'),
(201746, 'Cucumber', '', 1, 45, 45, 5, 'uploaded_photos/Cucumber.png', 'Available', 'Bal', '0220214205'),
(201747, 'Tomatoes', '', 1, 140, 140, 5, 'uploaded_photos/Tomato.png', 'Available', 'Bal', '0220214205'),
(201748, 'Orange', '', 1, 35, 35, 5, 'uploaded_photos/Orange.jpg', 'Available', 'Bal', '0220214205'),
(201749, 'Kiwi Fruit', '', 1, 1525, 1525, 5, 'uploaded_photos/Kiwi Fruit.jpg', 'Available', 'Bal', '0220214205'),
(201750, 'Broccoli ', '', 1, 4275, 4275, 5, 'uploaded_photos/Broccoli.png', 'Available', 'Bal', '0220214205'),
(201751, 'Baby Food', '', 1, 520, 520, 18, 'uploaded_photos/Baby Food.jpg', 'Available', 'Bal', '0220214205'),
(201752, 'Formula', '', 1, 1450, 1450, 18, 'uploaded_photos/Formula.png', 'Available', 'Bal', '0220214205'),
(201753, 'Nappies', '', 68, 4000, 4000, 18, 'uploaded_photos/Nappies.jpg', 'Available', 'Bal', '0220214205'),
(201754, 'Wipes                      ', '', 8, 3000, 3000, 18, 'uploaded_photos/Wipes.jpg', 'Available', 'Bal', '0220214205'),
(201755, 'Bread', '', 1, 250, 250, 13, 'uploaded_photos/Bread.png', 'Available', 'Bal', '0220214205'),
(201756, 'Cookies', '', 4, 350, 230, 13, 'uploaded_photos/Cookies.jpg', 'Available', 'Bal', '0220214205'),
(201757, 'Muffins', '', 1, 490, 490, 13, 'uploaded_photos/Muffins.jpg', 'Available', 'Bal', '0220214205'),
(201759, 'Pizza Base', '', 3, 400, 400, 13, 'uploaded_photos/Pizza Base.png', 'Available', 'Bal', '0220214205'),
(201760, 'Burger Buns', '', 8, 670, 570, 13, 'uploaded_photos/Burger Buns.jpg', 'Available', 'Bal', '0220214205'),
(201761, 'Drink Mixers', '', 2, 270, 250, 15, 'uploaded_photos/Drink Mixers.jpg', 'Available', 'Bal', '0220214205'),
(201762, 'Soft Drinks', '', 1, 300, 300, 15, 'uploaded_photos/Soft Drink.jpg', 'Available', 'Bal', '0220214205'),
(201763, 'Juice', '', 1, 600, 600, 12, 'uploaded_photos/Juice.png', 'Available', 'Bal', '0220214205'),
(201764, 'Energy Drinks', '', 1, 740, 740, 15, 'uploaded_photos/Energy Drinks.jpg', 'Available', 'Bal', '0220214205'),
(201765, 'Instant Coffee', '', 1, 740, 740, 15, 'uploaded_photos/Instant Coffee.jpg', 'Available', 'Bal', '0220214205'),
(201766, 'Water', '', 1, 250, 250, 15, 'uploaded_photos/Water.jpg', 'Available', 'Bal', '0220214205'),
(201767, 'Butter', '', 1, 670, 670, 12, 'uploaded_photos/Butter.jpg', 'Available', 'Bal', '0220214205'),
(201768, 'milk', '', 1, 430, 430, 12, 'uploaded_photos/Milk.png', 'Available', 'Bal', '0220214205'),
(201769, 'Cream', '', 1, 300, 300, 12, 'uploaded_photos/Cream.png', 'Available', 'Bal', '0220214205'),
(201770, 'Cheese', '', 1, 620, 620, 12, 'uploaded_photos/Cheese.jpg', 'Available', 'Bal', '0220214205'),
(201771, 'Flavored Yogurt ', '', 1, 650, 640, 12, 'uploaded_photos/Flavoured yogurt.png', 'Available', 'Bal', '0220214205'),
(201772, 'Chicken Nuggets ', '', 1, 1170, 1170, 14, 'uploaded_photos/Chicken Nuggets.png', 'Available', 'Bal', '0220214205'),
(201773, 'Mixed Vegetables', '', 1, 650, 650, 14, 'uploaded_photos/Mixed Veg.jpg', 'Available', 'Bal', '0220214205'),
(201774, 'Frozen Berries', '', 1, 810, 810, 14, 'uploaded_photos/Frozen berries.jpeg', 'Available', 'Bal', '0220214205'),
(201775, 'Hash Browns', '', 20, 740, 740, 14, 'uploaded_photos/Hash Browns.jpg', 'Available', 'Bal', '0220214205'),
(201776, 'Ice Cream', '', 1, 80, 800, 14, 'uploaded_photos/Ice cream.png', 'Available', 'Bal', '0220214205'),
(201777, 'Band Aid', '', 40, 610, 610, 16, 'uploaded_photos/Band Aid.jpg', 'Available', 'Bal', '0220214205'),
(201778, 'Sunscreen', '', 1, 2480, 2480, 16, 'uploaded_photos/Sunscreensjpg.jpg', 'Available', 'Bal', '0220214205'),
(201779, 'Shower Gel', '', 1, 600, 600, 16, 'uploaded_photos/Shower Gel.jpg', 'Available', 'Bal', '0220214205'),
(201780, 'Shampoo', '', 1, 1500, 1500, 16, 'uploaded_photos/Shampoo.jpg', 'Available', 'Bal', '0220214205'),
(201781, 'Hand Wash', '', 1, 370, 370, 16, 'uploaded_photos/Hand wash.jpg', 'Available', 'Bal', '0220214205'),
(201782, 'Sanitizer', '', 1, 1150, 1150, 16, 'uploaded_photos/Sanitizer.jpg', 'Available', 'Bal', '0220214205'),
(201783, 'Toothbrush', '', 2, 990, 990, 16, 'uploaded_photos/Toothbrush.jpg', 'Available', 'Bal', '0220214205'),
(201784, 'Toothpaste', '', 1, 375, 375, 16, 'uploaded_photos/Toothpaste.jpg', 'Available', 'Bal', '0220214205'),
(201785, 'Cleaning Wipes ', '', 1, 1240, 1240, 17, 'uploaded_photos/Cleaning Wipes.jpg', 'Available', 'Bal', '0220214205'),
(201786, 'Rubbish Bags', '', 1, 190, 190, 17, 'uploaded_photos/Rubbish Bags.jpg', 'Available', 'Bal', '0220214205'),
(201787, 'Room Fresheners', '', 1, 250, 250, 17, 'uploaded_photos/Room Fresheners.jpg', 'Available', 'Bal', '0220214205'),
(201788, 'Toilet Papers', '', 1, 1240, 1240, 17, 'uploaded_photos/Toilet Papers.jpg', 'Available', 'Bal', '0220214205'),
(201789, 'Dish wash ', '', 1, 380, 380, 17, 'uploaded_photos/Dishwash .jpg', 'Available', 'Bal', '0220214205'),
(201790, 'Laundry Powder', '', 1, 2450, 2450, 17, 'uploaded_photos/Laundry Powder.jpg', 'Available', 'Bal', '0220214205'),
(201791, 'Beef Mince', '', 1, 1230, 1230, 11, 'uploaded_photos/Beef Mince.png', 'Available', 'Bal', '0220214205'),
(201792, 'Chicken steaks', '', 1, 1230, 1230, 11, 'uploaded_photos/Chicken steaks.png', 'Available', 'Bal', '0220214205'),
(201793, 'Lamb', '', 1, 2000, 2000, 11, 'uploaded_photos/Lamb.png', 'Available', 'Bal', '0220214205'),
(201794, 'Sausages', '', 1, 1120, 1120, 0, 'uploaded_photos/Sausages.png', 'Available', 'Bal', '0220214205'),
(201795, 'Pork ribs', '', 1, 1350, 1350, 11, 'uploaded_photos/Pork ribs.png', 'Available', 'Bal', '0220214205'),
(201796, 'Red Wine', '', 1, 1240, 1240, 19, 'uploaded_photos/Red Wine.png', 'Available', 'Bal', '0220214205'),
(201797, 'Beer', '', 0, 3690, 3690, 19, 'uploaded_photos/Beer.jpg', 'Available', 'Bal', '0220214205');

-- --------------------------------------------------------

--
-- Table structure for table `tblpromopro`
--

CREATE TABLE `tblpromopro` (
  `PROMOID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` double NOT NULL,
  `PRODISPRICE` double NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(9, 201745, 0, 90, 0, 0),
(10, 201746, 0, 45, 0, 0),
(11, 201747, 0, 140, 0, 0),
(12, 201748, 0, 35, 0, 0),
(13, 201749, 0, 1525, 0, 0),
(14, 201750, 0, 4275, 0, 0),
(15, 201751, 0, 520, 0, 0),
(16, 201752, 0, 1450, 0, 0),
(17, 201753, 0, 4000, 0, 0),
(18, 201754, 0, 3000, 0, 0),
(19, 201755, 0, 250, 0, 0),
(20, 201756, 0, 230, 0, 0),
(21, 201757, 0, 490, 0, 0),
(23, 201759, 0, 400, 0, 0),
(24, 201760, 0, 570, 0, 0),
(25, 201761, 0, 250, 0, 0),
(26, 201762, 0, 300, 0, 0),
(27, 201763, 0, 600, 0, 0),
(28, 201764, 0, 740, 0, 0),
(29, 201765, 0, 740, 0, 0),
(30, 201766, 0, 250, 0, 0),
(31, 201767, 0, 670, 0, 0),
(32, 201768, 0, 430, 0, 0),
(33, 201769, 0, 300, 0, 0),
(34, 201770, 0, 620, 0, 0),
(35, 201771, 0, 640, 0, 0),
(36, 201772, 0, 1170, 0, 0),
(37, 201773, 0, 650, 0, 0),
(38, 201774, 0, 810, 0, 0),
(39, 201775, 0, 740, 0, 0),
(40, 201776, 0, 800, 0, 0),
(41, 201777, 0, 610, 0, 0),
(42, 201778, 0, 2480, 0, 0),
(43, 201779, 0, 600, 0, 0),
(44, 201780, 0, 1500, 0, 0),
(45, 201781, 0, 370, 0, 0),
(46, 201782, 0, 1150, 0, 0),
(47, 201783, 0, 990, 0, 0),
(48, 201784, 0, 375, 0, 0),
(49, 201785, 0, 1240, 0, 0),
(50, 201786, 0, 190, 0, 0),
(51, 201787, 0, 250, 0, 0),
(52, 201788, 0, 1240, 0, 0),
(53, 201789, 0, 380, 0, 0),
(54, 201790, 0, 2450, 0, 0),
(55, 201791, 0, 1230, 0, 0),
(56, 201792, 0, 1230, 0, 0),
(57, 201793, 0, 2000, 0, 0),
(58, 201794, 0, 1120, 0, 0),
(59, 201795, 0, 1350, 0, 0),
(60, 201796, 0, 1240, 0, 0),
(61, 201797, 0, 3690, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsetting`
--

CREATE TABLE `tblsetting` (
  `SETTINGID` int(11) NOT NULL,
  `PLACE` text NOT NULL,
  `BRGY` varchar(90) NOT NULL,
  `DELPRICE` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstockin`
--

CREATE TABLE `tblstockin` (
  `STOCKINID` int(11) NOT NULL,
  `STOCKDATE` datetime DEFAULT NULL,
  `PROID` int(11) DEFAULT NULL,
  `STOCKQTY` int(11) DEFAULT NULL,
  `STOCKPRICE` double DEFAULT NULL,
  `USERID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblsummary`
--

CREATE TABLE `tblsummary` (
  `SUMMARYID` int(11) NOT NULL,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `DELFEE` double NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `HVIEW` tinyint(4) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsummary`
--

INSERT INTO `tblsummary` (`SUMMARYID`, `ORDEREDDATE`, `CUSTOMERID`, `ORDEREDNUM`, `DELFEE`, `PAYMENT`, `PAYMENTMETHOD`, `ORDEREDSTATS`, `ORDEREDREMARKS`, `CLAIMEDADTE`, `HVIEW`, `USERID`) VALUES
(4, '2020-10-31 07:06:11', 12, 95, 0, 3690, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `U_PASS`, `U_ROLE`, `USERIMAGE`) VALUES
(129, 'Avishka', 'avishka', 'f42e70b07a67b59101e6e8f70ca8e6adc41252d2', 'Administrator', ''),
(130, 'Napreet', 'Bal', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `id` int(11) NOT NULL,
  `CUSID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `WISHDATE` date NOT NULL,
  `WISHSTATS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDERID`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `ORDEREDNUM` (`ORDEREDNUM`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`PROID`),
  ADD KEY `CATEGID` (`CATEGID`);

--
-- Indexes for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  ADD PRIMARY KEY (`PROMOID`),
  ADD UNIQUE KEY `PROID` (`PROID`);

--
-- Indexes for table `tblsetting`
--
ALTER TABLE `tblsetting`
  ADD PRIMARY KEY (`SETTINGID`);

--
-- Indexes for table `tblstockin`
--
ALTER TABLE `tblstockin`
  ADD PRIMARY KEY (`STOCKINID`),
  ADD KEY `PROID` (`PROID`,`USERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tblsetting`
--
ALTER TABLE `tblsetting`
  MODIFY `SETTINGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblstockin`
--
ALTER TABLE `tblstockin`
  MODIFY `STOCKINID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

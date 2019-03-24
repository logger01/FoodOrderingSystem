-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2019 at 05:24 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `catname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `catname`) VALUES
(4, 'BREAKFAST'),
(5, 'LUNCH'),
(6, 'DINNER'),
(7, 'BEVERAGES'),
(10, 'FRUITS');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(11) NOT NULL,
  `categoryid` int(1) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `productname`, `price`, `photo`) VALUES
(14, 4, 'Pancake Tacos with Cheese and ', 400, 'upload/pancake_breakfast_tacos400_1539096003.jpg'),
(15, 4, 'Egg Baked In Tomatoes', 320, 'upload/eggs_in_tomatoes_1539095833.jpeg'),
(16, 5, 'Beef & Broccoli Stir-Fry', 360, 'upload/brocollibeef_1539096616_1539097842.jpg'),
(17, 5, 'Spaghetti', 400, 'upload/spagetti_1539097965.png'),
(18, 7, 'Mojito', 200, 'upload/http _cdn.cnn.com_cnnnext_dam_assets_170224172523-mojito_1539097580.jpg'),
(19, 7, 'Sex On The Beach', 250, 'upload/http _cdn.cnn.com_cnnnext_dam_assets_170227111426-sex-on-the-beach-cocktail_1539097662.jpg'),
(20, 6, 'Slow Cooker Orange Chicken ', 450, 'upload/slow-cooker-chicken-recipes-orange-1533576720_1539097827.jpg'),
(21, 4, 'Eggs in a Basket', 375, 'upload/egg_in_a_hole_recipe400_1539096098.jpg'),
(22, 4, 'Full English Breakfast', 600, 'upload/1145_1539096763.jpg'),
(23, 7, 'Coca-Cola', 80, 'upload/cocacola_1539097796.jpg'),
(24, 6, 'Tibetan momo', 110, 'upload/momo_1552404782.jpg'),
(27, 6, 'Chinese Chowmein', 150, 'upload/chowmein_1552410271.jpg'),
(30, 7, 'Tassimo', 350, 'upload/tassimo_1552412280.png'),
(31, 10, 'Strawberry', 200, 'upload/strawberry_1552412337.jpg'),
(32, 10, 'Banana', 60, 'upload/banana_1552412413.jpg'),
(33, 10, 'Grapes', 150, 'upload/grapes_1552412433.jpg'),
(34, 10, 'Mangoes', 160, 'upload/mango_1552412461.jpg'),
(35, 4, 'Becon $ Eggs', 250, 'upload/bacon & eggs_1552467270.jpg'),
(36, 4, 'Sandwich', 140, 'upload/sandwich_1552467370.jpg'),
(37, 4, 'American Skillet', 260, 'upload/American_Skillet_1552467546.jpg'),
(38, 5, 'Pasta Salad', 130, 'upload/pasta_1552467649.jpg'),
(39, 5, 'Gujarati Thali', 110, 'upload/gujarati thali_1552467754.jpg'),
(40, 5, 'KFC NZ', 300, 'upload/kfc_1552467890.jpg'),
(41, 5, 'South Meals', 80, 'upload/south meals_1552468100.jpg'),
(42, 5, 'Chicken Rice', 90, 'upload/chicken_1552468377.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchaseid` int(11) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `total` double NOT NULL,
  `date_purchase` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchaseid`, `customer`, `total`, `date_purchase`) VALUES
(8, 'Yeshi', 600, '2017-12-06 15:29:00'),
(9, 'demo', 450, '2018-10-09 20:19:43'),
(10, 'Jamtsen Dorjee', 620, '2019-03-12 21:00:14'),
(11, 'Angelica Kharpuri', 1080, '2019-03-12 22:51:51'),
(12, 'sanju', 0, '2019-03-22 19:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_detail`
--

CREATE TABLE `purchase_detail` (
  `pdid` int(11) NOT NULL,
  `purchaseid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_detail`
--

INSERT INTO `purchase_detail` (`pdid`, `purchaseid`, `productid`, `quantity`) VALUES
(13, 8, 15, 2),
(14, 8, 17, 2),
(15, 8, 18, 2),
(16, 9, 15, 3),
(17, 10, 15, 2),
(18, 11, 16, 3),
(19, 12, 37, 0),
(20, 12, 35, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'demo', 'davidjames6799@gmail.com', '96e79218965eb72c92a549dd5a330112'),
(3, 'demo2', 'tentibet59@gmail.com', '96e79218965eb72c92a549dd5a330112'),
(4, 'jamtsen', 'tendawa123@outlook.com', '96e79218965eb72c92a549dd5a330112'),
(5, 'suresh1991', 'php47@yahoo.com', '96e79218965eb72c92a549dd5a330112');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  ADD PRIMARY KEY (`pdid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `purchase_detail`
--
ALTER TABLE `purchase_detail`
  MODIFY `pdid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 03:37 PM
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
-- Database: `sally`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(10) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(2, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(1, '127.0.0.1', 0),
(2, '127.0.0.1', 0),
(14, '127.0.0.1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Business'),
(2, 'Economy'),
(3, 'Regular'),
(4, 'offer');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `c_passport` varchar(100) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_name`, `customer_email`, `customer_pass`, `c_passport`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`) VALUES
(12, '127.0.0.1', 'sally', 'eng_sallycis@yahoo.com', '123456', '11121', 'Egypt', 'egypt', 'dfhdh', 'egypt', 'images.jpeg'),
(13, '127.0.0.1', 'sally', 'eng_sallycis@yahoo.com', '123456', '11121', 'Egypt', 'egypt', 'dfhdh', 'egypt', 'images.jpeg'),
(14, '127.0.0.1', 'sally', 'eng_sallycis@yahoo.com', '123456', '11121', 'Egypt', 'egypt', 'dfhdh', 'egypt', 'images.jpeg'),
(15, '127.0.0.1', 'sally', 'sallyadd@gmail.com', 'admin', '11121', 'Egypt', 'egy', 'dfhdh', 'egypt', 'images.jpeg'),
(16, '127.0.0.1', 'sally ahmed', 'sallyahmeddd@gmail.com', 'admin', '11121', 'Egypt', 'egypt', 'dfhdh', 'egypt', 'images.jpeg'),
(17, '', '', 'rodywrovy2021@gmail.com ', '2911177', '11616161', 'egypt', 'egypt', '+6616161661', 'bjbujbk bjbjbkjb bjkbjkbjbkj', '');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(100) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_email` varchar(100) NOT NULL,
  `emp_designation` varchar(100) NOT NULL,
  `emp_location` varchar(100) NOT NULL,
  `emp_address` varchar(255) NOT NULL,
  `emp_contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `emp_email`, `emp_designation`, `emp_location`, `emp_address`, `emp_contact`) VALUES
(2, 'sally', 'sally@gmail.com', 'sally', 'egypt', 'eqypt egypt', '+20521151515');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(25) NOT NULL,
  `name` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `country` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `contact` varchar(255) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `country`, `contact`, `address`) VALUES
(1, 'sally ', 'engsallycis@gmail.com', 'Kuwit', '+20150510550', 'adadd dsdds sfsfsf'),
(2, 'sally mohamed abdelRasoul', 'rodywrovy2021@gmail.com', 'France', '+20150510550', 'uiojhiojio jjojjojo jojpoopjo'),
(4, 'sally mohamed abdelRasoul', 'engsallycis@gmail.com', 'Egypt', '+20150510550', 'wfafaf'),
(5, 'sally', 'engsallycis@gmail.com', 'France', '+20150510550', 'cdsdcsdvsdvd'),
(6, 'sally mohamed abdelRasoul', 'engsallycis@gmail.com', 'Egypt', '+20150510550', 'wfafaf');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(100) NOT NULL,
  `package_cat` int(100) NOT NULL,
  `package_type` int(100) NOT NULL,
  `package_title` varchar(255) NOT NULL,
  `package_price` int(100) NOT NULL,
  `package_desc` longtext NOT NULL,
  `package_image` text NOT NULL,
  `package_keywords` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_cat`, `package_type`, `package_title`, `package_price`, `package_desc`, `package_image`, `package_keywords`) VALUES
(1, 1, 2, 'Egypt', 5500, '<p>Bali is situated at Indonesia</p>', 'balitravel.jpg', 'egypt egypt egypt'),
(2, 2, 2, 'kwuit', 5000, '<p>Location: Bichanakandi, Sylhet</p>\r\n<p>About:&nbsp;<span style=\"font-weight: bold; color: #6a6a6a; font-family: arial, sans-serif; font-size: small;\">Bichanakandi</span><span style=\"color: #545454; font-family: arial, sans-serif; font-size: small;\">&nbsp;is all about waterfalls and collection of stones, pebbles in the crystal-clear river water.The ranges of the Khasi mountain meet at point here.</span></p>\r\n<p>&nbsp;</p>\r\n<p>Our offer: 3 days &amp; 2 nights family tour package (4 person)</p>\r\n<p>Hotel: Sylhet Parjoton</p>\r\n<p>Check availability: available</p>\r\n<p>&nbsp;</p>\r\n<p>Discount: not available</p>\r\n<p>Total cost: 2500 USD</p>', 'bichanakandi02.jpg', 'kuwit kwuit  kuwit kwuit  kuwit kwuit '),
(10, 1, 1, 'Switzerland', 7000, '<p>Location: Switzerland</p>\r\n<p>About: Switzerland</p>\r\n<p>Our offer: 3 days &amp; 2 nights single</p>\r\n<p>Hotel: ABCD Hotel</p>\r\n<p>Check availability: available</p>\r\n<p>Discount: not available</p>\r\n<p>Total cost: 3200 USD</p>', 'swiss.jpg', 'swiss switzerland Switzerland Europe Business Single business single europe'),
(14, 3, 3, 'saudi arabia', 9000, '<p>About: Rajasthan has many tourists attractions......</p>\r\n<p><span style=\"color: #222222; font-family: sans-serif;\">Our offer: 6days &amp; 5 nights couple tour</span></p>\r\n<p><span style=\"color: #222222; font-family: sans-serif;\">Hotel: ABC Hotel, Rajasthan</span></p>\r\n<p><span style=\"color: #222222; font-family: sans-serif;\">Discount: 10% for DBBL users</span></p>\r\n<p><span style=\"color: #222222; font-family: sans-serif;\">Total cost: 9000 USD</span></p>', 'rajasthan.jpg', 'saudi saudi saudi');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` int(100) NOT NULL,
  `type_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_title`) VALUES
(1, 'Single'),
(2, 'Family'),
(3, 'Couple'),
(4, 'offer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

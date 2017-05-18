-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2017 at 12:44 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'DELL'),
(3, 'LG'),
(4, 'Samsung'),
(5, 'Symphony'),
(6, 'Nokia'),
(7, 'Philips'),
(8, 'Sony');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Laptops'),
(2, 'Cameras'),
(3, 'Mobiles'),
(4, 'Computers'),
(5, 'Note Books'),
(6, 'Television');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(3, 1, 2, 'Dell Latitude', 439, '<p><span style=\"color: #444444; font-family: roboto, Arial, Helvetica, sans-serif;\">For small and growing business professionals who want a secure, easily managed and reliable laptop with strong performance for everyday productivity.â€‹</span></p>', 'dell_latitude.jpg', 'dell, laptop, latitude'),
(4, 3, 5, 'Helios S1', 200, '<p><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); margin: 0px; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 12px; background-color: #e0e3e1;\">Helio S1</strong><span style=\"font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 12px; background-color: #e0e3e1;\">&nbsp;is the first smartphone from the&nbsp;</span><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); margin: 0px; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 12px; background-color: #e0e3e1;\">new brand Helio</strong><span style=\"font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 12px; background-color: #e0e3e1;\">. You may wonder why is this phone added under the brand&nbsp;</span><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); margin: 0px; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 12px; background-color: #e0e3e1;\">Symphony</strong><span style=\"font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 12px; background-color: #e0e3e1;\">? Because Helio S1 is released by&nbsp;</span><strong style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0.1); margin: 0px; font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 12px; background-color: #e0e3e1;\">Edison Group</strong><span style=\"font-family: Arial, Tahoma, Verdana, sans-serif; font-size: 12px; background-color: #e0e3e1;\">, the owner of Symphony brand. For some reason they have decided to release this premium smartphone under a new brand name. But they are also publicize it under Symphony.</span></p>', 'Helio-S1-compressed.jpg', 'helios, symphony, s1'),
(5, 1, 1, 'HP 630', 2000, '<div class=\"para\" style=\"box-sizing: border-box; margin: 15px 0px 20px; padding: 0px;\"><strong class=\"bold\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: HPSimplified;\">The HP 630/631 Notebook PC is a tool for success. This notebook has a sophisticated design with a smooth matte surface and an understated pewter color for a clean professional look.</strong></div>', 'hp630.jpg', 'hp, laptop, new, i3, notebook'),
(6, 3, 3, 'HTC Desire 820G Plus', 450, '<p><span style=\"color: #545454; font-family: Roboto, arial, sans-serif; font-size: small;\">HTC Desire 820 smartphone was launched in September 2014. The phone comes with a 5.50-inch touchscreen display with a resolution of 720 pixels by 1280 pixels at a PPI of 267 pixels per inch</span></p>', 'htc_desire_820.jpg', 'htc, desire, mobile, lg'),
(7, 1, 8, 'Sony VAIO', 4500, '<div class=\"primeText\" style=\"box-sizing: border-box; font-size: 12px; line-height: normal; margin-top: 15px; color: #666666; font-family: Arial, Helvetica, sans-serif;\"><span class=\"diff_time\" style=\"box-sizing: border-box; color: #000000; font-weight: bold;\">Note : This product is not Fulfilled by Ubuy and can take minimum 10 days in delivery. We might cancel the product from the order and refund you if any issue arise with the delivery of this product.</span></div>\r\n<div class=\"std\" style=\"box-sizing: border-box; line-height: 1.33333rem; font-size: 12px; color: #666666; font-family: Arial, Helvetica, sans-serif;\">NEW Sony VAIO SVF15215CLW Fit 15.5\" TOUCH Laptop i5 / 750GB / 6GB RAM (VENEZUELA)</div>\r\n<div class=\"primeText\" style=\"box-sizing: border-box; font-size: 12px; line-height: normal; margin-top: 15px; color: #666666; font-family: Arial, Helvetica, sans-serif;\"><span class=\"diff_time\" style=\"box-sizing: border-box; color: #000000; font-weight: bold;\">Note : Power converter may require for using some electronic products. Please visit our&nbsp;<a style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-weight: normal; line-height: 1; text-decoration-line: none; color: #0254eb; -webkit-tap-highlight-color: rgba(0, 102, 204, 0.15);\" href=\"https://www.ubuy.com.my/en/terms#termsandconditions\" target=\"_blank\" rel=\"noopener noreferrer\">T&amp;C&nbsp;</a>for more details.</span></div>', 'sony vaio.jpg', 'sony, laptop, windows, bluetooth '),
(8, 3, 4, 'Samsung Galaxy J1', 1000, '<p>Bluetooth, GPS, A-GPS, MP3, MP4, Radio, GPRS, Edge, Loudspeaker, Multitouch</p>\r\n<p>&nbsp;</p>', 'xaomi_redmi_1s.jpg', 'xiaomi, smart, phone, mobile, redmi, philips');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

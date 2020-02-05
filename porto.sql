-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2020 at 12:37 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `porto`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(500) NOT NULL,
  `UserId` varchar(500) NOT NULL,
  `UserName` varchar(500) NOT NULL,
  `Password` varchar(500) NOT NULL,
  `MemberName` varchar(500) NOT NULL,
  `Profile_Pic` varchar(500) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `ContactNo` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL,
  `Date` varchar(500) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`Id`, `Email`, `UserId`, `UserName`, `Password`, `MemberName`, `Profile_Pic`, `Address`, `ContactNo`, `Status`, `Date`) VALUES
(5, 'ravigreencubes@gmail.com', '836953', 'admin', '123456', 'Ravi Parmar', '20161008171233.jpg', 'thaltej', '9638657382', 'SuperAdmin', '02/07/2016');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `street_address` varchar(150) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `state` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `userid`, `firstname`, `lastname`, `company_name`, `street_address`, `city`, `country`, `zipcode`, `state`, `phone`, `status`) VALUES
(2, 57, 'Adil', 'Abbas', 'Green cubes soltion', 'devla', 'devla', '4', 253210, '11', '0982402188', 'Active'),
(3, 36, 'adil', 'abbbas', 'green', 'hidayat nagar', 'dvevla', '4', 392040, '11', '8511541421', 'Active'),
(5, 59, 'Atif', 'Patel', 'Teacher', 'Hidayat Nagar', 'Dvla', '7', 392040, '30', '8511809840', 'Active'),
(6, 60, 'Abbas', 'Patel', 'Retire', 'Hidyat Nagar1', 'Devla one', '4', 392040, '11', '9724881715', 'Active'),
(7, 70, 'Femu', 'Patel', 'House', 'Tnadalja', 'baroda', '6', 392040, '26', '7894561233', 'Active'),
(8, 73, 'adil', 'abbas', 'Green Cubes Solution', 'Devla', 'bharuch', '4', 392040, '11', '08511541421', 'Active'),
(9, 75, 'Femu', 'Patel', 'House', 'Tnadalja', 'baroda', '4', 392040, '11', '7894561233', 'Active'),
(10, 74, 'Asif', 'Abbas', 'Molsab', 'Mahuvej', 'Kosamba', '4', 253210, '11', '9824021887', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b_title` varchar(50) NOT NULL,
  `b_description` longtext NOT NULL,
  `b_categories` varchar(100) NOT NULL,
  `b_date` varchar(50) NOT NULL,
  `b_images` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `b_title`, `b_description`, `b_categories`, `b_date`, `b_images`, `status`) VALUES
(34, 'Bags', '<p><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">Adil is a kind of soft container. It can hold or carry things. It may be made from cloth, leather, plastic, or paper. ... A small </span><b style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">bag</b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;"> that can be carried with a single hand is sometimes called a </span><b style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">handbag</b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">, </span><b style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">purse</b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">, or pocketbook.</span></p>', '6,7,8,9', '24-08-2015', '94501-21-2020.jpg', 'Active'),
(37, 'Sports', '<p><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;"> is all forms of usually competitive physical activity which, through casual or organised participation, aim to use, maintain or improve physical ability and skills while providing entertainment to participants, and in some cases, spectators.</span></p>', '2,7', '01-21-2020', '29401-21-2020.jpg', 'Active'),
(38, 'Ac', '<p><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">a is</span><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;"> conditioner</span><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;"> is a system or a machine that treats air in a defined, usually enclosed area via a refrigeration cycle in which warm air is removed and replaced with cooler air. In construction, a complete system of heating, ventilation, and </span><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">air conditioning</span><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;"> is referred to as HVAC.</span></p>', '3,6,9', '24-08-2015', '25301-21-2020.jpg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `blogcat`
--

CREATE TABLE IF NOT EXISTS `blogcat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_category` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `blogcat`
--

INSERT INTO `blogcat` (`id`, `blog_category`, `status`) VALUES
(2, 'adil', 'Active'),
(3, 'patel', 'Active'),
(6, 'patel', 'Active'),
(7, 'aa', 'Active'),
(8, 'fg', 'Active'),
(9, 'sdg', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `blogcategory`
--

CREATE TABLE IF NOT EXISTS `blogcategory` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_category` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `blogcategory`
--

INSERT INTO `blogcategory` (`c_id`, `blog_category`, `status`) VALUES
(5, 'Patel', 'Active'),
(6, 'Adil', 'Active'),
(7, 'Abbas', 'Active'),
(8, 'adil', 'Active'),
(9, 'adil', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `quantity`) VALUES
(12, 81, 36, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `thumbnail_image` varchar(50) NOT NULL,
  `category_image` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `category_description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `thumbnail_image`, `category_image`, `status`, `category_description`) VALUES
(70, 'Ac', '81501-21-2020.jpg', '84401-21-2020.jpg', 'Active', ''),
(73, ' Refrigerators', '37101-21-2020.webp', '58701-21-2020.webp', 'Active', ''),
(74, 'Washing Machine', '52101-21-2020.jpg', '50701-21-2020.jpg', 'Active', ''),
(75, 'Kitchen & Home Applience', '94001-21-2020.png', '61601-21-2020.png', 'Active', ''),
(76, 'Heating & Colling Appliance', '90201-21-2020.jpg', '83001-21-2020.jpg', 'Active', ''),
(77, 'Tube Lights', '71001-21-2020.jpg', '3001-21-2020.jpg', 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) NOT NULL,
  `city_code` varchar(80) NOT NULL,
  `status` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city_name`, `city_code`, `status`) VALUES
(46, 'Baroda', '542df7f77f0bbbea91fe6f84d30482f3', 'Active'),
(47, 'Surat', 'e10212e09e6eb3b49d00e046870445af', 'Active'),
(54, 'Jambusar', '542df7f77f0bbbea91fe6f84d30482f3', 'Active'),
(57, 'Aligrah', '38b0d2ff1c03df82aea67222983d337e', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `contactinfo`
--

CREATE TABLE IF NOT EXISTS `contactinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_addr` longtext NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email_adr` varchar(30) NOT NULL,
  `working_days` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `contactinfo`
--

INSERT INTO `contactinfo` (`id`, `c_addr`, `phone`, `email_adr`, `working_days`, `status`) VALUES
(5, '<p><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">305 B, Shivalik Corporate Park, B/h IOC Petrol pump, 132 Feet Ring Rd, Satellite, Ahmedabad, Gujarat 380015</span></p>', '8511541421', 'adilgreencubes@gmail.com', '7.00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`, `status`) VALUES
(4, 'India', 'Active'),
(6, 'Bangladesh', 'Active'),
(7, 'America', 'Active'),
(8, 'Afghanistan', 'Active'),
(9, 'Albanie', 'Active'),
(11, 'Argentine', 'Active'),
(12, 'Canada', 'Active'),
(13, 'Cuba', 'Active'),
(14, 'Danemark', 'Active'),
(15, 'Égypte', 'Active'),
(16, 'France', 'Active'),
(17, 'Islande', 'Active'),
(18, 'Italie', 'Active'),
(19, 'Kenya', 'Active'),
(20, 'Oman', 'Active'),
(21, 'Qatar', 'Active'),
(22, 'Singapour', 'Active'),
(23, 'United Kingdom', 'Active'),
(24, 'United States', 'Active'),
(26, 'Zambia', 'Active'),
(27, 'Pakistan', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `Cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `Cust_Unique_Code` varchar(30) NOT NULL,
  `Cust_name` varchar(30) NOT NULL,
  `Cust_LName` varchar(30) NOT NULL,
  `Gender` enum('male','female') NOT NULL,
  `Cust_Email` varchar(50) NOT NULL,
  `Cust_Password` varchar(50) NOT NULL,
  `Cust_Country` varchar(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Cust_Date` datetime NOT NULL,
  `Cust_Status` varchar(10) NOT NULL,
  `billing_name` varchar(500) NOT NULL,
  `billing_address` varchar(500) NOT NULL,
  `billing_phone` varchar(15) NOT NULL,
  `billing_email` varchar(50) NOT NULL,
  `ship_name` varchar(500) NOT NULL,
  `ship_address` varchar(500) NOT NULL,
  `ship_phone` varchar(15) NOT NULL,
  `ship_email` varchar(50) NOT NULL,
  PRIMARY KEY (`Cust_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Cust_id`, `Cust_Unique_Code`, `Cust_name`, `Cust_LName`, `Gender`, `Cust_Email`, `Cust_Password`, `Cust_Country`, `Birthday`, `Cust_Date`, `Cust_Status`, `billing_name`, `billing_address`, `billing_phone`, `billing_email`, `ship_name`, `ship_address`, `ship_phone`, `ship_email`) VALUES
(58, '1611250756591088939311', 'dev', '', 'male', 'dev@mailinator.com', 'XnCOFXzvzFGHXS/GZ5kVEZ9PAE2N+oCeqydK87yGuwo=', 'Angola', '2016-11-18', '2016-11-25 22:26:59', 'Active', 'dev patel', 'devkashdkahsdl kjhkj hkjh kjh kjh kjh kjhjk hkjhkj kjh kjh kjh kjhkjh kjh kj', '9998010990', 'de@t.u', '', '', '', ''),
(59, '161125091829119774858', 'miraj mor', '', 'male', 'mormiraj@gmail.com', 'cygGLqlfhk6J7w7XuMGWgpQOJWizlAUFi2Yt5/Q68xM=', 'India', '1989-09-26', '2016-11-25 23:48:29', 'Active', 'green', 'ahmedabad', 'werwer', 'green@green.com', '', '', '', ''),
(60, '16112611404323087793', 'bahsh', '', 'male', 'vsb@gmail.com', 'DeIaIEvl60wXjgI0xIWU5uvj9IO+RcFbLjNt0jVGtYY=', 'Anguilla', '2016-11-26', '2016-11-26 14:10:43', 'Active', '', '', '', '', '', '', '', ''),
(63, '1611281137461434346036', 'hv', '', 'male', 'hv@gmail.com', 'XnCOFXzvzFGHXS/GZ5kVEZ9PAE2N+oCeqydK87yGuwo=', 'Belize', '2016-11-28', '2016-11-28 14:07:46', 'Active', 'he', 'jam', '08940342', 'JHJHS@GAMAIL.COM', '', '', '', ''),
(64, '116880905647101597980', 'hitesh varotariya', '', '', '', 'Login_api', '', '0000-00-00', '2016-11-28 00:00:00', 'Active', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE IF NOT EXISTS `general_settings` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Logo` varchar(500) NOT NULL,
  `Small_Logo` varchar(200) NOT NULL,
  `Website_Email` varchar(500) NOT NULL,
  `Alert_Email` varchar(500) NOT NULL,
  `Contact_Email` varchar(500) NOT NULL,
  `Paypal_Id` varchar(500) NOT NULL,
  `Phone` varchar(30) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Copyright` text NOT NULL,
  `homepage_image` varchar(500) NOT NULL,
  `homepage_text` longtext NOT NULL,
  `Lat` varchar(500) NOT NULL,
  `Long` varchar(500) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`Id`, `Logo`, `Small_Logo`, `Website_Email`, `Alert_Email`, `Contact_Email`, `Paypal_Id`, `Phone`, `Address`, `Copyright`, `homepage_image`, `homepage_text`, `Lat`, `Long`) VALUES
(1, 'Logo.png', 'SmallLogo.png', 'support@chhabra555.com', 'info@chhabra555.com', '', '', '9638657382', '555,Katra Ashrafi, Chandni Chowk,New Delhi, 110006,India', '', '1478967007833556430.png', 'All prices quoted here are\r\nwholesale prices and is\r\napplicable even for 1 piece\r\nbeing purchased.', '28.657397', '77.234691');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=137 ;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(136, 108, 84, 1, 35000);

-- --------------------------------------------------------

--
-- Table structure for table `order_prd`
--

CREATE TABLE IF NOT EXISTS `order_prd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `order_date` varchar(50) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `order_total` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `order_prd`
--

INSERT INTO `order_prd` (`id`, `userid`, `order_date`, `order_type`, `order_total`, `status`) VALUES
(108, 60, '2020-01-21', 'cod', '$35000', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(250) NOT NULL,
  `page_details` longtext NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_title`, `page_details`, `status`) VALUES
(7, 'OUR HISTORY', '<h1 style="margin-top: -0.4rem; font-family: " open="" sans",="" sans-serif;="" color:="" rgb(0,="" 0,="" 0);="" font-size:="" 3rem;="" margin-bottom:="" 4rem="" !important;"=""><span style="font-weight: 700;">2014</span></h1><p style="margin-bottom: 1.5rem; color: rgb(0, 0, 0); font-family: " open="" sans",="" sans-serif;="" font-size:="" 14px;"="">Aliquam consectetur et lorem semper scelerisque. Proin est nibh, vestibulum vitae congue nec, tristique eu justo. Maecenas eu nunc lacinia, porta lorem vitae, viverra velit. Nulla dolor libero, rhoncus quis luctus eu, fermentum sed leo. Morbi ut risus porttitor odio sodales pulvinar. Sed gravida nulla sed sapien vulputate, eget malesuada justo egestas. Pellentesque sem mi, vulputate ac iaculis sit amet, sagittis feugiat dui. Proin non pellentesque leo. Vestibulum varius laoreet posuere. Etiam fringilla diam odio.</p><p style="margin-bottom: 1.5rem; color: rgb(0, 0, 0); font-family: " open="" sans",="" sans-serif;="" font-size:="" 14px;"="">Nulla felis nibh, bibendum a leo ut, egestas ornare felis. Nam pretium mauris justo, eget commodo est fringilla vel. Proin condimentum, lacus sit amet finibus gravida, sapien ligula mattis leo, sit amet mattis leo lacus sit amet lectus. Nulla facilisi. Etiam porta iaculis velit id pulvinar. Sed dolor odio, eleifend eget aliquam vitae, efficitur vitae dolor. Integer ornare neque ac leo sollicitudin, at vestibulum ante scelerisque. Nullam ut elit sed lorem tempus feugiat in et lectus. Mauris interdum molestie placerat. Nullam dolor nunc, elementum et tincidunt id, vestibulum quis turpis. Integer imperdiet a eros a laoreet. Nam mattis vel ligula non imperdiet. Suspendisse potenti. Fusce purus sem, dapibus eu fermentum eget, aliquam vehicula ligula.</p><p style="margin-bottom: 1.5rem; color: rgb(0, 0, 0); font-family: " open="" sans",="" sans-serif;="" font-size:="" 14px;"=""><span style="font-weight: bold;"><br></span></p><h1 style="margin-top: -0.4rem; font-family: "><br></h1>', 'Active'),
(11, 'Cricket History', '<p><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">The International </span><b style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">Cricket</b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;"> Council on Thursday confirmed the full </span><b style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">schedule</b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;"> of the </span><b style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">ICC Cricket World Cup 2019</b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">, which will be staged in England and Wales from May</span></p><p><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;"><br></span></p><p><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">The </span><b style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;">2019</b><span style="color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;"> event featured 10 teams and was the culmination of a global qualification process that ran over a 5-6 year period.</span></p>', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sales_price` varchar(1000) NOT NULL,
  `regular_price` varchar(1000) NOT NULL,
  `p_short_desc` longtext NOT NULL,
  `p_desc` longtext NOT NULL,
  `pr_images` varchar(300) NOT NULL,
  `status` varchar(50) NOT NULL,
  `popular` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `category_id`, `sales_price`, `regular_price`, `p_short_desc`, `p_desc`, `pr_images`, `status`, `popular`) VALUES
(84, 'Voltas 2 Ton 1 Star Split AC (243 CYe, White)', 70, '33990', '35000', '<p>Split Acs Faster Colling</p>', '<p><span style="color: rgb(17, 17, 17); font-family: arial, helvetica, sans-serif; font-size: 12px;">Battling the heat in your home is a thing of past with high-efficiency air conditioners available in the market. And, Amazon helps you combat better with its range of air conditioners available in its Large Appliances section. It houses air conditioners from all popular brands like LG, Samsung, Voltas, Panasonic, Godrej, Blue Star, Videocon, Whirlpool, Hitachi and Lloyd! From split and window style ACs to inverter ACs, and capacities ranging from as low as 0.75 ton to more than 2 tons, there are air conditioners of all kinds and capacities at Amazon under one roof. Based on your room’s size, choose amongst the different styles of air conditioners and stay comfortable year round.</span></p>', '21401-22-2020.jpeg,86401-22-2020.jpeg,36901-22-2020.jpeg,86701-22-2020.jpeg', 'Active', 'popular'),
(85, 'Whirlpool 0.8 Ton 3 Star Inverter Split AC (Copper', 70, '22990', '23000', '<div><span style="color: rgb(17, 17, 17); font-family: " amazon="" ember",="" arial,="" sans-serif;"="">10% Instant Discount up to Rs. 1500 on minimum purchase of Rs. 5,000 with SBI Credit cards and Credit Card EMI</span></div>', '<div><ul class="a-unordered-list a-vertical a-spacing-none" style="margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: " amazon="" ember",="" arial,="" sans-serif;"=""><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Split AC with inverter compressor: Variable speed compressor which adjusts power depending on heat load. It is most energy efficient and has lowest-noise operation</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Capacity: 0.8 Ton. Suitable for small sized rooms (< = 110 sq ft), Auto Restart: No need to manually reset the settings post power-cut</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Energy Rating: 3 Star. Annual Energy Consumption: 520.08 units. ISEER Value: 3.87 (Please refer energy label on product page or contact brand for more details)</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Manufacturer Warranty : 1 year on product, 1 year on condenser, 10 years on compressor</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Copper Condenser Coil: Better cooling and requires low maintenance</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Special Features: Cools Even at 52 Deg Celsius;Turbo cool;Dehumidifier</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Refrigerant gas: R410A. No ozone depletion potential</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Included in the box: Indoor Unit, Outdoor Unit, Remote Control, User manual, Warranty Card,Connecting Pipes</span></li></ul></div>', '76801-21-2020.jpeg,58501-21-2020.jpeg,34201-21-2020.jpeg,4801-21-2020.jpeg,57101-21-2020.jpeg,23901-21-2020.jpeg', 'Active', 'popular'),
(86, 'Godrej 1.5 Ton 3 Star Split AC (Copper, GSC 18KTC3', 70, '27498', '28000', '<p><span id="sopp-seller-promotion-label" class="sopp-offer-title" style="color: rgb(177, 39, 4); font-weight: bold; font-family: " amazon="" ember",="" arial,="" sans-serif;"=""> </span><span style="color: rgb(17, 17, 17); font-family: " amazon="" ember",="" arial,="" sans-serif;"="">Get GST invoice and save up to 28% on business purchases.</span></p>', '<ul class="a-unordered-list a-vertical a-spacing-none" style="margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: " amazon="" ember",="" arial,="" sans-serif;"=""><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Split AC with non-inverter compressor: Low noise. Affordable compared to inverter split ACs</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Capacity: 1.5 Ton. Suitable for medium sized rooms (111 to 150 sq ft) ; Electricity Consumption ( 1600 Hours ) Per Year: 1122.45 W ; Noise Level Outdoor In Db(A): 60 ; Voltage: 230V / 50Hz ; Expansion Device in ODU: Capillary ; Condensor Fins: Hydrophilic Coating</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Energy Rating: 3 Star. Annual Energy Consumption: 1122.45 units. ISEER Value: 3.52 (Please refer energy label on product page or contact brand for more details)</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Manufacturer Warranty : 1 year on product, 1 year on condenser, 5 years on compressor</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Copper Condenser Coil: Better cooling and requires low maintenance</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Special Features: Antibacterial_Coating; Dust_Filter</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Refrigerant gas: R32</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Included in the box: Indoor Unit, Outdoor Unit, Remote Control, User manual, Warranty Card,Connecting Pipes</span></li></ul>', '39801-21-2020.jpeg,60901-21-2020.jpeg,31201-21-2020.jpeg,1701-21-2020.jpeg', 'Active', 'popular'),
(88, 'Whirlpool 340 L 4 Star ( 2019 ) Inverter Frost-Fre', 73, '29990', '30000', '<ul class="a-unordered-list a-vertical a-spacing-none" style="margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: " amazon="" ember",="" arial,="" sans-serif;"=""><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Frost-free refrigerator; 340 litres capacity</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Energy Rating: 4 Star ; Technology: Convertible Freezer with 5- IN-1 Modes, 6TH SENSE IntelliFresh </span></li></ul>', '<ul class="a-unordered-list a-vertical a-spacing-none" style="margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: " amazon="" ember",="" arial,="" sans-serif;"=""><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Frost-free refrigerator; 340 litres capacity</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Energy Rating: 4 Star ; Technology: Convertible Freezer with 5- IN-1 Modes, 6TH SENSE IntelliFresh Technology, Intellisense Inverter ; Door Open Alarm: Yes ; Dimensions (W*D*H)cm: 62*67.5*168</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Warranty: 1 year on product, 10 years on compressor</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Convertible Freezer with 5 in 1 Modes</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Adaptive Intelligence Technology</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">IntelliSense INVERTER TECHNOLOGY</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">MICROBLOCKPrevents upto 99% bacterial growth, keeping fruits and vegetables fresh for longer</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Active Deo: It keeps the refrigerator environment fresh and odour-free</span></li></ul>', '99601-21-2020.jpeg,65501-21-2020.jpeg,71701-21-2020.jpeg,98701-21-2020.jpeg,97801-21-2020.jpeg,48501-21-2020.jpeg', 'Active', 'popular'),
(89, 'Samsung 415 L 4 Star ( 2019 ) Inverter Frost Free ', 73, '42890', '43000', '<ul class="a-unordered-list a-vertical a-spacing-small" style="margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: " amazon="" ember",="" arial,="" sans-serif;"=""><li class="a-spacing-small a-spacing-top-small" style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item"><span id="sopp-buyback-label" class="sopp-offer-title" style="color: rgb(177, 39, 4); font-weight: bold;">Exchange Offer: </span>Up to &#8377; 1,960.00 off on Exchange</span></li><dptags:querylogoperation methodname="addCount" metric="SOPP:soppEMIBTF"><li class="a-spacing-small a-spacing-top-small" style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item"><span id="sopp-emi-label" class="sopp-offer-title" style="color: rgb(177, 39, 4); font-weight: bold;">No Cost EMI (3)</span></span></li></dptags:querylogoperation></ul>', '<ul class="a-unordered-list a-vertical a-spacing-none" style="margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: " amazon="" ember",="" arial,="" sans-serif;"=""><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Frost Free, Double Door: Auto defrost to stop ice-build up</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Cacapity 415 L: Suitable for families with 5 or more members</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Warranty: 1 year on product, 10 years on compressor</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Energy Rating: 4 Star, Door Alarm: Yes</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Digital Inverter Compressor – Energy efficient, less noise & more durable</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Shelf Type: Toughened Glass</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Also included in the box: User manual, Warranty card</span></li></ul>', '70601-21-2020.jpeg,22301-21-2020.jpeg,60501-21-2020.jpeg,63301-21-2020.jpeg,48001-21-2020.jpeg,68401-21-2020.jpeg,59301-21-2020.jpeg', 'Active', 'popular'),
(90, 'Haier 320 L 3 Star ( 2019 ) Frost Free Double Door', 73, '25490', '26000', '<p><span style="color: rgb(17, 17, 17); font-family: " amazon="" ember",="" arial,="" sans-serif;="" font-size:="" 11px;"="">Ships from and sold by Cloudtail India.</span></p>', '<ul class="a-unordered-list a-vertical a-spacing-none" style="margin-right: 0px; margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); padding: 0px; font-family: " amazon="" ember",="" arial,="" sans-serif;"=""><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Frost Free, Double Door: Auto defrost to stop ice-build up , 1HIT(1 Hour Icing Technology) Freshness Solution available , Frequency:50Hz</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Capacity 320 L: Suitable for families with 3-4 members</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Warranty: 1 year on product, 10 years on compressor</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Energy Rating: 3 Star; Climate Class:T=18 43°C</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Shelf Type: Toughened Glass</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Also included in the box: User manual, Warranty card</span></li><li style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item">Voltage/Frequency:220-240V/50Hz</span></li></ul>', '20601-21-2020.jpeg,33601-21-2020.jpeg,31101-21-2020.jpeg,60701-21-2020.jpeg,97301-21-2020.jpeg', 'Active', ''),
(91, 'Godrej 236 L 2 Star ( 2019 ) Frost Free Double Doo', 73, '28000', '30000', '<span style="font-size: 17px;">Godrej  236 L 2 Star ( 2019 ) Frost Free Double Doo</span>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="LG 687 L Frost Free Side-by-Side Refrigerator(GC-B247SLUV.APZQEBN, Platinum Silver, Inverter Compressor)" href="https://www.amazon.in/LG-Refrigerator-GC-B247SLUV-APZQEBN-Platinum-Compressor/dp/B01MXSZGGX/ref=lp_18199459031_1_3?s=kitchen&ie=UTF8&qid=1579585536&sr=1-3" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 class="a-size-mini a-spacing-none a-color-base s-line-clamp-2" style="padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: 700; color: rgb(17, 17, 17); overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; max-height: 42.67px; font-family: " amazon="" ember",="" arial,="" sans-serif;="" margin-bottom:="" 0px="" !important;="" font-size:="" 11px="" line-height:="" 1.465="" !important;"=""><span style="color: rgb(103, 106, 108); font-family: " open="" sans",="" "helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 17px;="" font-weight:="" 400;"="">Godrej  </span><span style="color: rgb(103, 106, 108); font-family: " open="" sans",="" "helvetica="" neue",="" helvetica,="" arial,="" sans-serif;="" font-size:="" 17px;="" font-weight:="" 400;"="">236 L 2 Star ( 2019 ) Frost Free Double Doo</span></h2>', '71501-21-2020.jpeg,3401-21-2020.jpeg,50301-21-2020.jpeg,91501-21-2020.jpeg,29201-21-2020.jpeg', 'Active', 'popular'),
(92, 'Haier 531 L Inverter Frost-Free Side-by-Side Refri', 73, '58990', '60000', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Haier 531 L Inverter Frost-Free Side-by-Side Refrigerator (HRB-550KG, Black)" href="https://www.amazon.in/Haier-Inverter-Frost-Free-Refrigerator-HRB-550KG/dp/B07TKL52TL/ref=lp_18199459031_1_6?s=kitchen&ie=UTF8&qid=1579585536&sr=1-6" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Haier 531 L Inverter Frost-Free Side-by-Side Refrigerator (HRB-550KG, Black)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Haier 531 L Inverter Frost-Free Side-by-Side Refrigerator (HRB-550KG, Black)</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Haier 531 L Inverter Frost-Free Side-by-Side Refrigerator (HRB-550KG, Black)" href="https://www.amazon.in/Haier-Inverter-Frost-Free-Refrigerator-HRB-550KG/dp/B07TKL52TL/ref=lp_18199459031_1_6?s=kitchen&ie=UTF8&qid=1579585536&sr=1-6" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Haier 531 L Inverter Frost-Free Side-by-Side Refrigerator (HRB-550KG, Black)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Haier 531 L Inverter Frost-Free Side-by-Side Refrigerator (HRB-550KG, Black)</h2>', '74801-21-2020.jpeg,78001-21-2020.jpeg,5301-21-2020.jpeg,66701-21-2020.jpeg,28301-21-2020.jpeg,66101-21-2020.jpeg,41901-21-2020.jpeg,63301-21-2020.jpeg', 'Active', 'popular'),
(93, 'Samsung 810 L Frost Free Side-by-Side Refrigerator', 73, '273700', '274000', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Samsung 810 L Frost Free Side-by-Side Refrigerator(RF28N9780SG/TL, Black, Inverter Compressor)" href="https://www.amazon.in/Samsung-Refrigerator-RF28N9780SG-TL-Compressor/dp/B07FFSDKK5/ref=lp_18199459031_1_12?s=kitchen&ie=UTF8&qid=1579585536&sr=1-12" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Samsung 810 L Frost Free Side-by-Side Refrigerator(RF28N9780SG/TL, Black, Inverter Compressor)" data-max-rows="4" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Samsung 810 L Frost Free Side-by-Side Refrigerator(RF28N9780SG/TL, Black, Inverter Compressor)</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Samsung 810 L Frost Free Side-by-Side Refrigerator(RF28N9780SG/TL, Black, Inverter Compressor)" href="https://www.amazon.in/Samsung-Refrigerator-RF28N9780SG-TL-Compressor/dp/B07FFSDKK5/ref=lp_18199459031_1_12?s=kitchen&ie=UTF8&qid=1579585536&sr=1-12" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Samsung 810 L Frost Free Side-by-Side Refrigerator(RF28N9780SG/TL, Black, Inverter Compressor)" data-max-rows="4" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Samsung 810 L Frost Free Side-by-Side Refrigerator(RF28N9780SG/TL, Black, Inverter Compressor)</h2>', '41001-21-2020.jpeg,4801-21-2020.jpeg,92401-21-2020.jpeg,71501-21-2020.jpeg,9701-21-2020.jpeg,53501-21-2020.jpeg,28601-21-2020.jpeg,25501-21-2020.jpeg', 'Active', 'popular'),
(94, 'Lg 236 L 2 Star ( 2019 ) Frost Free Double Doo', 73, '50000', '51000', '<h2 class="a-size-mini a-spacing-none a-color-base s-line-clamp-2" style="padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; max-height: 42.67px;" amazon="" ember",="" arial,="" sans-serif;="" margin-bottom:="" 0px="" !important;="" font-size:="" 11px="" line-height:="" 1.465="" !important;"=""><span style="color: rgb(17, 17, 17); font-weight: 700;">Lg 236 L 2 Star ( 2019 ) Frost Free Double </span></h2>', '<h2 class="a-size-mini a-spacing-none a-color-base s-line-clamp-2" style="padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; max-height: 42.67px;" amazon="" ember",="" arial,="" sans-serif;="" margin-bottom:="" 0px="" !important;="" font-size:="" 11px="" line-height:="" 1.465="" !important;"=""><span style="color: rgb(17, 17, 17); font-size: 17px;">Lg 236 L 2 Star ( 2019 ) Frost Free Double Doo</span></h2>', '81401-21-2020.jpeg,21501-21-2020.jpeg,72401-21-2020.jpeg,9801-21-2020.jpeg,52901-21-2020.jpeg,68201-21-2020.jpeg,95801-21-2020.jpeg,58801-21-2020.jpeg', 'Active', 'popular'),
(95, 'BPL 564 L Frost Free Side-by-Side Refrigerator(BRS', 73, '39999', '41999', '<span style="font-size: 17px;">BPL Ref</span>', '<span style="font-size: 17px;">BPL</span>', '76001-21-2020.jpeg,38101-21-2020.jpeg,4601-21-2020.jpeg,94301-21-2020.jpeg,52601-21-2020.jpeg,99001-21-2020.jpeg,21301-21-2020.jpeg,80001-21-2020.jpeg', 'Active', 'popular'),
(103, 'GANESH Wonder Chopper', 75, '129', '200', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="GANESH Wonder Chopper" href="https://www.amazon.in/Ganesh-Wonder-Chopper-GANESH/dp/B07YB8YYDZ/ref=lp_4951860031_1_4?s=kitchen&ie=UTF8&qid=1579588618&sr=1-4" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="GANESH Wonder Chopper" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">GANESH Wonder Chopper</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="GANESH Wonder Chopper" href="https://www.amazon.in/Ganesh-Wonder-Chopper-GANESH/dp/B07YB8YYDZ/ref=lp_4951860031_1_4?s=kitchen&ie=UTF8&qid=1579588618&sr=1-4" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="GANESH Wonder Chopper" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">GANESH Wonder Chopper</h2>', '8801-21-2020.jpeg,2001-21-2020.jpeg', 'Active', 'popular'),
(104, 'Prestige 1.5 Litre Kettle 1500-watts, Red', 75, '699', '750', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Prestige 1.5 Litre Kettle 1500-watts, Red" href="https://www.amazon.in/Prestige-1-5-Kettle-1500-watts-Red/dp/B07VNFP3C2/ref=lp_4951860031_1_5?s=kitchen&ie=UTF8&qid=1579588618&sr=1-5" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Prestige 1.5 Litre Kettle 1500-watts, Red" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Prestige 1.5 Litre Kettle 1500-watts, Red</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Prestige 1.5 Litre Kettle 1500-watts, Red" href="https://www.amazon.in/Prestige-1-5-Kettle-1500-watts-Red/dp/B07VNFP3C2/ref=lp_4951860031_1_5?s=kitchen&ie=UTF8&qid=1579588618&sr=1-5" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Prestige 1.5 Litre Kettle 1500-watts, Red" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Prestige 1.5 Litre Kettle 1500-watts, Red</h2>', '43501-21-2020.jpeg,59101-21-2020.jpeg,17701-21-2020.jpeg', 'Active', 'popular'),
(105, 'Orpat OEH-1220 2000-Watt Fan Heater (White)', 75, '1099', '1200', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Orpat OEH-1220 2000-Watt Fan Heater (White)" href="https://www.amazon.in/Orpat-OEH-1220-2000-Watt-Heater-White/dp/B00B7GHQQW/ref=lp_4951860031_1_6?s=kitchen&ie=UTF8&qid=1579589078&sr=1-6" style="color: rgb(0, 102, 192); font-family: "Amazon Ember", Arial, sans-serif; background-color: rgb(255, 255, 255);"></a></p><h2 data-attribute="Orpat OEH-1220 2000-Watt Fan Heater (White)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Orpat OEH-1220 2000-Watt Fan Heater (White)</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Orpat OEH-1220 2000-Watt Fan Heater (White)" href="https://www.amazon.in/Orpat-OEH-1220-2000-Watt-Heater-White/dp/B00B7GHQQW/ref=lp_4951860031_1_6?s=kitchen&ie=UTF8&qid=1579589078&sr=1-6" style="color: rgb(0, 102, 192); font-family: "Amazon Ember", Arial, sans-serif; background-color: rgb(255, 255, 255);"></a></p><h2 data-attribute="Orpat OEH-1220 2000-Watt Fan Heater (White)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Orpat OEH-1220 2000-Watt Fan Heater (White)</h2>', '42001-21-2020.webp', 'Active', ''),
(106, 'Best seller Prestige Iris(750 Watt) Mixer Grinder ', 75, '2749', '2850', '<div class="a-row a-spacing-top-micro a-spacing-micro" style="width: 542.328px; color: rgb(148, 148, 148); font-family: "Amazon Ember", Arial, sans-serif; margin-bottom: 4px !important; margin-top: 4px !important;"><div class="a-row sx-badge-region" style="width: 542.328px;"><div class="a-row a-badge-region" style="width: 542.328px;"><a id="BESTSELLER_B0756K5DYZ" href="https://www.amazon.in/gp/bestsellers/kitchen/4375446031/ref=sr_bs_0_4375446031_1" class="a-badge" aria-labelledby="BESTSELLER_B0756K5DYZ-label BESTSELLER_B0756K5DYZ-supplementary" data-a-badge-supplementary-position="right" data-a-badge-type="status" style="color: rgb(0, 102, 192); display: inline-block; float: left;"><span id="BESTSELLER_B0756K5DYZ-label" class="a-badge-label" data-a-badge-color="sx-orange" aria-hidden="true" style="background-color: rgb(35, 47, 62); color: rgb(35, 47, 62); position: relative; height: 26px; z-index: 1; float: left; max-width: 143px; padding: 0px 6px 0px 10px;"><span class="a-badge-label-inner a-text-ellipsis" style="text-overflow: ellipsis; white-space: nowrap; display: block; line-height: 26px; height: 26px; font-size: 12px; color: rgb(255, 255, 255); overflow: hidden !important;"><span class="a-badge-text" data-a-badge-color="sx-cloud">Best seller</span></span></span></a></div></div></div><div class="a-row a-spacing-base" style="width: 542.328px; color: rgb(148, 148, 148); font-family: "Amazon Ember", Arial, sans-serif; margin-bottom: 14px !important;">dfjlfhnfbkbjfd</div><div class="a-row a-spacing-mini" style="width: 542.328px; color: rgb(148, 148, 148); font-family: "Amazon Ember", Arial, sans-serif; margin-bottom: 6px !important;"></div>', '<p>kfjhgukdsjgfi</p>', '72701-21-2020.webp', 'Active', 'popular'),
(107, 'Generic Electronic Kitchen Digital Weighing Scale,', 75, '225', '500', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Generic Electronic Kitchen Digital Weighing Scale, Multipurpose (White, 10 Kg)" href="https://www.amazon.in/Generic-Electronic-Kitchen-Weighing-Multipurpose/dp/B01GNX31US/ref=lp_4951860031_1_8?s=kitchen&ie=UTF8&qid=1579589078&sr=1-8" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Generic Electronic Kitchen Digital Weighing Scale, Multipurpose (White, 10 Kg)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Generic Electronic Kitchen Digital Weighing Scale, Multipurpose (White, 10 Kg)</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Generic Electronic Kitchen Digital Weighing Scale, Multipurpose (White, 10 Kg)" href="https://www.amazon.in/Generic-Electronic-Kitchen-Weighing-Multipurpose/dp/B01GNX31US/ref=lp_4951860031_1_8?s=kitchen&ie=UTF8&qid=1579589078&sr=1-8" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Generic Electronic Kitchen Digital Weighing Scale, Multipurpose (White, 10 Kg)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Generic Electronic Kitchen Digital Weighing Scale, Multipurpose (White, 10 Kg)</h2>', '66801-21-2020.jpeg,72801-21-2020.jpeg,88301-21-2020.jpeg', 'Active', 'popular'),
(108, 'Philips Viva Collection HD4928/01 2100-Watt Induct', 75, '2399', '2500', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Philips Viva Collection HD4928/01 2100-Watt Induction Cooktop (Black)" href="https://www.amazon.in/Philips-Collection-HD4928-01-2100-Watt/dp/B00EDJJ7FS/ref=lp_4951860031_1_16?s=kitchen&ie=UTF8&qid=1579589078&sr=1-16" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Philips Viva Collection HD4928/01 2100-Watt Induction Cooktop (Black)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Philips Viva Collection HD4928/01 2100-Watt Induction Cooktop (Black)</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Philips Viva Collection HD4928/01 2100-Watt Induction Cooktop (Black)" href="https://www.amazon.in/Philips-Collection-HD4928-01-2100-Watt/dp/B00EDJJ7FS/ref=lp_4951860031_1_16?s=kitchen&ie=UTF8&qid=1579589078&sr=1-16" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Philips Viva Collection HD4928/01 2100-Watt Induction Cooktop (Black)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Philips Viva Collection HD4928/01 2100-Watt Induction Cooktop (Black)</h2>', '14201-21-2020.jpeg,65701-21-2020.jpeg,41601-21-2020.jpeg,33501-21-2020.jpeg', 'Active', 'popular'),
(109, 'Philips GC1905 1440-Watt Steam Iron with Spray (Bl', 75, '1346', '1400', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Philips GC1905 1440-Watt Steam Iron with Spray (Blue)" href="https://www.amazon.in/Philips-GC1905-1440-Watt-Steam-Spray/dp/B008QTK47Q/ref=lp_4951860031_1_18?s=kitchen&ie=UTF8&qid=1579589078&sr=1-18" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Philips GC1905 1440-Watt Steam Iron with Spray (Blue)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Philips GC1905 1440-Watt Steam Iron with Spray (Blue)</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Philips GC1905 1440-Watt Steam Iron with Spray (Blue)" href="https://www.amazon.in/Philips-GC1905-1440-Watt-Steam-Spray/dp/B008QTK47Q/ref=lp_4951860031_1_18?s=kitchen&ie=UTF8&qid=1579589078&sr=1-18" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Philips GC1905 1440-Watt Steam Iron with Spray (Blue)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Philips GC1905 1440-Watt Steam Iron with Spray (Blue)</h2>', '47101-21-2020.jpeg,38801-21-2020.jpeg,55101-21-2020.jpeg', 'Active', 'popular'),
(110, 'Eureka Forbes Quick Clean DX 1200-Watt Vacuum Clea', 75, '2500', '3000', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Eureka Forbes Quick Clean DX 1200-Watt Vacuum Cleaner for Home with Free Reusable dust Bag (Red)" href="https://www.amazon.in/Eureka-Forbes-Quick-Clean-DX/dp/B00F3ABSXU/ref=lp_4951860031_1_25?s=kitchen&ie=UTF8&qid=1579589078&sr=1-25" style="color: rgb(0, 102, 192); font-family: "Amazon Ember", Arial, sans-serif; background-color: rgb(255, 255, 255);"></a></p><h2 data-attribute="Eureka Forbes Quick Clean DX 1200-Watt Vacuum Cleaner for Home with Free Reusable dust Bag (Red)" data-max-rows="4" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Eureka Forbes Quick Clean DX 1200-Watt Vacuum Cleaner for Home with Free Reusable dust Bag (Red)</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Eureka Forbes Quick Clean DX 1200-Watt Vacuum Cleaner for Home with Free Reusable dust Bag (Red)" href="https://www.amazon.in/Eureka-Forbes-Quick-Clean-DX/dp/B00F3ABSXU/ref=lp_4951860031_1_25?s=kitchen&ie=UTF8&qid=1579589078&sr=1-25" style="color: rgb(0, 102, 192); font-family: "Amazon Ember", Arial, sans-serif; background-color: rgb(255, 255, 255);"></a></p><h2 data-attribute="Eureka Forbes Quick Clean DX 1200-Watt Vacuum Cleaner for Home with Free Reusable dust Bag (Red)" data-max-rows="4" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Eureka Forbes Quick Clean DX 1200-Watt Vacuum Cleaner for Home with Free Reusable dust Bag (Red)</h2>', '30501-21-2020.webp', 'Active', 'popular'),
(111, 'Bajaj 1500-Watt Immersion Heater with 16A Plug Typ', 75, '455', '600', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Bajaj 1500-Watt Immersion Heater with 16A Plug Type" href="https://www.amazon.in/Bajaj-1500-Watt-Immersion-Heater-Plug/dp/B00ABMASXG/ref=lp_4951860031_1_23?s=kitchen&ie=UTF8&qid=1579589078&sr=1-23" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Bajaj 1500-Watt Immersion Heater with 16A Plug Type" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Bajaj 1500-Watt Immersion Heater with 16A Plug Type</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Bajaj 1500-Watt Immersion Heater with 16A Plug Type" href="https://www.amazon.in/Bajaj-1500-Watt-Immersion-Heater-Plug/dp/B00ABMASXG/ref=lp_4951860031_1_23?s=kitchen&ie=UTF8&qid=1579589078&sr=1-23" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Bajaj 1500-Watt Immersion Heater with 16A Plug Type" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Bajaj 1500-Watt Immersion Heater with 16A Plug Type</h2>', '54501-21-2020.webp', 'Active', ''),
(112, 'Fan', 75, '900', '1000', '<p>Fan colling</p>', '<p>Fan colling</p>', '89101-21-2020.jpeg,54601-21-2020.jpeg,43601-21-2020.jpeg,42201-21-2020.jpeg,19201-21-2020.jpeg,48701-21-2020.jpeg', 'Active', 'popular'),
(113, 'Havells Instanio 3-Litre Instant Water Heater (Whi', 76, '2990', '3150', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Havells Instanio 3-Litre Instant Water Heater (White/Blue)" href="https://www.amazon.in/Havells-Instanio-3-Litre-Instant-Heater/dp/B01LS0IRJG/ref=lp_2083423031_1_17?s=kitchen&ie=UTF8&qid=1579590373&sr=1-17" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Havells Instanio 3-Litre Instant Water Heater (White/Blue)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Havells Instanio 3-Litre Instant Water Heater (White/Blue)</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Havells Instanio 3-Litre Instant Water Heater (White/Blue)" href="https://www.amazon.in/Havells-Instanio-3-Litre-Instant-Heater/dp/B01LS0IRJG/ref=lp_2083423031_1_17?s=kitchen&ie=UTF8&qid=1579590373&sr=1-17" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Havells Instanio 3-Litre Instant Water Heater (White/Blue)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Havells Instanio 3-Litre Instant Water Heater (White/Blue)</h2>', '5201-21-2020.jpeg,83501-21-2020.jpeg,26801-21-2020.jpeg', 'Active', 'popular'),
(114, 'Crompton Arno Neo ASWH-2615 15LTR(2KW) 4 Star-Rate', 76, '4690', '4750', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Crompton Arno Neo ASWH-2615 15LTR(2KW) 4 Star-Rated Storage Water Heater (White)" href="https://www.amazon.in/Crompton-Arno-Neo-ASWH-2615-Star-Rated/dp/B07W6NBF31/ref=lp_2083423031_1_16?s=kitchen&ie=UTF8&qid=1579590373&sr=1-16" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Crompton Arno Neo ASWH-2615 15LTR(2KW) 4 Star-Rated Storage Water Heater (White)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Crompton Arno Neo ASWH-2615 15LTR(2KW) 4 Star-Rated Storage Water Heater (White)</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Crompton Arno Neo ASWH-2615 15LTR(2KW) 4 Star-Rated Storage Water Heater (White)" href="https://www.amazon.in/Crompton-Arno-Neo-ASWH-2615-Star-Rated/dp/B07W6NBF31/ref=lp_2083423031_1_16?s=kitchen&ie=UTF8&qid=1579590373&sr=1-16" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Crompton Arno Neo ASWH-2615 15LTR(2KW) 4 Star-Rated Storage Water Heater (White)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Crompton Arno Neo ASWH-2615 15LTR(2KW) 4 Star-Rated Storage Water Heater (White)</h2>', '27901-21-2020.webp,78501-21-2020.jpeg,18401-21-2020.jpeg', 'Active', ''),
(115, 'Generic Silica Gel (5g, Pack of 80, White)', 0, '190', '250', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Generic Silica Gel (5g, Pack of 80, White)" href="https://www.amazon.in/Generic-Silica-Gel-Pack-White/dp/B0179V3H5W/ref=lp_2083423031_1_25?s=kitchen&ie=UTF8&qid=1579590373&sr=1-25" style="color: rgb(0, 102, 192); font-family: "Amazon Ember", Arial, sans-serif; background-color: rgb(255, 255, 255);"></a></p><h2 data-attribute="Generic Silica Gel (5g, Pack of 80, White)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Generic Silica Gel (5g, Pack of 80, White)</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Generic Silica Gel (5g, Pack of 80, White)" href="https://www.amazon.in/Generic-Silica-Gel-Pack-White/dp/B0179V3H5W/ref=lp_2083423031_1_25?s=kitchen&ie=UTF8&qid=1579590373&sr=1-25" style="color: rgb(0, 102, 192); font-family: "Amazon Ember", Arial, sans-serif; background-color: rgb(255, 255, 255);"></a></p><h2 data-attribute="Generic Silica Gel (5g, Pack of 80, White)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Generic Silica Gel (5g, Pack of 80, White)</h2>', '20301-21-2020.webp', 'Active', 'popular'),
(116, 'Lifelong Flare 2000 Watt Fan Room Heater, White (I', 76, '999', '1050', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Lifelong Flare 2000 Watt Fan Room Heater, White (ISI Certified, Home Service Available)" href="https://www.amazon.in/Lifelong-Heater-Certified-Service-Available/dp/B081YL9X94/ref=lp_2083423031_1_9?s=kitchen&ie=UTF8&qid=1579590373&sr=1-9" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Lifelong Flare 2000 Watt Fan Room Heater, White (ISI Certified, Home Service Available)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Lifelong Flare 2000 Watt Fan Room Heater, White (ISI Certified, Home Service Available)</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Lifelong Flare 2000 Watt Fan Room Heater, White (ISI Certified, Home Service Available)" href="https://www.amazon.in/Lifelong-Heater-Certified-Service-Available/dp/B081YL9X94/ref=lp_2083423031_1_9?s=kitchen&ie=UTF8&qid=1579590373&sr=1-9" style="color: rgb(0, 102, 192); font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Lifelong Flare 2000 Watt Fan Room Heater, White (ISI Certified, Home Service Available)" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Lifelong Flare 2000 Watt Fan Room Heater, White (ISI Certified, Home Service Available)</h2>', '97901-21-2020.jpeg', 'Active', 'popular');
INSERT INTO `product` (`id`, `product_name`, `category_id`, `sales_price`, `regular_price`, `p_short_desc`, `p_desc`, `pr_images`, `status`, `popular`) VALUES
(117, 'Rico 1500-W Metal Water Heater Immersion Rod, Whit', 76, '746', '800', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Rico 1500-W Metal Water Heater Immersion Rod, White" href="https://www.amazon.in/Rico-1500-W-immersion-water-heater/dp/B0123P3PWE/ref=lp_2083423031_1_26?s=kitchen&ie=UTF8&qid=1579590373&sr=1-26" style="text-decoration-line: underline; color: rgb(196, 85, 0); outline: 0px; font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Rico 1500-W Metal Water Heater Immersion Rod, White" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Rico 1500-W Metal Water Heater Immersion Rod, White</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Rico 1500-W Metal Water Heater Immersion Rod, White" href="https://www.amazon.in/Rico-1500-W-immersion-water-heater/dp/B0123P3PWE/ref=lp_2083423031_1_26?s=kitchen&ie=UTF8&qid=1579590373&sr=1-26" style="text-decoration-line: underline; color: rgb(196, 85, 0); outline: 0px; font-family: " amazon="" ember",="" arial,="" sans-serif;="" background-color:="" rgb(255,="" 255,="" 255);"=""></a></p><h2 data-attribute="Rico 1500-W Metal Water Heater Immersion Rod, White" data-max-rows="0" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Rico 1500-W Metal Water Heater Immersion Rod, White</h2>', '56401-21-2020.webp,77501-21-2020.jpeg,38001-21-2020.jpeg,73401-21-2020.jpeg,38801-21-2020.jpeg,96701-21-2020.jpeg', 'Active', ''),
(118, 'Allin Exporters Cool Mist Ultrasonic Humidifier Au', 76, '3346', '4000', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Allin Exporters Cool Mist Ultrasonic Humidifier Automatic Shut-Off and Mist Level Control Air Purifier for Home Office Bedroom Baby Room (4 L, Black)" href="https://www.amazon.in/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_browse_kitchen_sr_pg1_3?ie=UTF8&adId=A0514161L3M78N7HKWYN&url=https%3A%2F%2Fwww.amazon.in%2FAllin-Exporters-Ultrasonic-Humidifier-Black%2Fdp%2FB0767BZSDR%2Fref%3Dlp_2083423031_1_3_sspa%3Fs%3Dkitchen%26ie%3DUTF8%26qid%3D1579590373%26sr%3D1-3-spons%26psc%3D1&qualifier=1579590373&id=4270900987208010&widgetName=sp_atf_browse" style="color: rgb(0, 102, 192); font-family: "Amazon Ember", Arial, sans-serif; background-color: rgb(255, 255, 255);"></a></p><h2 data-attribute="Allin Exporters Cool Mist Ultrasonic Humidifier Automatic Shut-Off and Mist Level Control Air Purifier for Home Office Bedroom Baby Room (4 L, Black)" data-max-rows="4" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Allin Exporters Cool Mist Ultrasonic Humidifier Automatic Shut-Off and Mist Level Control Air Purifier for Home Office Bedroom Baby Room (4 L, Black)</h2>', '<p><a class="a-link-normal s-access-detail-page s-color-twister-title-link a-text-normal" title="Allin Exporters Cool Mist Ultrasonic Humidifier Automatic Shut-Off and Mist Level Control Air Purifier for Home Office Bedroom Baby Room (4 L, Black)" href="https://www.amazon.in/gp/slredirect/picassoRedirect.html/ref=pa_sp_atf_browse_kitchen_sr_pg1_3?ie=UTF8&adId=A0514161L3M78N7HKWYN&url=https%3A%2F%2Fwww.amazon.in%2FAllin-Exporters-Ultrasonic-Humidifier-Black%2Fdp%2FB0767BZSDR%2Fref%3Dlp_2083423031_1_3_sspa%3Fs%3Dkitchen%26ie%3DUTF8%26qid%3D1579590373%26sr%3D1-3-spons%26psc%3D1&qualifier=1579590373&id=4270900987208010&widgetName=sp_atf_browse" style="color: rgb(0, 102, 192); font-family: "Amazon Ember", Arial, sans-serif; background-color: rgb(255, 255, 255);"></a></p><h2 data-attribute="Allin Exporters Cool Mist Ultrasonic Humidifier Automatic Shut-Off and Mist Level Control Air Purifier for Home Office Bedroom Baby Room (4 L, Black)" data-max-rows="4" class="a-size-base s-inline s-access-title a-text-normal" style="box-sizing: border-box; padding: 0px; margin: 0px; text-rendering: optimizelegibility; font-weight: 400 !important; font-size: 15px !important; line-height: 1.25 !important; font-style: normal !important; text-transform: none !important; text-decoration: none !important; display: inline;">Allin Exporters Cool Mist Ultrasonic Humidifier Automatic Shut-Off and Mist Level Control Air Purifier for Home Office Bedroom Baby Room (4 L, Black)</h2>', '61801-21-2020.webp', 'Active', 'popular'),
(119, 'Lg Ac', 70, '19990', '21550', '<h2 class="a-size-mini a-spacing-none a-color-base s-line-clamp-2" style="padding: 0px; margin-top: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizelegibility; font-weight: 700; color: rgb(17, 17, 17); overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2; max-height: 42.67px; font-family: " amazon="" ember",="" arial,="" sans-serif;="" margin-bottom:="" 0px="" !important;="" line-height:="" 1.465="" !important;"=""><span style="font-size: 17px;">Windows Ac</span></h2>', '<h2 class="a-size-mini a-spacing-none a-color-base s-line-clamp-2" style="font-family: " amazon="" ember",="" arial,="" sans-serif;="" font-weight:="" 700;="" color:="" rgb(17,="" 17,="" 17);="" margin-top:="" 0px;="" padding:="" margin-right:="" margin-left:="" text-rendering:="" optimizelegibility;="" overflow:="" hidden;="" text-overflow:="" ellipsis;="" display:="" -webkit-box;="" -webkit-box-orient:="" vertical;="" -webkit-line-clamp:="" 2;="" max-height:="" 42.67px;="" line-height:="" 1.465="" !important;="" margin-bottom:="" 0px="" !important;"=""><span style="font-size: 17px;">Windows Ac</span></h2>', '87601-21-2020.jpeg,51301-21-2020.jpeg,43001-21-2020.jpeg', 'Active', 'popular'),
(122, 'Elctric cookers', 75, '2400', '2500', '<p>Elctric cookers</p>', '<p>Elctric cookers</p>', '79601-21-2020.jpeg,14301-21-2020.jpeg', 'Active', 'popular'),
(123, 'microwaves', 75, '5000', '6000', '<p>microwaves</p>', '<p>microwaves</p>', '93901-21-2020.jpeg,10001-21-2020.jpeg,58001-21-2020.jpeg,50601-21-2020.jpeg,73401-21-2020.jpeg', 'Active', ''),
(125, 'IFB 6 kg Fully Automatic Front Load with In-built ', 74, '25999', '26999', '<p><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">IFB 6 kg Fully Automatic Front Load with In-built Heater Silver</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">  (NEODIVA-SX)</span></p>', '<p><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">IFB 6 kg Fully Automatic Front Load with In-built Heater Silver</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">  (NEODIVA-SX)</span></p>', '49901-21-2020.jpeg,62201-21-2020.jpeg,54901-21-2020.jpeg,32601-21-2020.jpeg,86501-21-2020.jpeg', 'Active', ''),
(126, 'Onida 6.2 kg Fully Automatic Top Load Grey  (T62CG', 74, '9999', '10999', '<p><span class="_35KyD6" style="margin: 0px; padding: 0px; line-height: 1.4; font-size: inherit; font-weight: inherit; display: inline-block;">Onida 6.2 kg Fully Automatic Top Load Grey  (T62CGN / CRYSTAL 62)</span><span class="_9E25nV _34-ntQ" style="margin: 0px; padding: 0px; color: rgb(135, 135, 135); font-size: 18px; display: contents; font-family: Roboto, Arial, sans-serif;">#JustHere</span></p>', '<p><span class="_35KyD6" style="margin: 0px; padding: 0px; line-height: 1.4; font-size: inherit; font-weight: inherit; display: inline-block;">Onida 6.2 kg Fully Automatic Top Load Grey  (T62CGN / CRYSTAL 62)</span><span class="_9E25nV _34-ntQ" style="margin: 0px; padding: 0px; color: rgb(135, 135, 135); font-size: 18px; display: contents; font-family: Roboto, Arial, sans-serif;">#JustHere</span></p>', '38001-21-2020.jpeg,66501-21-2020.jpeg,75301-21-2020.jpeg,29801-21-2020.jpeg,20901-21-2020.jpeg', 'Active', ''),
(127, 'Samsung 6.2 kg with Monsoon Feature Fully Automati', 74, '13200', '14200', '<p><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">Samsung 6.2 kg with Monsoon Feature Fully Automatic Top Load Grey</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">  (WA62M4100HY/TL 01)</span></p>', '<p><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">Samsung 6.2 kg with Monsoon Feature Fully Automatic Top Load Grey</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">  (WA62M4100HY/TL 01)</span></p>', '39201-21-2020.jpeg,97701-21-2020.jpeg,30101-21-2020.jpeg,25401-21-2020.jpeg,50301-21-2020.jpeg', 'Active', ''),
(128, 'LG 6.5 kg Inverter Fully Automatic Top Load Silver', 74, '16499', '17499', '<p><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">LG 6.5 kg Inverter Fully Automatic Top Load Silver</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">  (T7569NDDLH)</span></p>', '<p><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">LG 6.5 kg Inverter Fully Automatic Top Load Silver</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">  (T7569NDDLH)</span></p>', '28301-21-2020.jpeg,18201-21-2020.jpeg,88001-21-2020.jpeg,19901-21-2020.jpeg,57101-21-2020.jpeg', 'Active', ''),
(129, 'Philips Astra Line Plus 24-Watt LED Batten Cool Da', 77, '1997', '2000', '<p><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">Philips Astra Line Plus 24-Watt LED Batten Cool Day Light Straight Linear LED Tube Light</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">  (White, Pack of 6)</span></p>', '<p><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">Philips Astra Line Plus 24-Watt LED Batten Cool Day Light Straight Linear LED Tube Light</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">  (White, Pack of 6)</span></p>', '99201-21-2020.jpeg,77901-21-2020.jpeg,48101-21-2020.jpeg', 'Active', ''),
(130, 'Philips 12W B22 T-BULB CURVEY Straight Linear LED ', 77, '1245', '1345', '<p><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">Philips 12W B22 T-BULB CURVEY Straight Linear LED Tube Light</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">  (White, Pack of 6)</span></p>', '<p><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">Philips 12W B22 T-BULB CURVEY Straight Linear LED Tube Light</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">  (White, Pack of 6)</span></p>', '20501-21-2020.jpeg,56801-21-2020.jpeg,32701-21-2020.jpeg,85301-21-2020.jpeg,18401-21-2020.jpeg', 'Active', ''),
(131, 'Wipro 22-watt 4 Feet Led Batten Light (cool Day Li', 77, '1299', '1399', '<p><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">Wipro 22-watt 4 Feet Led Batten Light (cool Day Light) - Pack Of 4 Straight Linear LED Tube Light</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">  (Pack of 4)</span></p>', '<p><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">Wipro 22-watt 4 Feet Led Batten Light (cool Day Light) - Pack Of 4 Straight Linear LED Tube Light</span><span style="color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;">  (Pack of 4)</span></p>', '38201-21-2020.jpeg,94101-21-2020.jpeg,99001-21-2020.jpeg,2301-21-2020.jpeg', 'Active', 'popular'),
(132, 'Syska', 77, '1200', '1300', '<p>Syska </p>', '<p>all type of tubelights</p>', '10201-21-2020.jpeg,63701-21-2020.jpeg,93401-21-2020.jpeg,80801-21-2020.jpeg', 'Active', 'popular');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `quality` varchar(250) NOT NULL,
  `r_value` varchar(100) NOT NULL,
  `price` varchar(250) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `summary_of_review` varchar(250) NOT NULL,
  `c_review` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `product_id`, `quality`, `r_value`, `price`, `nickname`, `summary_of_review`, `c_review`, `status`) VALUES
(11, 77, '5', '4', '4', 'Adil', '1 Numbr', 'fgddgf', 'Active'),
(12, 70, '4>', '3', '4', 'Patel', 'Nice', '1 number watch', 'Pending'),
(13, 70, '4>', '3', '4', 'Patel', 'Nice', '1 number watch', 'Pending'),
(14, 69, '4', '4', '5', 'Adil', '1 Numbr', 'fdgdf', 'Pending'),
(15, 69, '2', '2', '2', 'Patel', '1 Numbr', 'hgf', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE IF NOT EXISTS `shipping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `streetaddress` longtext NOT NULL,
  `city` varchar(50) NOT NULL,
  `state_name` int(11) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `country_name` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `status` varchar(250) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `firstname`, `lastname`, `company_name`, `streetaddress`, `city`, `state_name`, `zip_code`, `country_name`, `phone`, `status`, `userid`) VALUES
(29, 'adil', 'abbbas', 'green cubes solution', 'hidayat nagar', 'devla', 22, 392040, 4, '851145421', 'Active', 36),
(30, 'Adil', 'Abbas', 'Green cubes solution', 'devla', 'jambusar', 11, 253210, 4, '851151111', 'Active', 57),
(31, 'Akila', 'Adil', 'B.ed', 'patel khadki', 'devla', 11, 392040, 4, '8511541421', 'Active', 58),
(32, 'Atif', 'Patel', 'Teacher', 'Hidayat nagar', 'devla', 30, 392040, 7, '8511809840', 'Active', 59),
(33, 'Abbas', 'Patel', 'Retire Principal', 'Hidyat Nagar', 'Devla', 11, 392040, 4, '9724881714', 'Active', 60),
(34, 'femu', 'patel', 'house', 'tandalja', 'baroda', 23, 392040, 4, '8146444444', 'Active', 70),
(35, 'Adil', 'Abbas', 'Green Cubes Solution', 'Hidayat Nagar', 'Devla', 11, 392040, 4, '8511541421', 'Active', 73),
(36, 'Femu', 'Patel', 'House', 'Tnadalja', 'baroda', 22, 392040, 4, '7894561233', 'Active', 75),
(37, 'Asif', 'Abbas', 'Molsab', 'Mahuvej', 'Kosamba', 11, 253210, 4, '9824021887', 'Active', 74);

-- --------------------------------------------------------

--
-- Table structure for table `site_pages`
--

CREATE TABLE IF NOT EXISTS `site_pages` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `pages_number` varchar(30) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_date` date NOT NULL,
  `page_content` longtext NOT NULL,
  `Meta_Title` varchar(255) NOT NULL,
  `Meta_Keywords` varchar(255) NOT NULL,
  `Page_Url` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `site_pages`
--

INSERT INTO `site_pages` (`id`, `pages_number`, `page_title`, `page_date`, `page_content`, `Meta_Title`, `Meta_Keywords`, `Page_Url`, `Status`) VALUES
(19, '1610080636031975', 'TERMS AND CONDITIONS', '2016-10-15', '<h1><span style="color: rgb(34, 34, 34); font-family: Consolas, "Lucida Console", monospace; font-size: 12px; white-space: pre-wrap;">TERMS AND CONDITIONS</span></h1><h6><span style="color: rgb(34, 34, 34); font-family: Consolas, "Lucida Console", monospace; font-size: 12px; white-space: pre-wrap;">TERMS AND CONDITIONS</span></h6>', 'TERMS AND CONDITIONS', 'TERMS AND CONDITIONS', 'https://skjfhsdjf.sdfsdf', 'Published'),
(20, '16101503293415852', 'PRIVACY POLICY', '2016-10-15', '<h1><span style="color: rgb(34, 34, 34); font-family: Consolas, "Lucida Console", monospace; font-size: 12px; white-space: pre-wrap;">PRIVACY POLICY</span></h1><h6><span style="color: rgb(34, 34, 34); font-family: Consolas, "Lucida Console", monospace; font-size: 12px; white-space: pre-wrap;">PRIVACY POLICY</span></h6>', 'PRIVACY POLICY', 'PRIVACY POLICY', 'http://www.gree', 'Published'),
(21, '16101503300730133', 'ABOUT US', '2016-10-15', '<h1><span style="color: rgb(34, 34, 34); font-family: Consolas, "Lucida Console", monospace; font-size: 12px; white-space: pre-wrap;">ABOUT US</span></h1><h6><span style="color: rgb(34, 34, 34); font-family: Consolas, "Lucida Console", monospace; font-size: 12px; white-space: pre-wrap;">ABOUT US</span></h6>', 'ABOUT US', 'ABOUT US', 'http://www.green', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(250) NOT NULL,
  `s_title` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `buttonlink` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `s_title`, `description`, `buttonlink`, `status`) VALUES
(36, '72101-21-2020.jpg', 'Slider1', '<p>Slider1</p>', 'http://localhost/LiveProject/category.php?id', 'Active'),
(37, '40801-21-2020.png', 'Slider2', '<p>Slider2</p>', 'http://localhost/LiveProject/category.php?id', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `smpt_setting`
--

CREATE TABLE IF NOT EXISTS `smpt_setting` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CodeId` varchar(500) NOT NULL,
  `SmptTitle` varchar(500) NOT NULL,
  `SmptEmail` varchar(500) NOT NULL,
  `SmptHost` varchar(500) NOT NULL,
  `SmptPort` varchar(500) NOT NULL,
  `SmptUserName` varchar(500) NOT NULL,
  `SmptPassword` varchar(500) NOT NULL,
  `DAddress` varchar(500) NOT NULL,
  `DFacebook` varchar(500) NOT NULL,
  `DTwitter` varchar(500) NOT NULL,
  `DGoogle` varchar(500) NOT NULL,
  `PageTitle` varchar(500) NOT NULL,
  `MetaDescription` varchar(500) NOT NULL,
  `MetaKeywords` varchar(500) NOT NULL,
  `Location` varchar(500) NOT NULL,
  `Commssion` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `smpt_setting`
--

INSERT INTO `smpt_setting` (`Id`, `CodeId`, `SmptTitle`, `SmptEmail`, `SmptHost`, `SmptPort`, `SmptUserName`, `SmptPassword`, `DAddress`, `DFacebook`, `DTwitter`, `DGoogle`, `PageTitle`, `MetaDescription`, `MetaKeywords`, `Location`, `Commssion`) VALUES
(2, 'AJNAUY1992', 'Chhabra555', 'miraj@greencubes.co.in', 'mail.greencubes.co.in', '2525', 'miraj@greencubes.co.in', 'Green123/*-', 'https://www.linkedin.com/', 'https://www.facebook.com/', 'https://twitter.com/', 'https://plus.google.com/', 'newProject', 'newProject', 'newProject', 'newProject', '10');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `c_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state_name`, `status`, `c_id`) VALUES
(10, 'Jammu', 'Active', 4),
(11, 'Gujrat', 'Active', 4),
(17, 'Maharashtr', 'Active', 4),
(18, 'Karnataka', 'Active', 4),
(19, 'Uttarakhand', 'Active', 4),
(20, 'Tamil Nadu', 'Active', 4),
(21, 'Telangana ', 'Active', 4),
(22, 'Haryana', 'Active', 4),
(23, 'Himachal Pradesh', 'Active', 4),
(24, 'Odisha', 'Active', 4),
(25, 'Kerala', 'Active', 4),
(26, 'mandalay', 'Active', 6),
(27, 'manipur', 'Active', 6),
(28, 'megalaya', 'Active', 6),
(29, 'ranchi', 'Active', 6),
(30, 'New York City', 'Active', 7),
(31, 'Los Angeles', 'Active', 7),
(32, 'Chicago', 'Active', 7),
(33, 'Houston', 'Active', 7),
(34, 'Phoenix', 'Active', 7),
(35, 'Philadelphia', 'Active', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `email`, `password`) VALUES
(1, 'adil', 'patel@gamil.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `userreg`
--

CREATE TABLE IF NOT EXISTS `userreg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `emailaddress` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `upassword` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `userreg`
--

INSERT INTO `userreg` (`id`, `firstname`, `lastname`, `emailaddress`, `phone`, `upassword`, `status`) VALUES
(59, 'Atif', 'Patel', 'atif@gmail.com', '8511809840', '8511809840', 'Active'),
(60, 'Abbas', 'Patel', 'abbas@gmail.com', '9724881714', '9724881714', 'Active'),
(73, 'Adil', 'Patel', 'adil@gmail.com', '8511541421', 'aadi25452', 'Active'),
(74, 'Asif', 'Abbas', 'asif@gmail.com', '9824021887', 'asif2463', 'Active'),
(75, 'fem', 'patel', 'fem@gmail.com', '987456213', '123456', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `write_us`
--

CREATE TABLE IF NOT EXISTS `write_us` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `what_y_m` longtext NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `write_us`
--

INSERT INTO `write_us` (`id`, `name`, `email_address`, `phone_no`, `what_y_m`, `status`) VALUES
(1, 'adil', 'a@gmail.com', '8511541421', 'dgdfg', 'Active');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

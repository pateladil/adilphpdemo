-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2020 at 01:55 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `userid`, `firstname`, `lastname`, `company_name`, `street_address`, `city`, `country`, `zipcode`, `state`, `phone`, `status`) VALUES
(2, 57, 'Adil', 'Abbas', 'Green cubes soltion', 'devla', 'devla', '4', 253210, '11', '0982402188', 'Active'),
(3, 36, 'adil', 'abbbas', 'green', 'hidayat nagar', 'dvevla', '4', 392040, '11', '8511541421', 'Active'),
(5, 59, 'Atif', 'Patel', 'Teacher', 'Hidayat Nagar', 'Dvla', '7', 392040, '16', '8511809840', 'Active'),
(6, 60, 'Patel', 'Abbas', 'Retire', 'Hidyat Nagar1', 'Devla one', '6', 392040, '8', '9724881715', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `b_title` varchar(50) NOT NULL,
  `b_description` longtext NOT NULL,
  `b_categories` varchar(100) NOT NULL,
  `b_images` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `b_title`, `b_description`, `b_categories`, `b_images`, `status`) VALUES
(31, 'Adil', '<p>adil</p>', '2,3,6,7,8', '52112-30-2019.jpg', 'Active'),
(32, 'APetl', '<p>sdg</p>', '2,3', '98512-30-2019.jpg', 'Active'),
(33, 'saf', '<p>sh</p>', '2', '87812-30-2019.jpg', 'Active'),
(34, 'htdy', '<p>jdfyd</p>', '6,7,8,9', '76112-30-2019.jpg', 'Active');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `thumbnail_image`, `category_image`, `status`, `category_description`) VALUES
(67, 'Adil', '43901-03-2020.jpg', '96301-03-2020.jpg', 'Active', ''),
(68, 'one', '19901-03-2020.jpg', '71201-03-2020.jpg', 'Active', ''),
(69, 'Sunglassess', '17501-03-2020.jpg', '58401-03-2020.jpg', 'Active', '');

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
(5, '<p>Jambusar</p>', '8511541421', 'adilgreencubes@gmail.com', '7.00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`, `status`) VALUES
(4, 'India', 'Active'),
(6, 'Bangladesh', 'Active'),
(7, 'America', 'Active');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(56, 59, 78, 3, 60),
(57, 59, 79, 3, 70),
(58, 60, 79, 2, 70),
(59, 60, 80, 3, 400),
(60, 61, 82, 3, 20000),
(61, 62, 80, 3, 400),
(62, 62, 79, 3, 70),
(63, 62, 81, 15, 1000),
(64, 63, 78, 2, 60),
(65, 63, 80, 1, 400),
(66, 68, 78, 3, 60),
(67, 68, 79, 6, 70),
(68, 71, 78, 2, 60),
(69, 71, 79, 19, 70),
(70, 71, 82, 6, 20000),
(71, 72, 79, 27, 70),
(72, 73, 78, 1, 60);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `order_prd`
--

INSERT INTO `order_prd` (`id`, `userid`, `order_date`, `order_type`, `order_total`, `status`) VALUES
(59, 57, '2020-01-10', 'cod', '$390', 'hold'),
(60, 57, '2020-01-10', 'cod', '$1340', 'hold'),
(61, 57, '2020-01-10', 'cod', '$60000', 'hold'),
(62, 57, '2020-01-10', 'cod', '$16410', 'hold'),
(68, 36, '2020-01-10', 'cod', '$600', 'hold'),
(71, 59, '2020-01-10', 'cod', '$121450', 'hold'),
(72, 60, '2020-01-10', 'cod', '$1890', 'hold'),
(73, 57, '2020-01-11', 'cod', '$60', 'hold');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_title`, `page_details`, `status`) VALUES
(7, 'OUR HISTORY', '<h1 style="margin-top: -0.4rem; font-family: " open="" sans",="" sans-serif;="" color:="" rgb(0,="" 0,="" 0);="" font-size:="" 3rem;="" margin-bottom:="" 4rem="" !important;"=""><span style="font-weight: 700;">2014</span></h1><p style="margin-bottom: 1.5rem; color: rgb(0, 0, 0); font-family: " open="" sans",="" sans-serif;="" font-size:="" 14px;"="">Aliquam consectetur et lorem semper scelerisque. Proin est nibh, vestibulum vitae congue nec, tristique eu justo. Maecenas eu nunc lacinia, porta lorem vitae, viverra velit. Nulla dolor libero, rhoncus quis luctus eu, fermentum sed leo. Morbi ut risus porttitor odio sodales pulvinar. Sed gravida nulla sed sapien vulputate, eget malesuada justo egestas. Pellentesque sem mi, vulputate ac iaculis sit amet, sagittis feugiat dui. Proin non pellentesque leo. Vestibulum varius laoreet posuere. Etiam fringilla diam odio.</p><p style="margin-bottom: 1.5rem; color: rgb(0, 0, 0); font-family: " open="" sans",="" sans-serif;="" font-size:="" 14px;"="">Nulla felis nibh, bibendum a leo ut, egestas ornare felis. Nam pretium mauris justo, eget commodo est fringilla vel. Proin condimentum, lacus sit amet finibus gravida, sapien ligula mattis leo, sit amet mattis leo lacus sit amet lectus. Nulla facilisi. Etiam porta iaculis velit id pulvinar. Sed dolor odio, eleifend eget aliquam vitae, efficitur vitae dolor. Integer ornare neque ac leo sollicitudin, at vestibulum ante scelerisque. Nullam ut elit sed lorem tempus feugiat in et lectus. Mauris interdum molestie placerat. Nullam dolor nunc, elementum et tincidunt id, vestibulum quis turpis. Integer imperdiet a eros a laoreet. Nam mattis vel ligula non imperdiet. Suspendisse potenti. Fusce purus sem, dapibus eu fermentum eget, aliquam vehicula ligula.</p><p style="margin-bottom: 1.5rem; color: rgb(0, 0, 0); font-family: " open="" sans",="" sans-serif;="" font-size:="" 14px;"=""><span style="font-weight: bold;"><br></span></p><h1 style="margin-top: -0.4rem; font-family: "><span style="font-weight: bold;">2015</span></h1><p style="margin-bottom: 1.5rem; color: rgb(0, 0, 0); font-family: " open="" sans",="" sans-serif;="" font-size:="" 14px;"="">Aliquam consectetur et lorem semper scelerisque. Proin est nibh, vestibulum vitae congue nec, tristique eu justo. Maecenas eu nunc lacinia, porta lorem vitae, viverra velit. Nulla dolor libero, rhoncus quis luctus eu, fermentum sed leo. Morbi ut risus porttitor odio sodales pulvinar. Sed gravida nulla sed sapien vulputate, eget malesuada justo egestas. Pellentesque sem mi, vulputate ac iaculis sit amet, sagittis feugiat dui. Proin non pellentesque leo. Vestibulum varius laoreet posuere. Etiam fringilla diam odio.</p><p style="margin-bottom: 1.5rem; color: rgb(0, 0, 0); font-family: " open="" sans",="" sans-serif;="" font-size:="" 14px;"="">Nulla felis nibh, bibendum a leo ut, egestas ornare felis. Nam pretium mauris justo, eget commodo est fringilla vel. Proin condimentum, lacus sit amet finibus gravida, sapien ligula mattis leo, sit amet mattis leo lacus sit amet lectus. Nulla facilisi. Etiam porta iaculis velit id pulvinar. Sed dolor odio, eleifend eget aliquam vitae, efficitur vitae dolor. Integer ornare neque ac leo sollicitudin, at vestibulum ante scelerisque. Nullam ut elit sed lorem tempus feugiat in et lectus. Mauris interdum molestie placerat. Nullam dolor nunc, elementum et tincidunt id, vestibulum quis turpis. Integer imperdiet a eros a laoreet. Nam mattis vel ligula non imperdiet. Suspendisse potenti. Fusce purus sem, dapibus eu fermentum eget, aliquam vehicula ligula.</p><p style="margin-bottom: 1.5rem; color: rgb(0, 0, 0); font-family: " open="" sans",="" sans-serif;="" font-size:="" 14px;"=""><br></p><h1 style="margin-bottom: 1.5rem; color: rgb(0, 0, 0); font-family: "><span style="font-weight: bold;">2016</span></h1><p style="margin-bottom: 1.5rem; color: rgb(0, 0, 0); font-family: " open="" sans",="" sans-serif;="" font-size:="" 14px;"="">Aliquam consectetur et lorem semper scelerisque. Proin est nibh, vestibulum vitae congue nec, tristique eu justo. Maecenas eu nunc lacinia, porta lorem vitae, viverra velit. Nulla dolor libero, rhoncus quis luctus eu, fermentum sed leo. Morbi ut risus porttitor odio sodales pulvinar. Sed gravida nulla sed sapien vulputate, eget malesuada justo egestas. Pellentesque sem mi, vulputate ac iaculis sit amet, sagittis feugiat dui. Proin non pellentesque leo. Vestibulum varius laoreet posuere. Etiam fringilla diam odio.</p><p style="margin-bottom: 1.5rem; color: rgb(0, 0, 0); font-family: " open="" sans",="" sans-serif;="" font-size:="" 14px;"="">Nulla felis nibh, bibendum a leo ut, egestas ornare felis. Nam pretium mauris justo, eget commodo est fringilla vel. Proin condimentum, lacus sit amet finibus gravida, sapien ligula mattis leo, sit amet mattis leo lacus sit amet lectus. Nulla facilisi. Etiam porta iaculis velit id pulvinar. Sed dolor odio, eleifend eget aliquam vitae, efficitur vitae dolor. Integer ornare neque ac leo sollicitudin, at vestibulum ante scelerisque. Nullam ut elit sed lorem tempus feugiat in et lectus. Mauris interdum molestie placerat. Nullam dolor nunc, elementum et tincidunt id, vestibulum quis turpis. Integer imperdiet a eros a laoreet. Nam mattis vel ligula non imperdiet. Suspendisse potenti. Fusce purus sem, dapibus eu fermentum eget, aliquam vehicula ligula.</p>', 'Active'),
(8, 'THE NEW WAY TO SUCCESS', '<h2 class="mb-4" style="margin-top: 0px; font-family: "Open Sans", sans-serif; color: rgb(0, 0, 0); font-size: 3rem; margin-bottom: 4rem !important;"><span style="font-weight: bold;">Who we are</span></h2><div><span style="color: rgb(0, 0, 0); font-family: "Open Sans", sans-serif; font-size: 14px;">Aliquam consectetur et lorem semper scelerisque. Proin est nibh, vestibulum vitae congue nec, tristique eu justo. Maecenas eu nunc lacinia, porta lorem vitae, viverra velit. Nulla dolor libero, rhoncus quis luctus eu, fermentum sed leo. Morbi ut risus porttitor odio sodales pulvinar. Sed gravida nulla sed sapien vulputate, eget malesuada justo egestas. Pellentesque sem mi, vulputate ac iaculis sit amet, sagittis feugiat dui. Proin non pellentesque leo. Vestibulum varius laoreet posuere. Etiam fringilla diam odio.</span></div><div><span style="color: rgb(0, 0, 0); font-family: "Open Sans", sans-serif; font-size: 14px;"><br></span></div><div><span style="color: rgb(0, 0, 0); font-family: "Open Sans", sans-serif; font-size: 14px;">Nulla felis nibh, bibendum a leo ut, egestas ornare felis. Nam pretium mauris justo, eget commodo est fringilla vel. Proin condimentum, lacus sit amet finibus gravida, sapien ligula mattis leo, sit amet mattis leo lacus sit amet lectus. Nulla facilisi. Etiam porta iaculis velit id pulvinar. Sed dolor odio, eleifend eget aliquam vitae, efficitur vitae dolor. Integer ornare neque ac leo sollicitudin, at vestibulum ante scelerisque. Nullam ut elit sed lorem tempus feugiat in et lectus. Mauris interdum molestie placerat. Nullam dolor nunc, elementum et tincidunt id, vestibulum quis turpis. Integer imperdiet a eros a laoreet. Nam mattis vel ligula non imperdiet. Suspendisse potenti. Fusce purus sem, dapibus eu fermentum eget, aliquam vehicula ligula.</span></div><div><span style="color: rgb(0, 0, 0); font-family: "Open Sans", sans-serif; font-size: 14px;"><br></span></div><div><span style="color: rgb(0, 0, 0); font-family: "Open Sans", sans-serif; font-size: 14px;">Quisque congue dignissim dui sed luctus. Morbi nec mi vitae magna finibus ullamcorper. Etiam mattis blandit convallis. Suspendisse eu elementum leo. Vestibulum molestie nunc et efficitur egestas. Vivamus arcu lectus, laoreet vel consectetur bibendum, elementum non nunc. Proin porttitor velit odio, ac mattis quam tincidunt eget. Fusce semper nunc eget efficitur efficitur. Nam ullamcorper, enim id tincidunt feugiat, velit mauris fermentum nulla, at tempor eros turpis sit amet massa. Ut a semper lectus, sed hendrerit risus. In hac habitasse platea dictumst. Curabitur venenatis cursus posuere. Praesent turpis nisi, aliquam at facilisis non, sagittis vel urna. Donec diam lorem, feugiat vitae laoreet in, sagittis a lorem.</span></div><div><span style="color: rgb(0, 0, 0); font-family: "Open Sans", sans-serif; font-size: 14px;"><br></span></div><div><span style="color: rgb(0, 0, 0); font-family: "Open Sans", sans-serif; font-size: 14px;">Aliquam consectetur et lorem semper scelerisque. Proin est nibh, vestibulum vitae congue nec, tristique eu justo. Maecenas eu nunc lacinia, porta lorem vitae, viverra velit. Nulla dolor libero, rhoncus quis luctus eu, fermentum sed leo. Morbi ut risus porttitor odio sodales pulvinar. Sed gravida nulla sed sapien vulputate, eget malesuada justo egestas. Pellentesque sem mi, vulputate ac iaculis sit amet, sagittis feugiat dui. Proin non pellentesque leo. Vestibulum varius laoreet posuere. Etiam fringilla diam odio.</span></div><div><br></div><div><br></div>', 'Active');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `category_id`, `sales_price`, `regular_price`, `p_short_desc`, `p_desc`, `pr_images`, `status`, `popular`) VALUES
(78, 'cap', 68, '60', '70', '<p>hgc</p>', '<p>aa</p>', '31201-08-2020.jpg', 'Active', 'popular'),
(79, 'Drone', 69, '70', '80', '<p>sds</p>', '<p>gfgf</p>', '86312-31-2019.jpg', 'Active', 'popular'),
(80, 'Belt', 69, '400', '500', '<p>sds</p>', '<p>gfgf</p>', '68812-31-2019.jpg', 'Active', 'popular'),
(81, 'Shoes', 67, '1000', '1500', '<p>sds</p>', '<p>gfgf</p>', '86112-31-2019.jpg', 'Active', 'popular'),
(82, 'Sunglasses', 67, '20000', '50000', '<p>bcv</p>', '<p>vbcc</p>', '50501-10-2020.jpg', 'Active', 'popular');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `firstname`, `lastname`, `company_name`, `streetaddress`, `city`, `state_name`, `zip_code`, `country_name`, `phone`, `status`, `userid`) VALUES
(29, 'adil', 'abbbas', 'green cubes solution', 'hidayat nagar', 'devla', 11, 392040, 4, '851145421', 'Active', 36),
(30, 'Adil', 'Abbas', 'Green cubes solution', 'devla', 'jambusar', 11, 253210, 4, '851151111', 'Active', 57),
(31, 'Akila', 'Adil', 'B.ed', 'patel khadki', 'devla', 11, 392040, 4, '8511541421', 'Active', 58),
(32, 'Atif', 'Patel', 'Teacher', 'Hidayat nagar', 'devla', 16, 392040, 7, '8511809840', 'Active', 59),
(33, 'Abbas', 'Patel', 'Retire Principal', 'Hidyat Nagar', 'Devla', 11, 392040, 4, '9724881714', 'Active', 60);

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
(36, '25712-30-2019.jpg', 'Slider1', '<p>Slider1</p>', 'http://localhost/LiveProject/slider/', 'Active'),
(37, '55412-27-2019.jpg', 'Slider2', '<p>Slider2</p>', 'http://localhost/LiveProject/slider/addslide.php', 'Active');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state_name`, `status`, `c_id`) VALUES
(8, 'sda', 'Active', 6),
(9, 'adil', 'Active', 4),
(10, 'Jammu', 'Active', 4),
(11, 'Gujrat', 'Active', 4),
(15, 'karanchi', 'Active', 7),
(16, 'etc', 'Active', 7);

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
  `upassword` varchar(25) NOT NULL,
  `status` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `userreg`
--

INSERT INTO `userreg` (`id`, `firstname`, `lastname`, `emailaddress`, `upassword`, `status`) VALUES
(36, 'hafeji', 'Adil', 'pateladil@gmail.com', 'adil@2558', 'Active'),
(57, 'Patel', 'Adil', 'a@gmail.com', 'adil2558', 'Active'),
(59, 'Atif', 'Patel', 'atif@gmail.com', '8511809840', 'Active'),
(60, 'Abbas', 'Patel', 'abbas@gmail.com', '9724881714', 'Active');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

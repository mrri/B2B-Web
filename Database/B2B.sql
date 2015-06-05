-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2015 at 11:30 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `b2b`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`customer_id` int(11) NOT NULL,
  `customer_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `customer_mail` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `customer_address` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `customer_phone` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_mail`, `customer_address`, `customer_country`, `customer_phone`) VALUES
(1, 'gsdgfd', '', '', '', '34534'),
(2, 'fdsfsdfs', '', '', '', '5353454'),
(3, 'fsdfds', '', '', '', '4534'),
(4, 'Tuấn Anh', '', '', '', '65464'),
(5, 'dfgdfg', '', '', '', '5645'),
(6, 'Cong Ty A', '', '', '', '0902581600'),
(7, 'Ngo quoc huy', '', '', '', '01647010024'),
(8, 'Nguyen Tuan Anh', '', '', '', '01647010024'),
(9, 'Ngo Quoc Huy', '', '', '', '0902581700'),
(10, 'tuáº¥n anh', '', '', '', 'tuáº¥n anh'),
(11, 'tuÃ¢n anh', '', '', '', '654645');

-- --------------------------------------------------------

--
-- Table structure for table `customer_message`
--

CREATE TABLE IF NOT EXISTS `customer_message` (
`message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `message_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_message`
--

INSERT INTO `customer_message` (`message_id`, `user_id`, `product_id`, `customer_id`, `message_content`) VALUES
(1, 5, 12, 1, 'liên hệ lại nhé       '),
(2, 5, 12, 2, 'Tôi thích sản phẩm này               '),
(3, 5, 12, 3, 'Tôi thích sản phẩm này     '),
(4, 5, 12, 4, 'Nguyễn Tuấn Anh                       '),
(5, 2, 10, 5, 'Ngô Quốc Huy'),
(6, 7, 11, 6, ' Toi thich san pham nay                              '),
(7, 8, 12, 7, ' Toi thich san pham nay                              '),
(8, 9, 13, 8, 'Toi thich san pham nay                               '),
(9, 10, 14, 9, ' TOi can nhieu thong tin hon ve san pham nay chung ta co the thuong luong duoc khong                              ');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `quantity`, `user_id`, `product_category`, `product_name`, `date`, `description`, `price`, `image`) VALUES
(1, 100, 1, 1, 'Máy Tính', '2015-05-27', '<p>Máy Tính SamSung</p>', '5000000', ''),
(2, 100, 2, 3, 'Tủ lạnh Toshiba', '2015-05-28', '<p>Tủ lạnh Toshiba 500l</p>', '500000', ''),
(3, 100, 2, 4, 'Máy Nước Nóng', '2015-05-28', '<p>Máy nước nóng</p>', '3000000', ''),
(4, 100, 2, 100, 'Tivi LCD 590', '2015-05-28', '<p>Tivi LCD</p>', '10000000', ''),
(5, 100, 2, 102, 'Đầu DVD Aring', '2015-05-28', '<p>DVD</p>', '1200000', ''),
(6, 100, 2, 102, 'Đầu DVD Samsung', '2015-05-28', '<p>Đầu DVD Samsung</p>', '1200000', ''),
(8, 100, 2, 3, 'Tủ lạnh Panasonic', '2015-05-29', '<p>Tủ lạnh panasonic</p>', '50000', ''),
(10, 100, 2, 4, 'Máy nước nóng Ferari', '2015-05-29', '<p>Máy Nước Nóng</p>', '1000000', ''),
(11, 100, 7, 300, 'HP ProBook', '2015-06-05', '<p>HP ProBook</p>', '10000', ''),
(12, 100, 8, 100, 'LCD Samsung', '2015-06-05', '<p>TV LCD Samsung</p>', '10000000', ''),
(13, 10, 9, 300, 'HP', '2015-06-05', '<p>HP probook</p>', '10000000', ''),
(14, 10, 10, 100, 'LCD Sony', '2015-06-05', '<p>TV LCD Sony</p>', '10000000', ''),
(15, 10000, 5, 203, 'Bàn ủi Philip', '2015-06-05', '<p>B&agrave; Bàn ủi Philip</p>', '1250000', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
`key` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`key`, `name`) VALUES
(1, 'Máy lạnh'),
(2, 'Máy giặt'),
(3, 'Tủ lạnh'),
(4, 'Máy nước nóng'),
(100, 'Tivi'),
(101, 'Ampli'),
(102, 'Đầu DVD'),
(200, 'Máy Xay Sinh Tố'),
(201, 'Lò vi sóng'),
(202, 'Lò Nướng'),
(203, 'Bàn Ủi'),
(300, 'Laptop'),
(301, 'Máy tính để bàn'),
(302, 'Màn hình'),
(303, 'Máy quay phim');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(11) NOT NULL,
  `user_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `full_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fax` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `bussiness_category` int(11) NOT NULL,
  `company_description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`, `email`, `full_name`, `company_name`, `website`, `address`, `country`, `phone`, `fax`, `bussiness_category`, `company_description`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@b2b.vn', 'admin', '', '', '', '', '', '', 1, ''),
(2, 'MrrBean', '25f9e794323b453885f5181f1b624d0b', 'mrrbean@gmail.com', 'William Bean', 'KMA Technology', '', 'California', 'USA', '0933910122', '', 1, 'This is company provide electronic machine'),
(3, 'FTP', '25f9e794323b453885f5181f1b624d0b', 'support@fpt.vn', 'Ngô Quốc Huy', 'FPT', '', 'Hà Nội', '', '', '', 1, 'Công ty hàng đầu việt nam'),
(4, 'tuananh', '25f9e794323b453885f5181f1b624d0b', 'gdf@gmail.com', 'Nguyễn Văn A', '', '', '', '', '', '', 1, ''),
(5, 'user', '25f9e794323b453885f5181f1b624d0b', 'fdsfsdfds@gmail.com', 'Nguyễn Văn A', '', '', '', '', '', '', 1, ''),
(6, 'nguyentuananh', '25f9e794323b453885f5181f1b624d0b', 'tuananh.nh2000@gmail.com', 'Nguyen Tuan Anh', 'UIT', '', '', '', '', '', 1, ''),
(7, 'MMTUIT', '25f9e794323b453885f5181f1b624d0b', 'MMTUIT@gmail.com', 'Nguyen Tuan Anh', 'UIT', '', '', '', '', '', 1, ''),
(8, 'LTUDM', '25f9e794323b453885f5181f1b624d0b', 'LTUDM@gmail.com', 'Nguyen Tuan Anh', 'MMT2012', '', '', '', '0902581600', '', 1, ''),
(9, 'anhntuit', '25f9e794323b453885f5181f1b624d0b', 'tuananh.nh200@gmail.com', 'Nguyen Tuan Anh', '', '', '', '', '01647010024', '', 1, ''),
(10, 'demo', '25f9e794323b453885f5181f1b624d0b', 'demo@gmail.com', 'demo', 'demo', '', 'Xa lo Ha Noi', 'Viet Nam', '01647010024', '', 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_message`
--
ALTER TABLE `customer_message`
 ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
 ADD PRIMARY KEY (`key`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `customer_message`
--
ALTER TABLE `customer_message`
MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
MODIFY `key` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=304;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

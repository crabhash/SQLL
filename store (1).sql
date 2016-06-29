-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2016 at 11:08 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'TV'),
(2, 'MENS_ITEMS'),
(3, 'FEMELES_ITEM'),
(4, 'CHILDS_ITEM'),
(5, 'MOBILES');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `user_id`, `product_id`) VALUES
(1, 1, 1),
(2, 2, 22),
(3, 2, 12),
(4, 2, 15),
(5, 3, 23),
(6, 3, 1),
(7, 4, 10),
(8, 4, 23),
(9, 4, 1),
(10, 4, 10),
(11, 4, 2),
(12, 4, 5),
(13, 5, 6),
(14, 6, 6),
(15, 6, 3),
(16, 6, 24),
(17, 6, 4),
(18, 7, 1),
(19, 7, 22),
(20, 7, 12),
(21, 7, 15),
(22, 7, 23),
(23, 7, 1),
(24, 7, 10),
(25, 8, 2),
(26, 8, 5),
(27, 8, 6),
(28, 8, 6),
(29, 9, 3),
(30, 9, 24),
(31, 9, 4),
(32, 10, 6),
(33, 10, 3),
(34, 10, 24),
(35, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `product_price`, `product_quantity`) VALUES
(1, 'Samsung STS-45''''', 1, 70000, 40),
(2, 'Videocon-WQ32''''', 1, 45000, 34),
(3, 'LG-GLT40''''', 1, 67000, 20),
(4, 'Samsung J5', 5, 20000, 50),
(5, 'Nokia Lumia 4000', 5, 20500, 30),
(6, 'Sony Xperia_Ultra', 5, 40000, 32),
(7, 'Iphone 5s', 5, 60000, 40),
(8, 'Polo-Tshirt', 2, 2000, 80),
(9, 'Levis Pant', 2, 3000, 40),
(10, 'Armani Tshirt', 2, 2000, 50),
(11, 'Armani Pant', 3, 3000, 40),
(12, 'Ladies Levis Tshirt', 3, 2000, 40),
(13, 'Ladies Levis Pant', 3, 3200, 30),
(14, 'Macho-Man Underwear', 2, 200, 100),
(15, 'Amul Innerwear', 3, 200, 100),
(16, 'Rupa Innerwear', 2, 200, 100),
(17, 'Odni-Sari', 3, 10000, 70),
(18, 'Raymond-Suit', 2, 12000, 90),
(19, 'Dr.Martin Shoe', 2, 5000, 100),
(20, 'Sikhar Shoe', 3, 2500, 50),
(21, 'Woodland Shoe', 2, 4500, 400),
(22, 'Football Jersy', 2, 1200, 150),
(23, 'Basketball Jersy', 3, 1100, 150),
(24, 'Cricket Jersy', 2, 1000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_address` varchar(50) NOT NULL,
  `user_contactno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_address`, `user_contactno`) VALUES
(1, 'Abhash', 'Babarmahal', 2147483647),
(2, 'Aadesh', 'Lokanthali', 2147483647),
(3, 'Abhisek', 'Dhobighat', 2147483647),
(4, 'Aayush', 'Sanepa', 2147483647),
(5, 'Pawan', 'Morang', 2147483647),
(6, 'Prince', 'Chakrapath', 2147483647),
(7, 'Mandeep', 'Balaju', 2147483647),
(8, 'Anish', 'Bhaktapur', 984511113),
(9, 'Jeevan', 'Boudha', 2147483647),
(10, 'Karan', 'Bhaktapur', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`product_id`),
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD CONSTRAINT `tbl_products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

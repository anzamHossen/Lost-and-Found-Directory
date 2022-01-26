-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2021 at 03:51 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lostnfound`
--

-- --------------------------------------------------------

--
-- Table structure for table `managead`
--

CREATE TABLE `managead` (
  `id` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `ad_code` varchar(255) NOT NULL,
  `cpc` varchar(20) NOT NULL,
  `org` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `managead`
--

INSERT INTO `managead` (`id`, `create_date`, `expire_date`, `ad_code`, `cpc`, `org`) VALUES
(7, '2021-12-22', '2021-12-28', 'https://tpc.googlesyndication.com/simgad/3460079351599476095', '2.5', 'google');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `product_code` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `product_code`, `user_id`, `product_picture`) VALUES
(27, 'Luggage', 'Girly Girl by Author Kristin Billerbeck', 'ZJQ7WJ', 608804, '681561images.jpg'),
(32, 'Test product 1', 'THis is a test product', 'JJ81RM', 608804, '865389Sample Image.jpg'),
(34, 'shuvo', 'shuvo dec', '7FEOP4', 941245, '966258Sample Image.jpg'),
(35, 'akashlog', 'akashlog', '39VTRP', 941245, '572920Screenshot_1.jpg'),
(38, 'shuvocse', 'oshuvo', 'QPWZRC', 941245, '826170247576841_1964096833796082_3635262403136917295_n.jpg'),
(50, 'Shuvo', 'Shuvo', 'A5S2MG', 941245, '490190pexels-alexandr-podvalny-1008155.jpg'),
(51, 'Amazon', 'Amazon Diary', 'IXM2L0', 464520, '905617pexels-gustavo-fring-4127646.jpg'),
(52, 'Boom', 'boom', 'ZOEVMO', 984908, '24795020210914_162012.jpg'),
(54, 'dhaka', 'dhaka', '1BE1MA', 984908, '21162520191215_164746-01.jpeg'),
(55, 'shuvo', 'cse', 'M0VKHF', 315115, '271704IMG_20210801_114410_250.jpg'),
(56, 'dhaka', 'sss', 'Y1R5YP', 315115, '735189pexels-photo-3597111.jpeg'),
(57, 'shuvo', 'shuvo', 'R58ETE', 984908, '503988Sample Image.jpg'),
(58, 'shuvo', 'shuvo', 'V5U5L1', 984908, '527386[001812].jpg'),
(59, 'product 2222', 'product 2222', '6HAAYE', 984908, '10981752867336_2310225269256707_8260209742232682496_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zip_code` varchar(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `profile_picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `first_name`, `last_name`, `password`, `mobile_number`, `address`, `zip_code`, `city`, `district`, `status`, `created`, `created_by`, `modified`, `modified_by`, `deleted_at`, `profile_picture`) VALUES
(1, 608804, 'Amit', 'Mondal', 'd41d8cd98f00b204e9800998ecf842', '8801722645583', 'Dhaka', '1207', 'Dhaka', 'Khulna', 1, '2021-10-08 06:07:21', 608804, '0000-00-00 00:00:00', 0, '2021-12-16 16:43:00', 'tuslpistczzIMG_0041.jpg'),
(2, 889940, 'sahed', 'Khan', '81dc9bdb52d04dc20036dbd8313ed0', '8801722856892', 'Jessore', '1211', 'Dhaka', 'Dhaka', 1, '2021-10-11 05:34:33', 889940, '0000-00-00 00:00:00', 0, '2021-11-27 15:56:16', 'kyjihsahed.jpg'),
(7, 941245, 'Shuvo', 'Mondal', '827ccb0eea8a706c4c34a16891f84e', '01798772131', 'Mohammadpur', '1207', 'Dhaka', 'Dhaka', 1, '2021-11-16 05:11:31', 941245, '0000-00-00 00:00:00', 0, '2021-11-22 12:05:46', 'jtqmn52867336_2310225269256707_8260209742232682496_n.jpg'),
(11, 315115, 'akash', 'Hossen', '827ccb0eea8a706c4c34a16891f84e', '01868867438', 'Basabo', '1230', 'Dhaka', 'Dhaka', 1, '2021-12-16 05:49:02', 315115, '0000-00-00 00:00:00', 0, '2021-12-16 16:49:02', 'odsnf152755043_3019905518295225_6282560512057396648_n.jpg'),
(13, 984908, 'shuvo', 'Mondal', 'e10adc3949ba59abbe56e057f20f88', '01799772131', 'Mohammadpur', '1207', 'Dhaka', 'Dhaka', 1, '2021-12-16 06:23:49', 984908, '0000-00-00 00:00:00', 0, '2021-12-16 17:23:49', 'adzlq118616866_2760241980921698_5330792832720334119_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `search_history`
--

CREATE TABLE `search_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `search_product_code` varchar(255) NOT NULL,
  `time_of_search` datetime NOT NULL,
  `phone` varchar(15) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `product_woner_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `search_history`
--

INSERT INTO `search_history` (`id`, `user_id`, `search_product_code`, `time_of_search`, `phone`, `fname`, `product_woner_id`) VALUES
(13, 889940, '608804627890', '2021-11-20 05:00:01', '8801722856892', 'sahed', 608804),
(14, 889940, '6088043DCE94', '2021-11-20 05:00:36', '8801722856892', 'sahed', 608804),
(15, 889940, 'TI8N1E', '2021-11-20 05:01:20', '8801722856892', 'sahed', 941245),
(16, 608804, 'TI8N1E', '2021-11-20 05:13:44', '8801722645583', 'Amit', 0),
(17, 608804, '608804627890', '2021-11-20 05:18:59', '8801722645583', 'Amit', 0),
(18, 941245, '608804627890', '2021-11-20 05:20:04', '01798772131', 'Shuvo', 608804),
(19, 941245, 'TI8N1E', '2021-11-20 05:20:23', '01798772131', 'Shuvo', 941245),
(20, 941245, '608804627890', '2021-11-20 05:22:31', '01798772131', 'Shuvo', 608804),
(21, 608804, '39VTRP', '2021-11-21 06:10:37', '8801722645583', 'Amit', 941245),
(22, 608804, '39VTRP', '2021-11-21 06:12:19', '8801722645583', 'Amit', 941245),
(23, 608804, '39VTRP', '2021-11-21 06:13:03', '8801722645583', 'Amit', 941245),
(24, 608804, 'TI8N1E', '0000-00-00 00:00:00', '8801722645583', 'Amit', 941245),
(25, 608804, 'TI8N1E', '2021-11-21 06:18:40', '8801722645583', 'Amit', 941245),
(26, 941245, 'VWX6AX', '2021-12-01 06:31:17', '01798772131', 'Shuvo', 941245),
(27, 941245, 'VWX6AX', '2021-12-01 06:40:48', '01798772131', 'Shuvo', 941245),
(28, 464520, '33IJXD', '2021-12-05 06:20:02', '01794971951', 'Akash', 464520),
(29, 464520, 'IXM2L0', '2021-12-16 07:36:02', '01794971951', 'Akash', 464520),
(30, 464520, 'A5S2MG', '2021-12-16 07:38:01', '01794971951', 'Akash', 941245),
(31, 984908, 'ZOEVMO', '2021-12-19 14:58:17', '01799772131', 'shuvo', 984908),
(32, 984908, '1BE1MA', '2021-12-21 04:33:49', '01799772131', 'shuvo', 984908),
(33, 315115, '1BE1MA', '2021-12-21 04:38:42', '01868867438', 'akash', 984908),
(34, 315115, 'M0VKHF', '2021-12-21 05:01:39', '01868867438', 'akash', 315115),
(35, 984908, 'R58ETE', '2021-12-21 09:47:15', '01799772131', 'shuvo', 984908),
(36, 984908, 'V5U5L1', '2021-12-21 14:26:54', '01799772131', 'shuvo', 984908),
(37, 984908, '6HAAYE', '2021-12-21 14:39:59', '01799772131', 'shuvo', 984908),
(38, 984908, 'JJ81RM', '2021-12-21 14:41:50', '01799772131', 'shuvo', 608804);

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL,
  `user_id` int(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `user_id`, `subject`, `message`) VALUES
(1, 608804, 'About site performance', ' Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.'),
(2, 608804, ' Praesent dapibus', ' Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue'),
(3, 608804, 'Aliquam quam lectus', ' Pellentesque fermentum dolor. Aliquam quam lectus'),
(4, 608804, ' Sed adipiscing ornare risus', ' Sed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel'),
(6, 608804, 'Aenean dignissim pellentesque felis.', ' Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci.'),
(7, 889940, 'About site performance', ' Sed adipiscing ornare risus. Morbi est est, blandit sit amet, sagittis vel.'),
(8, 938154, 'Lorem ipsum dolor', ' Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. ');

-- --------------------------------------------------------

--
-- Table structure for table `theme_option`
--

CREATE TABLE `theme_option` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `fotter_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theme_option`
--

INSERT INTO `theme_option` (`id`, `logo`, `fotter_text`) VALUES
(1, 'logo.png', '@ 2021 All Rights Reserved by Shuvo | Akash');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(4) UNSIGNED NOT NULL,
  `username` varchar(63) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `is_block` tinyint(1) NOT NULL DEFAULT 0,
  `is_super_admin` int(2) NOT NULL DEFAULT 0,
  `emp_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `is_admin`, `created`, `created_by`, `modified`, `modified_by`, `is_block`, `is_super_admin`, `emp_name`) VALUES
(11, 'amitcse29', 'amit@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 0, '2021-10-08 06:07:21', 608804, '2016-12-21 05:43:00', 608804, 0, 0, 'Rahim'),
(12, 'sahed', 'sahed@lostnfound.com', '373ba17539b7d6e32979595740ae7d9d', 0, '2021-10-11 05:34:33', 889940, '0000-00-00 00:00:00', 0, 0, 0, 'Karim'),
(17, 'shuvocse9', 'shuvocse99@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 1, '2021-11-16 05:11:31', 941245, '0000-00-00 00:00:00', 0, 0, 1, 'Rofiq'),
(21, 'akashlog', 'akashlog402@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '2021-12-16 05:49:02', 315115, '0000-00-00 00:00:00', 0, 0, 0, 'Joy'),
(23, 'shuvocse29', 'shuvroshuvo99@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '2021-12-16 06:23:49', 984908, '0000-00-00 00:00:00', 0, 0, 0, 'Niloy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `managead`
--
ALTER TABLE `managead`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_history`
--
ALTER TABLE `search_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_option`
--
ALTER TABLE `theme_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `managead`
--
ALTER TABLE `managead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `search_history`
--
ALTER TABLE `search_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `theme_option`
--
ALTER TABLE `theme_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

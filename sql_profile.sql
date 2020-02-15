-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2020 at 05:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_profile`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(2) NOT NULL,
  `cat_nam` varchar(50) NOT NULL,
  `cat_desc` varchar(50) NOT NULL,
  `pub_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_nam`, `cat_desc`, `pub_status`) VALUES
(6, 'home', ' Here only Home contant      ', 1),
(7, 'about', ' About myself  ', 1),
(8, 'service', ' Actually  Here details That how can I help you. ', 1),
(9, 'contact', ' how you can connect with me easily. here all are ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(2) NOT NULL,
  `cat_id` int(2) NOT NULL,
  `post_title` varchar(50) NOT NULL,
  `post_short_desc` varchar(200) NOT NULL,
  `post_long_desc` text NOT NULL,
  `image_upload` text NOT NULL,
  `pub_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `post_title`, `post_short_desc`, `post_long_desc`, `image_upload`, `pub_status`) VALUES
(5, 8, 'Laravel Development', 'i am best and number one developer in the world .', ' i am best and number one developer in the world .you will be safe form heck and crack .\r\n', '../assets/uploaded_images/s1.png', 1),
(6, 8, 'UI/UX DESIGNER', ' ui/ux also make your ideas perfect visual at the look.', '  ui/ux also make your ideas perfect visual at the look.so you should take to care of this .', '../assets/uploaded_images/s2.png', 1),
(7, 8, 'WEB DESING', ' web design are the mane pages .', ' web design are the mane pages .how you see and use it that gives instruction for you. ', '../assets/uploaded_images/s3.png', 1),
(8, 8, 'WP DEVELOPMENT', ' if you want theme optimize website .you can take wordpress ', '  if you want theme optimize website .you can take wordpress .we provide best .', '../assets/uploaded_images/s4.png', 1),
(10, 7, 'Introduce About me', ' i am a new developer .', ' i  always think my best work ', '../assets/uploaded_images/PicsArt_06-09-05.40.44[1].jpg', 1),
(11, 6, 'HELLO', ' I AM ARIFUL HOQUE', ' LARAVEL DEVELOPER', '../assets/uploaded_images/home-right.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'Ariful Hoque', 'arifulhoque091@gmail.com', 'fe35531da7282af2e5c95362ee1ca86c');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_message`
--

CREATE TABLE `visitor_message` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_message`
--
ALTER TABLE `visitor_message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitor_message`
--
ALTER TABLE `visitor_message`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

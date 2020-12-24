-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2020 at 05:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bsu_dist`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `user_id`, `password`, `phone`) VALUES
(1, 'Peter Goodnewz', 'a@a.com', 'oche', '123456', '08036474832');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(30) NOT NULL,
  `dept_name` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dept_name`, `date`) VALUES
(1, 'PHYSICS', '07-11-20 @ 5:12 PM'),
(2, 'CHEMISTRY', '07-11-20 @ 5:12 PM');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(30) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `sender`, `message`, `date`) VALUES
(1, 'White Kate Caro(Student)', 'hello\r\n\r\n                                                                                               ', '07-11-20 @ 6:17 PM');

-- --------------------------------------------------------

--
-- Table structure for table `learning_content`
--

CREATE TABLE `learning_content` (
  `id` int(30) NOT NULL,
  `content_name` text NOT NULL,
  `document` varchar(200) NOT NULL,
  `audio` varchar(200) NOT NULL,
  `video` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `syllabus_id` int(30) NOT NULL,
  `lecturer_id` int(2) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `learning_content`
--

INSERT INTO `learning_content` (`id`, `content_name`, `document`, `audio`, `video`, `department`, `syllabus_id`, `lecturer_id`, `date`) VALUES
(1, 'PHY101', 'PHY101_Kinetic,Motion_5fa6f7f5f23cc_ABIGAIL ADELEKE.pdf', 'PHY101_Kinetic,Motion_5fa6f7f5f23d6_45_AM-_hymn)(256k).mp3', 'PHY101_Kinetic,Motion_5fa6f7f5f23d8_Laravel_custom_login_and_redirects_for_multiple_roles(360p).mp4', 'PHYSICS', 2, 1, '07-11-20 @ 8:39 PM');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `id` int(30) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `religion` varchar(200) NOT NULL,
  `hobby` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`id`, `fname`, `mname`, `sname`, `address`, `phone`, `gender`, `dob`, `religion`, `hobby`, `image`, `email`, `password`, `department`, `level`, `date`) VALUES
(1, 'Bola', 'Seyi', 'Ade', 'Oyo', '08133451436', 'FEMALE', '1989-06-07', 'CHRISTIANITY', 'singing', '5fa6c7f15c41b_IMG-20200606-WA0011.jpg', 'b@b.com', '123456', 'PHYSICS', 'lecturer', '07-11-20 @ 5:14 PM');

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(30) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `year` varchar(30) NOT NULL,
  `ref` varchar(200) NOT NULL,
  `matno` varchar(200) NOT NULL,
  `status` varchar(2) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`id`, `amount`, `year`, `ref`, `matno`, `status`, `date`) VALUES
(2, '300000', '2017/2018', 'bdfb0f07c84c817ba2dd', 'BSU/DIST/0', '1', '10-11-20 @ 12:08 PM'),
(3, '400000', '2018/2019', 'f71f9aca33d03251c397', 'BSU/DIST/0', '0', '10-11-20 @ 12:09 PM');

-- --------------------------------------------------------

--
-- Table structure for table `session_log`
--

CREATE TABLE `session_log` (
  `id` int(30) NOT NULL,
  `level` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `login_time` varchar(200) NOT NULL,
  `logout_time` varchar(200) NOT NULL,
  `device` varchar(200) NOT NULL,
  `status` varchar(2) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_log`
--

INSERT INTO `session_log` (`id`, `level`, `fullname`, `user_id`, `password`, `login_time`, `logout_time`, `device`, `status`, `date`) VALUES
(1, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '6:16 PM', '6:18 PM', 'DESKTOP-V6MC5VA', '0', '07/11/20'),
(2, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '6:27 PM', '9:04 PM', 'DESKTOP-V6MC5VA', '0', '07/11/20'),
(3, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '6:32 AM', '11:36 PM', 'DESKTOP-V6MC5VA', '0', '09/11/20'),
(4, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '10:45 AM', '11:29 AM', 'DESKTOP-V6MC5VA', '0', '10/11/20'),
(5, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '12:12 PM', '', 'DESKTOP-V6MC5VA', '1', '10/11/20'),
(6, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '1:22 AM', '2:33 AM', 'DESKTOP-V6MC5VA', '0', '11/11/20'),
(7, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '7:59 PM', '9:15 PM', 'DESKTOP-V6MC5VA', '0', '14/11/20'),
(8, 'lecturer', 'Ade Seyi Bola', 'b@b.com', '123456', '8:41 PM', '8:46 PM', 'DESKTOP-V6MC5VA', '0', '14/11/20'),
(9, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '9:09 PM', '9:15 PM', 'DESKTOP-V6MC5VA', '0', '14/11/20'),
(10, 'student', 'White Kate Caro', 'BSU/DIST/0', '123456', '9:13 PM', '9:15 PM', 'DESKTOP-V6MC5VA', '0', '14/11/20');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(30) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `mname` varchar(200) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `religion` varchar(200) NOT NULL,
  `hobby` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `matno` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `fname`, `mname`, `sname`, `address`, `phone`, `gender`, `dob`, `religion`, `hobby`, `image`, `matno`, `email`, `password`, `department`, `level`, `year`, `date`) VALUES
(1, 'Caro', 'Kate', 'White', 'Houston', '07033451436', 'FEMALE', '2020-11-28', 'CHRISTIANITY', 'travelling', '5fa6c84fe8d39_IMG-20200606-WA0012.jpg', 'BSU/DIST/0', 'c@c.com', '123456', 'PHYSICS', 'student', '2017/2018', '07-11-20 @ 5:16 PM');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(30) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `sender`, `message`, `date`) VALUES
(1, 'b@b.com', 'i order for coke 50cl but got coke 75cl , how to i change it..\r\n\r\n                                                                                               ', '21-08-19 @ 12:45 PM');

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE `syllabus` (
  `id` int(30) NOT NULL,
  `coursename` varchar(200) NOT NULL,
  `syllabus` text NOT NULL,
  `year` varchar(200) NOT NULL,
  `department` varchar(200) NOT NULL,
  `lecturer_id` int(10) NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `coursename`, `syllabus`, `year`, `department`, `lecturer_id`, `date`) VALUES
(2, 'PHY101', 'Kinetic,Motion', '2015/2016', 'PHYSICS', 1, '07-11-20 @ 6:56 PM'),
(3, 'PHY102', 'Gravity', '2017/2018', 'PHYSICS', 1, '07-11-20 @ 6:56 PM'),
(4, 'PHY105', 'Practical themodynamics', '2017/2018', 'PHYSICS', 1, '07-11-20 @ 6:56 PM');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(30) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `user_id`, `password`, `level`) VALUES
(1, 'b@b.com', '123456', 'lecturer'),
(2, 'BSU/DIST/0', '123456', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_content`
--
ALTER TABLE `learning_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session_log`
--
ALTER TABLE `session_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `learning_content`
--
ALTER TABLE `learning_content`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `session_log`
--
ALTER TABLE `session_log`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

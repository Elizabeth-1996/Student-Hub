-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2021 at 02:01 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studenthub`
--

-- --------------------------------------------------------

--
-- Table structure for table `grievances`
--

CREATE TABLE `grievances` (
  `id` int(11) NOT NULL,
  `griev_to` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grievances`
--

INSERT INTO `grievances` (`id`, `griev_to`, `subject`, `message`) VALUES
(1, 'ADMIN', 'php', 'couldn\'t follow classes');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `l_id` int(11) NOT NULL,
  `leave_type` varchar(10) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `reason` varchar(100) NOT NULL,
  `file_upload` text NOT NULL,
  `sid` int(11) NOT NULL,
  `status` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`l_id`, `leave_type`, `from_date`, `to_date`, `reason`, `file_upload`, `sid`, `status`) VALUES
(7, 'exam', '2021-03-07', '2021-03-08', 'psc exam', 'ET_Notes113.pdf', 9, '1'),
(8, 'sickleave', '2021-03-08', '2021-03-09', 'fever', 'ET_Notes12.pdf', 11, '1'),
(9, 'sickleave', '2021-03-09', '2021-03-15', 'fever', 'ET_Notes1111.pdf', 11, '1'),
(10, '', '0000-00-00', '0000-00-00', '', '', 0, '0'),
(11, 'exam', '2021-03-11', '2021-03-11', 'psc exam', 'ET_Notes114.pdf', 11, '1'),
(12, 'exam', '2021-03-30', '2021-03-12', 'psc exam', 'ET_Notes21.pdf', 12, '0');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` text NOT NULL,
  `usertype` enum('0','1','2') NOT NULL,
  `userstatus` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `usertype`, `userstatus`) VALUES
(4, 'Admin', '$2y$10$3eLYiTEVB0aXqi0xEGs0LeKGeZFLiOr6n4oboPUQ3ZiLT5u8dO/Ly', '0', '1'),
(5, 'Neethu', '$2y$10$gdZGacuesuoBD.qbRptVleWL.UlyhFsGspllLUGkNyyD16rpP67ma', '2', '1'),
(6, 'Ammu', '$2y$10$GyWf23Ymx32qHIzCiuB0t.1TwmEUB0MRlRny8hyR3DPXybCGU5IK.', '1', '1'),
(9, 'Varsha', '$2y$10$06Z7OyapZKVJKI9Ax3qohOEfM9kEboZvzlN9sxHMbsemtZXS0mJf6', '1', '1'),
(10, 'Revathy', '$2y$10$bmOQI771Q/8JKZ7UlkNBMeQNyt3F9tLBy.xNaMQ9cdTKjNFwP3E4O', '1', '1'),
(11, 'Keerthi', '$2y$10$AZ3KSKK61B.p8W64ARJJaOmH5KpVEUCPK8H7vxiQJuCyfzsiG/7vC', '1', '1'),
(12, 'Kripa', '$2y$10$9AbLa4UNWuSR/mrxjQ1HDuvIMNobHx5tfLy.sy0RiiiAgjthDNome', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`id`, `subject`, `date`, `file`) VALUES
(4, 'php', '2021-03-05', 'php_tutorial.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `id` int(11) NOT NULL,
  `ad_no` int(11) NOT NULL,
  `assesment` varchar(20) NOT NULL,
  `sub1` varchar(20) NOT NULL,
  `sub1mark` int(11) NOT NULL,
  `sub2` varchar(20) NOT NULL,
  `sub2mark` int(11) NOT NULL,
  `sub3` varchar(20) NOT NULL,
  `sub3mark` int(11) NOT NULL,
  `sub4` varchar(20) NOT NULL,
  `sub4mark` int(11) NOT NULL,
  `sub5` varchar(20) NOT NULL,
  `sub5mark` int(11) NOT NULL,
  `lab1` int(11) NOT NULL,
  `lab2` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`id`, `ad_no`, `assesment`, `sub1`, `sub1mark`, `sub2`, `sub2mark`, `sub3`, `sub3mark`, `sub4`, `sub4mark`, `sub5`, `sub5mark`, `lab1`, `lab2`, `total`, `percentage`) VALUES
(1, 101, '1', 'php', 20, 'python', 15, 'c', 17, 'html', 15, 'java', 14, 20, 20, 70, 70);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `ad_no` int(11) NOT NULL,
  `rollno` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(32) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `father` varchar(20) NOT NULL,
  `mother` varchar(20) NOT NULL,
  `address` varchar(60) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `p_phone` varchar(12) NOT NULL,
  `ad_date` date NOT NULL,
  `religion` varchar(20) NOT NULL,
  `cast` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `blood` varchar(20) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `taluk` varchar(20) NOT NULL,
  `panchayath` varchar(20) NOT NULL,
  `block` varchar(20) NOT NULL,
  `income` int(11) NOT NULL,
  `aadhar` int(11) NOT NULL,
  `project` varchar(20) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `skills` varchar(100) NOT NULL,
  `h_qualification` varchar(25) NOT NULL,
  `stream` varchar(25) NOT NULL,
  `passingdate` date NOT NULL,
  `sslcmark` varchar(15) NOT NULL,
  `hsemark` varchar(15) NOT NULL,
  `ugmark` varchar(15) NOT NULL,
  `pgmark` varchar(15) NOT NULL,
  `loginid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `ad_no`, `rollno`, `name`, `email`, `gender`, `dob`, `father`, `mother`, `address`, `phone`, `p_phone`, `ad_date`, `religion`, `cast`, `category`, `blood`, `nationality`, `state`, `district`, `taluk`, `panchayath`, `block`, `income`, `aadhar`, `project`, `batch`, `skills`, `h_qualification`, `stream`, `passingdate`, `sslcmark`, `hsemark`, `ugmark`, `pgmark`, `loginid`) VALUES
(1, 101, 20, 'varsha', 'varsha@gmail.com', 'female', '2021-05-05', 'Devarajan', 'Sheeja', 'Adarsh Bhavan, Kollam', '9633509282', '9567312636', '2020-12-20', 'hindu', 'viswakarma', 'OBc', 'B +ve', 'Indian', 'Kerala', 'Kollam', 'Kollam', 'Block', 'Mukhathala', 300000, 12345678, 'yuvakeralam', 'JSD', 'Python,php,c', 'MSC', 'Cs', '0000-00-00', '87', '84', '70', '70', 9),
(2, 121, 12, 'Revathy', 'revathy@gmail.com', 'female', '1998-05-22', 'Thulasi', 'shyama', 'Revathy home', '12345567', '1234567', '2020-12-22', 'hindu', 'Nair', 'General', 'o +ve', 'Indian', 'Kerala', 'Kollam', 'Kollam', 'kottamkara', 'Mukhathala', 300000, 45678, 'yuvakeralam', 'JSD', 'Python,php,c', 'Btech', 'Cse', '2021-03-03', '87', '84', '81', '78', 10),
(3, 131, 11, 'keerthi', 'keerhi@123', 'female', '1996-03-03', 'Chandran', 'ambika', 'pathanamthitta', '1234567', '1234567', '2021-03-02', 'hindu', 'Nair', 'General', 'o +ve', 'Indian', 'Kerala', 'pathanamthitta', 'adoor', 'kottamkara', 'adoor', 300000, 12345678, 'yuvakeralam', 'JSD', 'Python,php,c', 'MSC', 'Cs', '2021-03-03', '87', '84', '81', '70', 11);

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phoneno` int(13) NOT NULL,
  `email` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `qualification` varchar(30) NOT NULL,
  `certifications` varchar(100) NOT NULL,
  `skills` varchar(200) NOT NULL,
  `loginid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`id`, `name`, `address`, `phoneno`, `email`, `gender`, `dob`, `qualification`, `certifications`, `skills`, `loginid`) VALUES
(1, 'kripa', 'adoor', 987655678, 'kripa@gmail.com', 'female', '1998-06-09', 'MCa', 'lkiuytfdfg', 'c,bj', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tr_leaves`
--

CREATE TABLE `tr_leaves` (
  `t_id` int(11) NOT NULL,
  `leave_type` varchar(20) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `reason` varchar(50) NOT NULL,
  `file_upload` text NOT NULL,
  `tid` int(11) NOT NULL,
  `status` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_leaves`
--

INSERT INTO `tr_leaves` (`t_id`, `leave_type`, `from_date`, `to_date`, `reason`, `file_upload`, `tid`, `status`) VALUES
(1, 'sickleave', '2021-03-06', '2021-03-08', 'fever', 'ET_Notes3.pdf', 0, '0'),
(2, 'sickleave', '2021-03-10', '2021-03-20', 'fever', 'ET_Notes4.pdf', 9, '0'),
(3, 'exam', '2021-03-16', '2021-03-17', 'psc exam', 'ET_Notes41.pdf', 12, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grievances`
--
ALTER TABLE `grievances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tr_leaves`
--
ALTER TABLE `tr_leaves`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grievances`
--
ALTER TABLE `grievances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `performance`
--
ALTER TABLE `performance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tr_leaves`
--
ALTER TABLE `tr_leaves`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

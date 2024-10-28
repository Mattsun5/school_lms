-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 09:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'Admin2', 'Admin2');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `status` text NOT NULL,
  `name` text NOT NULL,
  `HOD` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `status`, `name`, `HOD`, `description`) VALUES
(0, 'Active', 'CSC', 'Jackson', 'computer science');

-- --------------------------------------------------------

--
-- Table structure for table `parent_data`
--

CREATE TABLE `parent_data` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `lname` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `relationship` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `marital_status` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `image` text CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent_data`
--

INSERT INTO `parent_data` (`id`, `fname`, `lname`, `email`, `phone`, `relationship`, `marital_status`, `image`, `password`) VALUES
(2, 'Quora', 'James', 'sajal@gmail.com', '08012439234', 'Father', 'Married', '', 'qwertyuiop');

-- --------------------------------------------------------

--
-- Table structure for table `senior subjects`
--

CREATE TABLE `senior subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `dept` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `senior subjects`
--

INSERT INTO `senior subjects` (`id`, `subject_name`, `dept`) VALUES
(2, 'Literature in English ', 'Art'),
(3, 'Chemistry', 'Science'),
(4, 'CRK', 'Art'),
(5, 'CRK', 'Commercial'),
(6, 'biology ', 'Science');

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `lname` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `DoB` date NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `Gender` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `class_category` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `class` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `image` text CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `index_no` int(50) NOT NULL,
  `status` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `fname`, `lname`, `DoB`, `email`, `phone`, `Gender`, `class_category`, `class`, `image`, `password`, `index_no`, `status`) VALUES
(5, 'grace', 'shedrack', '2008-09-16', 'shedygrace@gmail.com', '08102130723', 'Female', 'Junior', 'grade 7', '11024698_868410906530929_4932944313239637985_n.jpg', 'password', 402153, 'approved'),
(7, 'huwhw', 'sdjuhd', '2022-01-31', 'dfgyujhksdfjh@mail.com', '98764890387', 'Male', 'Senior', 'grade 8', 'FB_IMG_15666643189058345.jpg', 'qwerty', 0, 'rejected'),
(11, 'qwsdfgsde', 'sdfvds', '2003-10-13', 'qwerty@gmail.com', '4532323', 'Male', 'Senior', 'grade 22', '79362252_180909979719910_5801422393557647360_n.jpg', 'qwerty', 41325, 'approved'),
(12, 'hdsjufijksh', 'hsgvyjhs', '2007-10-31', 'jiodetfijok13krfd@gmail.com', '3245464', 'Female', 'Senior', 'grade 6', 'Youth Connect_Synopsis.png', 'qwerty', 132504, 'approved'),
(15, 'hjedhfuj', 'jdjksd', '2002-01-04', 'uihfdjkfd@gmail.com', '48858384', 'Female', 'Senior', 'grade 22', '111545790_294887421847976_5054995236949628973_n.jpg', 'qwerty', 132045, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subject_name`) VALUES
(3, 'Mathematics '),
(4, 'Social studies'),
(5, 'CRK'),
(7, 'English language '),
(8, 'IRK');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_data`
--

CREATE TABLE `teacher_data` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `lname` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `marital status` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `Gender` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `class_category` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `class_taking` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `Subject Teaching` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `image` text CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_data`
--

INSERT INTO `teacher_data` (`id`, `fname`, `lname`, `email`, `phone`, `marital status`, `Gender`, `class_category`, `class_taking`, `Subject Teaching`, `image`, `password`) VALUES
(1, 'Ariyo', 'ariff', 'trinitejosh@gmail.com', '08121956127', 'single', 'Male', 'Junior', 'grade 3', 'Mathematics ', '', 'password'),
(2, 'grace', 'shedrack', 'shedygrace@gmail.com', '08102130724', 'Married', 'Female', 'Senior', 'grade 7', 'Social studies', '67326622_331589544417364_6453377396635598848_n.jpg', 'qwerty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_data`
--
ALTER TABLE `parent_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `senior subjects`
--
ALTER TABLE `senior subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_data`
--
ALTER TABLE `teacher_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `parent_data`
--
ALTER TABLE `parent_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `senior subjects`
--
ALTER TABLE `senior subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teacher_data`
--
ALTER TABLE `teacher_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

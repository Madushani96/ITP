-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2021 at 08:40 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarymanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `isbn` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `category` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`isbn`, `name`, `author`, `publisher`, `category`, `price`, `type`, `status`) VALUES
(1222, 'Java  Programming', 'C J Watson', '950', 'History', 950, 'borrow', 'available'),
(2345, 'American HIstory', 'Micheal Jackson', '1350', 'History', 1350, 'reference', 'Issued');

-- --------------------------------------------------------

--
-- Table structure for table `deletedbooks`
--

CREATE TABLE `deletedbooks` (
  `deleteid` int(15) NOT NULL,
  `isbn` int(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `author` varchar(20) NOT NULL,
  `publisher` varchar(20) NOT NULL,
  `category` varchar(15) NOT NULL,
  `price` float NOT NULL,
  `type` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `deleteddate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deletedissues`
--

CREATE TABLE `deletedissues` (
  `deletedid` int(15) NOT NULL,
  `issueid` int(15) NOT NULL,
  `memberid` varchar(15) NOT NULL,
  `membername` varchar(30) NOT NULL,
  `isbn` int(20) NOT NULL,
  `bookname` varchar(30) NOT NULL,
  `issuedate` varchar(15) NOT NULL,
  `duedate` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `deleteddate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deletedmember`
--

CREATE TABLE `deletedmember` (
  `deleteid` int(15) NOT NULL,
  `memberid` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `birthday` varchar(15) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `telephone` int(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `registereddate` varchar(15) NOT NULL,
  `deleteddate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deletedmember`
--

INSERT INTO `deletedmember` (`deleteid`, `memberid`, `name`, `nic`, `birthday`, `gender`, `occupation`, `telephone`, `address`, `type`, `status`, `registereddate`, `deleteddate`) VALUES
(1, 'MI1000', 'x', 'x', 'Feb 12, 2021', 'Select', 'x', 3, 'w', 'Select', 'eligible', 'sql2', '2021-02-16'),
(3, 'MI1000', 'a', 'rrtt', 'Feb 5, 2021', 'Select', 'sss', 333, 'dd', 'Select', 'eligible', '2021-02-16', '2021-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `deletedread`
--

CREATE TABLE `deletedread` (
  `deletedid` int(15) NOT NULL,
  `readid` int(15) NOT NULL,
  `personname` varchar(40) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `isbn` int(30) NOT NULL,
  `bookname` varchar(40) NOT NULL,
  `telephone` int(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `lendtime` varchar(15) NOT NULL,
  `returntime` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `readdate` varchar(15) NOT NULL,
  `deleteddate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deletedreturns`
--

CREATE TABLE `deletedreturns` (
  `deletedid` int(15) NOT NULL,
  `returnid` int(15) NOT NULL,
  `issueid` int(15) NOT NULL,
  `memberid` varchar(15) NOT NULL,
  `membername` varchar(30) NOT NULL,
  `isbn` int(20) NOT NULL,
  `bookname` varchar(30) NOT NULL,
  `issuedate` varchar(15) NOT NULL,
  `duedate` varchar(15) NOT NULL,
  `returndate` varchar(15) NOT NULL,
  `fine` float NOT NULL,
  `deleteddate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `issueid` int(15) NOT NULL,
  `memberid` varchar(15) NOT NULL,
  `membername` varchar(30) NOT NULL,
  `isbn` int(30) NOT NULL,
  `bookname` varchar(30) NOT NULL,
  `issuedate` varchar(20) NOT NULL,
  `duedate` varchar(20) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`issueid`, `memberid`, `membername`, `isbn`, `bookname`, `issuedate`, `duedate`, `status`) VALUES
(1019, 'MI1000', 'Kasun Rajapaksha', 2345, 'American HIstory', 'Feb 5, 2021', 'Feb 10, 2021', 'returned'),
(1020, 'MI1000', 'Kasun Rajapaksha', 2345, 'American HIstory', 'Feb 5, 2021', 'Feb 10, 2021', 'Issued'),
(1021, 'MI1000', 'Kasun Rajapaksha', 2345, 'American HIstory', 'Feb 5, 2021', 'Feb 10, 2021', 'Issued'),
(1022, 'MI1000', 'Kasun Rajapaksha', 2345, 'American HIstory', 'Feb 5, 2021', 'Feb 10, 2021', 'Issued');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberid` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `nic` varchar(20) DEFAULT NULL,
  `birthday` varchar(15) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `telephone` int(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `registereddate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `read`
--

CREATE TABLE `read` (
  `readid` int(15) NOT NULL,
  `personname` varchar(40) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `isbn` int(30) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `telephone` int(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `lendtime` varchar(150) NOT NULL,
  `returntime` varchar(150) NOT NULL,
  `status` varchar(10) NOT NULL,
  `readdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `read`
--

INSERT INTO `read` (`readid`, `personname`, `nic`, `isbn`, `bookname`, `telephone`, `address`, `lendtime`, `returntime`, `status`, `readdate`) VALUES
(3, 'saaaa', 'sqqqq', 2345, 'American HIstory', 20, 's', '01:05:26.298028800', '01:08:24.925532', 'returned', '2021-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `returnid` int(15) NOT NULL,
  `issueid` int(15) NOT NULL,
  `memberid` varchar(15) NOT NULL,
  `membername` varchar(30) NOT NULL,
  `isbn` int(20) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `issuedate` varchar(20) NOT NULL,
  `duedate` varchar(20) NOT NULL,
  `returndate` varchar(20) NOT NULL,
  `fine` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `return`
--

INSERT INTO `return` (`returnid`, `issueid`, `memberid`, `membername`, `isbn`, `bookname`, `issuedate`, `duedate`, `returndate`, `fine`) VALUES
(1010, 1019, 'MI1000', 'Kasun Rajapaksha', 2345, 'American HIstory', 'Feb 5, 2021', 'Feb 10, 2021', 'Feb 4, 2021', 200),
(1011, 1019, 'MI1000', 'Kasun Rajapaksha', 2345, 'American HIstory', 'Feb 5, 2021', 'Feb 10, 2021', 'Feb 4, 2021', 200);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(15) NOT NULL,
  `name` varchar(40) NOT NULL,
  `role` varchar(5) NOT NULL,
  `password` varchar(30) NOT NULL,
  `security` varchar(30) NOT NULL,
  `answer` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `name`, `role`, `password`, `security`, `answer`) VALUES
('ABC', 'ABC DEF', 'User', '123', 'What is your alma mater?', 'DEF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `deletedbooks`
--
ALTER TABLE `deletedbooks`
  ADD PRIMARY KEY (`deleteid`);

--
-- Indexes for table `deletedissues`
--
ALTER TABLE `deletedissues`
  ADD PRIMARY KEY (`deletedid`);

--
-- Indexes for table `deletedmember`
--
ALTER TABLE `deletedmember`
  ADD PRIMARY KEY (`deleteid`),
  ADD UNIQUE KEY `nic` (`nic`);

--
-- Indexes for table `deletedread`
--
ALTER TABLE `deletedread`
  ADD PRIMARY KEY (`deletedid`);

--
-- Indexes for table `deletedreturns`
--
ALTER TABLE `deletedreturns`
  ADD PRIMARY KEY (`deletedid`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`issueid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberid`),
  ADD UNIQUE KEY `nic` (`nic`);

--
-- Indexes for table `read`
--
ALTER TABLE `read`
  ADD PRIMARY KEY (`readid`),
  ADD UNIQUE KEY `nic` (`nic`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`returnid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deletedbooks`
--
ALTER TABLE `deletedbooks`
  MODIFY `deleteid` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deletedissues`
--
ALTER TABLE `deletedissues`
  MODIFY `deletedid` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deletedmember`
--
ALTER TABLE `deletedmember`
  MODIFY `deleteid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deletedread`
--
ALTER TABLE `deletedread`
  MODIFY `deletedid` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deletedreturns`
--
ALTER TABLE `deletedreturns`
  MODIFY `deletedid` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `issueid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1023;

--
-- AUTO_INCREMENT for table `read`
--
ALTER TABLE `read`
  MODIFY `readid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `return`
--
ALTER TABLE `return`
  MODIFY `returnid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

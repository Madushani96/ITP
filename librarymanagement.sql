-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 11:21 AM
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
  `lendtime` varchar(150) NOT NULL,
  `returntime` varchar(150) NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberid` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `nic` varchar(20) DEFAULT NULL,
  `birthday` varchar(30) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `telephone` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `registereddate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberid`, `name`, `nic`, `birthday`, `gender`, `occupation`, `telephone`, `address`, `type`, `status`, `registereddate`) VALUES
('MI1000', 'Adelaine Morin', '976874545V', '1997-Jul-05', 'Female', 'Singer', '0715180804', 'Toronto', 'Regular', 'eligible', '2021-03-28'),
('MI1001', 'Shane Watson', '762398765V', '1976-Aug-26', 'Male', 'Painter', '0657876539', 'NYC', 'Regular', 'eligible', '2021-03-28'),
('MI1002', 'Julia Adams', '876545676V', '1987-Jun-02', 'Female', 'Teacher', '0678764537', 'Kandy', 'Regular', 'eligible', '2021-03-28'),
('MI1003', 'Alisha Marie', '567687654V', '1956-Sep-24', 'Female', 'Doctor', '0785676534', 'Kaluthara', 'Regular', 'eligible', '2021-03-28'),
('MI1004', 'Billie Eilish', '765345678X', '1976-Feb-03', 'Female', 'Singer', '0678354675', 'Kandy', 'Child', 'eligible', '2021-03-28'),
('MI1005', 'Dua Lipa', '876542522V', '1987-Jun-02', 'Female', 'Singer', '0735467563', 'Galle', 'Regular', 'eligible', '2021-03-28'),
('MI1006', 'Robbert Pattinson', '871111234V', '1987-Apr-20', 'Male', 'Actor', '7657382098', 'Colombo - 15', 'Regular', 'eligible', '2021-03-28'),
('MI1007', 'Joseph Edward', '761234567V', '1976-May-02', 'Male', 'Author', '9876567890', 'Jaffna', 'Regular', 'eligible', '2021-03-28'),
('MI1008', 'Chris Gayle', '872346578X', '1987-Aug-21', 'Male', 'Cricketer', '6787564756', 'Matara', 'Child', 'eligible', '2021-03-28'),
('MI1009', 'Cinderella Snowwhite', '675679874V', '1967-Mar-07', 'Female', 'Pharmacist', '3456787656', 'Karalliyadda', 'Regular', 'eligible', '2021-03-28'),
('MI1010', 'Alexandria  Ryan', '567876545V', '1956-Oct-13', 'Female', 'Businesswoman', '5676565654', 'Kentucky', 'Regular', 'eligible', '2021-03-28'),
('MI1011', 'Dwayne Johnson', '671234657V', '1967-May-02', 'Male', 'Actor', '5636453645', 'Matale', 'Regular', 'eligible', '2021-03-28'),
('MI1012', 'Michelle Obama', '567234567X', '1956-Aug-10', 'Female', 'Dancer', '5656474645', 'Kuliyapitiya', 'Senior', 'eligible', '2021-03-28'),
('MI1013', 'Kim Kardashian', '647234657V', '1964-Aug-10', 'Female', 'Model', '6765737465', 'Hikkaduwa', 'Regular', 'eligible', '2021-03-28'),
('MI1014', 'Kristen Stewart', '675567337V', '1967-Feb-25', 'Female', 'Actress', '7686545454', 'Anuradhapura', 'Senior', 'eligible', '2021-03-28');

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

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `resourceid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `quantity` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`resourceid`, `name`, `category`, `quantity`) VALUES
(1, 'Scissors', 'Stationary', '7'),
(2, 'Ruler', 'Stationary', '2'),
(3, 'Pen - red', 'Stationary', '5');

-- --------------------------------------------------------

--
-- Table structure for table `resourcecir`
--

CREATE TABLE `resourcecir` (
  `resourceid` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `date` varchar(50) NOT NULL,
  `lendtime` varchar(255) NOT NULL,
  `returntime` varchar(255) NOT NULL,
  `rid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resourcecir`
--

INSERT INTO `resourcecir` (`resourceid`, `username`, `date`, `lendtime`, `returntime`, `rid`) VALUES
(2, 'Sanduni', '2021-03-31', '14:43:40.562374700', '14:43:52.133568', 6),
(3, 'Kasun', '2021-03-31', '14:44:16.864139200', 'pending', 7);

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
('Admin', 'Bridget Jones', 'Admin', '123', 'What is your alma mater?', 'ABC'),
('Kasun', 'Kasun Rajapaksha', '', '', '', ''),
('Sanduni', 'Sanduni Perera', '', '', '', '');

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
  ADD PRIMARY KEY (`deleteid`);

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
  ADD PRIMARY KEY (`memberid`);

--
-- Indexes for table `read`
--
ALTER TABLE `read`
  ADD PRIMARY KEY (`readid`),
  ADD UNIQUE KEY `nic` (`nic`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`resourceid`);

--
-- Indexes for table `resourcecir`
--
ALTER TABLE `resourcecir`
  ADD PRIMARY KEY (`rid`);

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
  MODIFY `deleteid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deletedissues`
--
ALTER TABLE `deletedissues`
  MODIFY `deletedid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deletedmember`
--
ALTER TABLE `deletedmember`
  MODIFY `deleteid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `deletedread`
--
ALTER TABLE `deletedread`
  MODIFY `deletedid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deletedreturns`
--
ALTER TABLE `deletedreturns`
  MODIFY `deletedid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `issueid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1032;

--
-- AUTO_INCREMENT for table `read`
--
ALTER TABLE `read`
  MODIFY `readid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `resourceid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `resourcecir`
--
ALTER TABLE `resourcecir`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `return`
--
ALTER TABLE `return`
  MODIFY `returnid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 10:26 AM
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
(1000, 'Call of the Wild', 'Kenneth Anderson', '700.0', 'Languages', 700, 'borrow', 'issued'),
(2000, 'My India', 'Jim Corbet', '500.0', 'Languages', 500, 'borrow', 'issued'),
(3000, 'The Adventures', 'Mark Twain', '560.0', 'Languages', 560, 'borrow', 'issued'),
(4000, 'Tom Sawyer', 'Mark Twain', '760', 'Languages', 760, 'borrow', 'available'),
(5000, 'Sherlock Holmes', 'sir Arthur Doyle', '300.0', 'Ordinary Level', 300, 'borrow', 'issued'),
(6000, 'The Old Man', 'Ernest Hemigway', '800.0', 'Advanced Level', 800, 'borrow', 'issued'),
(7000, 'Harry Potter', 'J K Rowling', '800', 'Languages', 800, 'borrow', 'available'),
(8000, 'Cold War', 'K A D Mendis', '1200', 'Advanced Level', 1200, 'borrow', 'issued'),
(9000, 'Mother', 'Maxim Gorki', '120.0', 'Advanced Level', 120, 'reference', 'available'),
(9001, 'Village', 'Leonerd Wolf', '620.0', 'History', 620, 'reference', 'available'),
(9002, 'K Pop', 'BTS', '620.0', 'Advanced Level', 620, 'reference', 'available'),
(9003, 'Birds', 'C J Harris', '920.0', 'Advanced Level', 920, 'reference', 'available');

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

--
-- Dumping data for table `deletedbooks`
--

INSERT INTO `deletedbooks` (`deleteid`, `isbn`, `name`, `author`, `publisher`, `category`, `price`, `type`, `status`, `deleteddate`) VALUES
(7, 9004, 'Prince of Percia', 'Edward Cullan', '450.0', 'Languages', 450, 'reference', 'available', '2021-04-14');

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

--
-- Dumping data for table `deletedissues`
--

INSERT INTO `deletedissues` (`deletedid`, `issueid`, `memberid`, `membername`, `isbn`, `bookname`, `issuedate`, `duedate`, `status`, `deleteddate`) VALUES
(4, 1034, 'MI1002', 'Julia Adams', 9000, 'Mother', 'Apr 9, 2021', 'Apr 10, 2021', 'returned', '2021-04-14'),
(5, 1033, 'MI1001', 'Shane Watson', 5000, 'Sherlock Holmes', 'Apr 9, 2021', 'Apr 10, 2021', 'returned', '2021-04-14'),
(6, 1032, 'MI1000', 'Adelaine Morin', 1000, 'Call of the Wild', 'Apr 12, 2021', 'Apr 19, 2021', 'returned', '2021-04-14'),
(7, 1037, 'MI1000', 'Coco Chanel', 1000, 'Call of the Wild', 'Apr 1, 2021', 'Apr 14, 2021', 'returned', '2021-04-14'),
(8, 1038, 'MI1000', 'Coco Chanel', 1000, 'Call of the Wild', 'Apr 1, 2021', 'Apr 14, 2021', 'returned', '2021-04-14'),
(9, 1039, 'MI1000', 'Coco Chanel', 1000, 'Call of the Wild', 'Apr 1, 2021', 'Apr 14, 2021', 'Issued', '2021-04-14'),
(10, 1040, 'MI1000', 'Coco Chanel', 2000, 'My India', 'Apr 9, 2021', 'Apr 23, 2021', 'Issued', '2021-04-14'),
(11, 1058, 'MI1000', 'Coco Chanel', 8000, 'Cold War', '2021-04-29', '2021-04-30', 'Issued', '2021-04-21'),
(12, 1057, 'MI1000', 'Coco Chanel', 7000, 'Harry Potter', '2021-04-29', '2021-04-30', 'returned', '2021-04-21'),
(13, 1060, 'MI1000', 'Coco Chanel', 8000, 'Cold War', '2021-04-29', '2021-04-30', 'returned', '2021-04-21'),
(14, 1068, 'MI1013', 'Carolina Herrera', 5000, 'Tom Sawyer', '2021-04-22', '2021-04-29', 'Issued', '2021-04-21'),
(15, 1069, 'MI1013', 'Carolina Herrera', 0, 'Sherlock Holmes', '2021-04-22', '2021-04-29', 'Issued', '2021-04-21'),
(16, 1061, 'MI1000', 'Coco Chanel', 8000, 'Harry Potter', '2021-02-09', '2021-04-30', 'Issued', '2021-04-21');

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
(10, 'MI1000', 'Adelaine Morin', '976874545V', '1997-Jul-05', 'Female', 'Singer', 715180804, 'Toronto', 'Regular', 'eligible', '2021-02-28', '2021-03-13'),
(11, 'MI1001', 'Shane Watson', '762398765V', '1976-Aug-26', 'Male', 'Painter', 657876539, 'NYC', 'Regular', 'eligible', '2021-02-28', '2021-03-13'),
(12, 'MI1005', 'Dua Lipa', '876542522V', '1987-Jun-02', 'Female', 'Singer', 718003271, 'Galle', 'Regular', 'eligible', '2021-02-28', '2021-03-13'),
(13, 'MI1002', 'Julia Adams', '876545676V', '1987-Jun-02', 'Female', 'Teacher', 678764537, 'Kandy', 'Regular', 'borrowed', '2021-02-28', '2021-03-14'),
(14, 'MI1003', 'Alisha Marie', '567687654V', '1956-Sep-24', 'Female', 'Doctor', 785676534, 'Kaluthara', 'Regular', 'eligible', '2021-02-28', '2021-04-14'),
(15, 'MI1004', 'Billie Eilish', '765345678X', '1976-Feb-03', 'Female', 'Singer', 678354675, 'Kandy', 'Child', 'eligible', '2021-03-28', '2021-04-14'),
(16, 'MI1000', 'Coco Chanel', '876574543V', '1987-Jun-05', 'Female', 'Fashion Designer', 755086610, 'Colombo', 'Regular', 'eligible', '2021-04-14', '2021-04-14'),
(17, 'MI1013', 'Carolina Herrera', '676787878V', '1967-Jun-26', 'Female', 'Model', 867878787, 'Mawanella', 'Senior', 'eligible', '2021-04-14', '2021-04-18'),
(18, 'MI1013', 'Carolina Herrera', '656767676V', '1965-Jun-24', 'Female', 'Model', 712345678, 'Dambulla', 'Senior', 'eligible', '2021-04-18', '2021-04-18');

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

--
-- Dumping data for table `deletedreturns`
--

INSERT INTO `deletedreturns` (`deletedid`, `returnid`, `issueid`, `memberid`, `membername`, `isbn`, `bookname`, `issuedate`, `duedate`, `returndate`, `fine`, `deleteddate`) VALUES
(4, 1020, 1032, 'MI1000', 'Adelaine Morin', 1000, 'Call of the Wild', 'Apr 12, 2021', 'Apr 19, 2021', 'Apr 22, 2021', 60, '2021-04-14'),
(5, 1021, 1033, 'MI1001', 'Shane Watson', 5000, 'Sherlock Holmes', 'Apr 9, 2021', 'Apr 10, 2021', 'Apr 22, 2021', 0, '2021-04-14'),
(6, 1022, 1034, 'MI1002', 'Julia Adams', 9000, 'Mother', 'Apr 9, 2021', 'Apr 10, 2021', 'Apr 22, 2021', 90, '2021-04-14'),
(7, 1023, 1037, 'MI1000', 'Coco Chanel', 1000, 'Call of the Wild', 'Apr 1, 2021', 'Apr 14, 2021', '', 0, '2021-04-14'),
(8, 1024, 1038, 'MI1000', 'Coco Chanel', 1000, 'Call of the Wild', 'Apr 1, 2021', 'Apr 14, 2021', '', 0, '2021-04-14'),
(9, 1044, 1060, 'MI1000', 'Coco Chanel', 8000, 'Cold War', '2021-04-29', '2021-04-30', '2021-09-01', 0, '2021-04-21');

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
(1051, 'MI1000', 'Coco Chanel', 1000, 'Call of the Wild', '2021-04-21', '2021-04-28', 'returned'),
(1052, 'MI1000', 'Coco Chanel', 2000, 'My India', '2021-04-28', '2021-05-16', 'returned'),
(1053, 'MI1000', 'Coco Chanel', 3000, 'The Adventures', '2021-04-28', '2021-04-30', 'returned'),
(1054, 'MI1000', 'Coco Chanel', 4000, 'Tom Sawyer', '2021-04-30', '2021-05-28', 'returned'),
(1055, 'MI1000', 'Coco Chanel', 5000, 'Sherlock Holmes', '2021-04-29', '2021-04-30', 'returned'),
(1056, 'MI1000', 'Coco Chanel', 6000, 'The Old Man', '2021-04-29', '2021-04-30', 'returned'),
(1059, 'MI1000', 'Coco Chanel', 7000, 'Harry Potter', '2021-04-29', '2021-04-30', 'returned'),
(1062, 'MI1002', 'Louis Vuitton', 1000, 'Call of the Wild', '2021-02-01', '2021-04-29', 'contact'),
(1064, 'MI1006', 'Tommy Hilfiger', 3000, 'The Adventures', '2021-02-15', '2021-04-30', 'contact'),
(1066, 'MI1010', 'Calvin Klein', 2000, 'My India', '2021-02-14', '2021-04-30', 'contact'),
(1067, 'MI1013', 'Carolina Herrera', 4000, 'Tom Sawyer', '2021-04-22', '2021-04-29', 'returned'),
(1070, 'MI1013', 'Carolina Herrera', 5000, 'Sherlock Holmes', '2021-02-09', '2021-04-29', 'contact'),
(1071, 'MI1000', 'Coco Chanel', 8000, 'Cold War', '2021-05-02', '2021-04-30', 'Issued'),
(1072, 'MI1011', 'Donna Karen', 6000, 'The Old Man', '2021-02-17', '2021-04-07', 'contact');

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
('MI1000', 'Coco Chanel', '878456750V', '1987-Dec-10', 'Female', 'Model', '0755086610', 'Colombo', 'Regular', 'borrowed', '2021-04-14'),
('MI1001', 'Christian Dior', '762567656V', '1976-Sep-12', 'Male', 'Model', '0718745633', 'Kandy', 'Senior', 'eligible', '2021-04-14'),
('MI1002', 'Louis Vuitton', '562348765V', '1956-Aug-21', 'Male', 'Model', '0708769864', 'Gampaha', 'Child', 'borrowed', '2021-04-14'),
('MI1003', 'Christian Louboutin', '672787654V', '1967-Jun-26', 'Male', 'Model', '0912345675', 'Galle', 'Regular', 'eligible', '2021-04-14'),
('MI1004', 'Tom Ford', '671456754V', '1967-May-24', 'Male', 'Model', '0723498576', 'Kegalle', 'Regular', 'eligible', '2021-04-14'),
('MI1005', 'Ralph Lauren', '672536765V', '1967-Sep-09', 'Male', 'Model', '0773547636', 'Jaffna', 'Regular', 'eligible', '2021-04-14'),
('MI1006', 'Tommy Hilfiger', '982878787V', '1998-Oct-13', 'Male', 'Model', '0814567675', 'Kegalle', 'Child', 'borrowed', '2021-04-14'),
('MI1007', 'Marc Jacobs', '762364545V', '1976-Aug-23', 'Male', 'Model', '0987674364', 'Polonnaruwa', 'Regular', 'eligible', '2021-04-14'),
('MI1008', 'Michael Kors', '552345686V', '1955-Aug-21', 'Male', 'Model', '0768585858', 'Kurunegala', 'Senior', 'eligible', '2021-04-14'),
('MI1009', 'Giorgio Armani', '672687876V', '1967-Sep-24', 'Male', 'Model', '0558676765', 'Badulla', 'Senior', 'eligible', '2021-04-14'),
('MI1010', 'Calvin Klein', '782878687V', '1978-Oct-13', 'Male', 'Model', '0812345678', 'Matale', 'Regular', 'borrowed', '2021-04-14'),
('MI1011', 'Donna Karen', '896476765V', '1989-May-26', 'Female', 'Model', '0712345678', 'Ratnapura', 'Child', 'borrowed', '2021-04-14'),
('MI1012', 'Vivienne Westwood', '556758585V', '1955-Jun-23', 'Female', 'Model', '0757868686', 'Ampara', 'Regular', 'eligible', '2021-04-14'),
('MI1013', 'Carolina Herrera', '566784768V', '1956-Jun-26', 'Female', 'Model', '0812365948', 'Dambulla', 'Senior', 'borrowed', '2021-04-18');

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
(3, 'Pen - red', 'Stationary', '5'),
(4, 'eeee', 'Stationary', '5');

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
(3, 'Kasun', '2021-03-31', '14:44:16.864139200', '18:06:48.912418500', 7);

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
(1034, 1051, 'MI1000', 'Coco Chanel', 1000, 'Call of the Wild', '2021-04-21', '2021-04-28', '2021-04-30', 10),
(1035, 1052, 'MI1000', 'Coco Chanel', 2000, 'My India', '2021-04-28', '2021-05-16', '2021-04-30', 0),
(1036, 1053, 'MI1000', 'Coco Chanel', 3000, 'The Adventures', '2021-04-28', '2021-04-30', '2021-04-30', 40),
(1037, 1054, 'MI1000', 'Coco Chanel', 4000, 'Tom Sawyer', '2021-04-30', '2021-05-28', '2021-04-30', 40),
(1038, 1055, 'MI1000', 'Coco Chanel', 5000, 'Sherlock Holmes', '2021-04-29', '2021-04-30', '2021-09-28', 70),
(1039, 1056, 'MI1000', 'Coco Chanel', 6000, 'The Old Man', '2021-04-29', '2021-04-30', '2021-09-28', 70),
(1043, 1059, 'MI1000', 'Coco Chanel', 7000, 'Harry Potter', '2021-04-29', '2021-04-30', '2021-09-01', 60),
(1045, 1067, 'MI1013', 'Carolina Herrera', 4000, 'Tom Sawyer', '2021-04-22', '2021-04-29', '2021-04-28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(15) NOT NULL,
  `name` varchar(40) NOT NULL,
  `role` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `security` varchar(255) NOT NULL,
  `answer` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `name`, `role`, `password`, `security`, `answer`) VALUES
('Admin', 'Bridget Jones', 'Admin', '123', 'What is your alma mater?', 'ABC'),
('Kasun', 'Kasun Rajapaksha', '', '', '', ''),
('Nisal', 'Nisal Karalliyadda', 'User', 'Nisal123#', 'What is your favourite colour?', 'black'),
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
  MODIFY `deleteid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `deletedissues`
--
ALTER TABLE `deletedissues`
  MODIFY `deletedid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `deletedmember`
--
ALTER TABLE `deletedmember`
  MODIFY `deleteid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `deletedread`
--
ALTER TABLE `deletedread`
  MODIFY `deletedid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deletedreturns`
--
ALTER TABLE `deletedreturns`
  MODIFY `deletedid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `issueid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1073;

--
-- AUTO_INCREMENT for table `read`
--
ALTER TABLE `read`
  MODIFY `readid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `resourceid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resourcecir`
--
ALTER TABLE `resourcecir`
  MODIFY `rid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `return`
--
ALTER TABLE `return`
  MODIFY `returnid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1046;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

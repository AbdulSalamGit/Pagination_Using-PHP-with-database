-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2024 at 06:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `College` varchar(20) NOT NULL,
  `Score` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `Name`, `College`, `Score`) VALUES
(1, 'Aisha Khan', 'University of Hope', 85),
(2, 'David Miller', 'Central Tech Institu', 92),
(3, 'Areesah', 'Global Arts Academy', 78),
(4, 'Faheem', 'Institute of Technol', 67),
(5, 'Hannah Schmidt', 'School of Design', 98),
(6, 'Ibrahim Patel', 'Institute of Innovat', 80),
(7, 'Jamal', 'Academy of Sciences', 95),
(8, 'Ghullamullah', 'University of Excell', 83),
(9, 'Sahil', 'Institute of Languag', 72),
(10, 'Maria Hernandez', 'College of Business', 89),
(11, 'Veer Khan', 'School of Engineerin', 90),
(12, 'Noor Ahmed', 'Academy of Fine Arts', 87),
(13, 'Jamil Khan', 'Institute of Medicin', 75),
(14, 'Qiao Lin', 'School of Law', 91),
(15, 'Rafael Garcia', 'University of Techno', 82),
(16, 'Sophia Schmidt', 'College of Arts', 97),
(17, 'Takeshi Tanaka', 'Institute of Managem', 68),
(18, 'Umaima Hassan', 'School of Education', 86),
(19, 'Parviaz', 'Academy of Music', 70),
(20, 'William Lee', 'University of Scienc', 94);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

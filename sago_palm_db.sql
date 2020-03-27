-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2020 at 05:03 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sago_palm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_tbl`
--

CREATE TABLE `appointment_tbl` (
  `appointment_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_attended` tinyint(1) NOT NULL,
  `appointment_room` smallint(6) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `vet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment_tbl`
--

INSERT INTO `appointment_tbl` (`appointment_id`, `appointment_date`, `appointment_time`, `appointment_attended`, `appointment_room`, `patient_id`, `vet_id`) VALUES
(2, '2018-03-02', '09:00:00', 1, 1, 2, 1),
(3, '2018-03-02', '09:00:00', 1, 2, 2, 2),
(4, '2018-03-02', '09:00:00', 1, 3, 3, 3),
(5, '2018-03-02', '09:20:00', 1, 1, 4, 1),
(6, '2018-03-02', '09:20:00', 1, 2, 5, 2),
(7, '2018-03-02', '09:20:00', 1, 3, 6, 3),
(8, '2018-03-02', '09:40:00', 1, 1, 7, 1),
(9, '2018-03-02', '09:40:00', 1, 2, 8, 2),
(10, '2018-03-02', '09:40:00', 1, 3, 9, 3),
(11, '2018-03-02', '10:00:00', 0, 1, 10, 1),
(12, '2018-03-02', '10:00:00', 1, 2, 11, 2),
(13, '2018-03-02', '10:00:00', 1, 3, 12, 3),
(14, '2018-03-02', '10:20:00', 1, 1, 13, 1),
(15, '2018-03-02', '10:20:00', 1, 2, 14, 2),
(16, '2018-03-02', '10:20:00', 1, 3, 15, 3),
(17, '2018-03-02', '10:40:00', 1, 1, 16, 1),
(18, '2018-03-02', '10:40:00', 1, 2, 17, 2),
(19, '2018-03-02', '10:40:00', 1, 3, 18, 3),
(20, '2018-03-02', '11:00:00', 1, 1, 19, 1),
(21, '2018-03-02', '11:00:00', 0, 2, 20, 2),
(22, '2018-03-02', '11:00:00', 1, 3, 21, 3),
(23, '2018-03-02', '11:20:00', 1, 1, 22, 1),
(24, '2018-03-02', '11:20:00', 1, 2, 23, 2),
(25, '2018-03-02', '11:20:00', 1, 3, 24, 3);

-- --------------------------------------------------------

--
-- Table structure for table `owners_tbl`
--

CREATE TABLE `owners_tbl` (
  `owner_id` int(11) NOT NULL,
  `owner_name` varchar(30) NOT NULL,
  `owner_address` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owners_tbl`
--

INSERT INTO `owners_tbl` (`owner_id`, `owner_name`, `owner_address`) VALUES
(1, 'Benita Amaechi', '84 Wheatley Cl, London NW4 4LF, UK'),
(2, 'Sebastian Barker Caven', '70 The Ct, Dannette Hey, Liverpool L28 6YF, UK'),
(3, 'Anton Korzhan', '1 Burnside Terrace, Auchtermuchty, Cupar KY14 7DE, UK'),
(4, 'Nathan Byrne', '3 Simpson Crescent, Helmsdale KW8 6LE, UK'),
(5, 'Tony Callaghan', 'Riverside Way, Camberley GU15, UK'),
(6, 'Dato Churchelauri', '2 High St, Lossiemouth IV31 6PF, UK'),
(7, 'Filip Condac', '9 Linlithgow Cl, Papworth Everard, Cambridge CB23 3RX, UK'),
(8, 'David Davitashvili', 'Nelson Rd, Windermere LA23, UK'),
(9, 'Karl RusselDela Cruz', '106 Linkwood Cres, Glasgow G15 7ET, UK'),
(10, 'Abraham Ehonwa', '1 Wernfach, Dyffryn Ardudwy LL44 2RJ, UK'),
(11, 'Jaycel Estrellado', 'Comfort Ln, Richmond DL10 5LA, UK'),
(12, 'Dylan Finn', 'Bachchan Road, Isle of Iona PA76, UK'),
(13, 'Daniel Fitzsimons', '8 Shilton Cl, Bristol BS15, UK'),
(14, 'Sam Hughes', 'Railway Row, Sunderland SR1 3HE, UK'),
(15, 'James McCallen', '1 Burrough St, Ash, Martock TA12 6NZ, UK'),
(16, 'Josh O\'Keeffe', 'Goodcheap Ln, Wye, Ashford, UK'),
(17, 'Okky Tiarani Rahayu', '4 Cliasmol, Isle of Harris HS3 3AR, UK'),
(18, 'David Slupko', '11 Thornley Croft, Emerson Valley, Milton Keynes MK4 2JH, UK'),
(19, 'Grant Sodipo', '118 Easdale, East Kilbride, Glasgow G74 2ED, UK'),
(20, 'Jessica Umeh', 'High Halden Rd, Biddenden, Ashford TN27, UK'),
(21, 'Tony Morris', '49 A307, Esher KT10, UK');

-- --------------------------------------------------------

--
-- Table structure for table `patient_tbl`
--

CREATE TABLE `patient_tbl` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `animal_age` int(11) NOT NULL,
  `animal_sex` tinyint(1) NOT NULL COMMENT '1 is Male / 0 is Female',
  `animal_type` varchar(10) NOT NULL,
  `aliment` varchar(30) NOT NULL,
  `animal_allergy` tinyint(1) NOT NULL,
  `owner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_tbl`
--

INSERT INTO `patient_tbl` (`patient_id`, `patient_name`, `animal_age`, `animal_sex`, `animal_type`, `aliment`, `animal_allergy`, `owner_id`) VALUES
(2, 'Garfield', 2, 1, 'Cat', 'Flu', 0, 1),
(3, 'D For', 5, 1, 'Dog', 'Broken Leg', 0, 2),
(4, 'Kareem Abdul Ja-Bark', 7, 1, 'Dog', 'Death', 0, 3),
(5, 'Chew Barka', 2, 1, 'Dog', 'Corona', 0, 4),
(6, 'Ali Cat', 1, 1, 'Cat', 'Diabetes', 0, 5),
(7, 'Cindy Clawford', 8, 0, 'Cat', 'Obesity', 0, 6),
(8, 'Tod', 5, 1, 'Rat', 'Flu', 0, 7),
(9, 'Tanya', 11, 0, 'Mouse', 'Diabetes Type 2', 0, 8),
(10, 'Cat', 4, 0, 'Cat', 'Pnumonia', 0, 9),
(11, 'Prince of Barkness', 10, 1, 'Dog', 'Lupus', 0, 10),
(12, 'Droolius Caesar', 8, 1, 'Dog', 'Diabetese type 1', 0, 11),
(13, 'Pawdrey Hepburn', 9, 0, 'Cat', 'Arthiritus', 1, 12),
(14, 'Whispurr', 12, 1, 'Cat', 'Broken Paw', 0, 13),
(15, 'Dirty Rotten', 2, 1, 'Rat', 'Vaccines', 0, 14),
(16, 'Sarah Jessica Barker', 8, 0, 'Dog', 'Rabies', 0, 15),
(17, 'Fluffy', 4, 0, 'Cat', 'Death', 0, 3),
(18, 'Hairy Paw-ter', 7, 0, 'Dog', 'Check Up', 0, 11),
(19, 'Tom', 47, 1, 'Armadillo', 'Vomiting', 0, 16),
(20, 'Chairwoman Miao', 1, 0, 'Cat', 'Constipated', 1, 17),
(21, 'Bark Twain', 2, 1, 'Dog', 'Peeing Blood', 0, 18),
(22, 'Sherlock Bones', 7, 1, 'Dog', 'Constipated', 0, 15),
(23, 'Salvador Dogi', 4, 1, 'Dog', 'Corona', 0, 19),
(24, 'Cat Benatar', 5, 0, 'Cat', 'Infected', 0, 20),
(25, 'Jimmy Chew', 6, 1, 'Dog', 'Check Up', 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `vet_tbl`
--

CREATE TABLE `vet_tbl` (
  `vet_id` int(11) NOT NULL,
  `vet_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vet_tbl`
--

INSERT INTO `vet_tbl` (`vet_id`, `vet_name`) VALUES
(1, 'Rick'),
(2, 'Morty'),
(3, 'Summer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_tbl`
--
ALTER TABLE `appointment_tbl`
  ADD PRIMARY KEY (`appointment_id`),
  ADD UNIQUE KEY `appointment_id` (`appointment_id`),
  ADD KEY `appointment_id_2` (`appointment_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `vet_id` (`vet_id`);

--
-- Indexes for table `owners_tbl`
--
ALTER TABLE `owners_tbl`
  ADD PRIMARY KEY (`owner_id`),
  ADD UNIQUE KEY `owner_id` (`owner_id`),
  ADD KEY `owner_id_2` (`owner_id`);

--
-- Indexes for table `patient_tbl`
--
ALTER TABLE `patient_tbl`
  ADD PRIMARY KEY (`patient_id`),
  ADD UNIQUE KEY `patient_id` (`patient_id`),
  ADD KEY `patient_id_2` (`patient_id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Indexes for table `vet_tbl`
--
ALTER TABLE `vet_tbl`
  ADD PRIMARY KEY (`vet_id`),
  ADD UNIQUE KEY `vet_id` (`vet_id`),
  ADD KEY `vet_id_2` (`vet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_tbl`
--
ALTER TABLE `appointment_tbl`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `owners_tbl`
--
ALTER TABLE `owners_tbl`
  MODIFY `owner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `patient_tbl`
--
ALTER TABLE `patient_tbl`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vet_tbl`
--
ALTER TABLE `vet_tbl`
  MODIFY `vet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment_tbl`
--
ALTER TABLE `appointment_tbl`
  ADD CONSTRAINT `appointment_tbl_ibfk_1` FOREIGN KEY (`vet_id`) REFERENCES `vet_tbl` (`vet_id`),
  ADD CONSTRAINT `appointment_tbl_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient_tbl` (`patient_id`);

--
-- Constraints for table `patient_tbl`
--
ALTER TABLE `patient_tbl`
  ADD CONSTRAINT `patient_tbl_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owners_tbl` (`owner_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
